//! Layer 3 applies inaverage buffer windows
module conv2(
    //general ports
    input             clk,
    input             rstn,
    input             start,
    input             ready,
    input    [15:0]   in_bus,
    output   [15:0]   out_bus,

    //batch info
    input    [5:0]    delta_Nof, //how many Nof are processed once(max 63)
    input    [5:0]    delta_x, //buffer window side length
    input             Nif_fir, //processing the first Nif
    input             Nif_full, //processing the last Nif
    input             is_pool, //is conv followed by pool?
    input             double_back, //return results both before and after pooling?
    input             bottom, //it is the bottom conv?
    input    [1:0]    pool_style, //! indicates the padding method while pooling when the side is an odd.
    input    [3:0]    pad_style, //! indicates the padding methond while returning output.
    input    [10:0]   b_base_addr,
    
    input             spec,//? refer to layer 3
    input    [1:0]    spec_win,

    //general status 
    output   [1:0]    status,
    output   [3:0]    pool_status,

    //wr_fb cnt
    output   [5:0]    cnt14, 
    output   [5:0]    cnt15,
    output            cnt16,

    //wr_w cnt
    output   [3:0]    cnt4,
    output   [6:0]    cnt5,
    output            cnt6,

    //back/pre back cnt
    output   [5:0]    cnt11,
    output   [5:0]    cnt12,
    output   [5:0]    cnt13,

    //other output
    output            conv_work,
    output            trans, //when to access DDR 
    output            write, //when to write data to DDR
    output            conv_done2 //interrupt signal to CPU

);


//************************************ General Define ************************************//
wire status_fb;
wire [5:0] out_side; //the side of the result of conv:delta_x-2
assign out_side=delta_x-2'b10;
assign status_fb=(status==wr_fb);

assign write=(~back_done)&((pool_status==back)|(pool_status==pre_back)); //except the last cycle 
assign trans=(status==wr_fb)|(status==wr_w)|write;

wire conv_done;
assign conv_done=(pool_status==back) & back_done;

wire status_w; assign status_w=(status==wr_w);
wire status_calcu; assign status_calcu=(status==calcu);
wire status_pool; assign status_pool=pool_status[1];
wire status_back; assign status_back=pool_status[2];
wire status_pre_back; assign status_pre_back=pool_status[3];
wire conv_work; assign conv_work=(status==idle)&pool_status[0]&start; //status trans from idle to wr_fb
wire status_calcu_init; assign status_calcu_init=(cnt0==1)&(cnt1==0)&(cnt2==0)&(cnt3 ==0);
wire status_pool_init;  assign status_pool_init =(cnt7==0)&(cnt8==0)&(cnt9==0)&(cnt10==0);

reg ready1;
always@(posedge clk)
begin
    ready1<=ready;
end

reg conv_done1,conv_done2;
always@(posedge clk or negedge rstn)
begin
    if(~rstn) 
    begin
        conv_done1<=1'b0; conv_done2<=1'b0;
    end
    else
    begin
        conv_done1<=conv_done; conv_done2<=conv_done1;
    end
end

//************************************ Conv FSM ************************************//
parameter idle=2'b00;
parameter wr_fb=2'b01;
parameter wr_w=2'b10;
parameter calcu=2'b11;

reg [1:0] status=idle;
wire [1:0] nxt_status;

always@(posedge clk or negedge rstn)
begin
    if(~rstn) status<=idle;
    else status<=nxt_status;
end

assign nxt_status = (status==idle)&conv_work ? wr_fb : (
                    (status==wr_fb)&wr_fb_done ? wr_w : (
                    (status==wr_w)&wr_w_done ? calcu : (
                    (status==calcu)&calcu_done ? idle : status)));


//************************************ Feature Map Buffer ************************************//
reg [5:0] cnt14,cnt15; //0~delta_x-1
reg cnt16; //transporting which Nif:0~1

//?????????????????????????????????????????????????????
wire [5:0] spec_fb_w,spec_fb_h; 
assign spec_fb_h = spec_win[1] ? 34 : 33;

assign spec_fb_w = spec_win[0] ? 34 : 33;
//?????????????????????????????????????????????????????

wire cnt14_full,cnt15_full,cnt16_full;
assign cnt14_full = spec ? ready&(cnt14==spec_fb_w) : ready&(cnt14==delta_x-1'b1); //?
assign cnt15_full = spec ? cnt14_full&(cnt15==spec_fb_h) : cnt14_full&(cnt15==delta_x-1'b1); //?
assign cnt16_full=cnt15_full&cnt16;

/////////////////////////////////////////////////
reg wr_fb_to_done;
always@(posedge clk or negedge rstn)
begin
    if(~rstn) wr_fb_to_done<=1'b0;
    else if(status_fb)
    begin
        if(cnt16_full) wr_fb_to_done<=1'b1;
        else wr_fb_to_done<=wr_fb_to_done;
    end
    else wr_fb_to_done<=1'b0;
end

wire wr_fb_done;
assign wr_fb_done = wr_fb_to_done&ready;
/////////////////////////////////////////////////

wire [5:0] nxt_cnt14,nxt_cnt15;
wire nxt_cnt16;
always@(posedge clk or negedge rstn)
begin
    if(~rstn)
    begin
        cnt14<=6'b0; cnt15<=5'b0; cnt16<=1'b0;
    end    
    else
    begin
        cnt14<=nxt_cnt14; cnt15<=nxt_cnt15; cnt16<=nxt_cnt16;
    end
end

assign nxt_cnt14 = ~status_fb ? 6'b0 : (
                    cnt14_full ? 6'b0 : (
                    ready ? cnt14+1'b1 : cnt14)); 

assign nxt_cnt15 = ~status_fb ? 6'b0 : (
                    cnt15_full ? 6'b0 : (
                    cnt14_full ? cnt15+1'b1 : cnt15)); 

assign nxt_cnt16 = ~status_fb ? 1'b0 : (
                    cnt15_full ? ~cnt16 : cnt16);

///////////////////////////////////////////////////////
reg cnt16_2;
always@(posedge clk)
begin
    if(~ready1) cnt16_2<=cnt16_2;
    else cnt16_2<=cnt16_1;
end

wire cnt16_3;
assign cnt16_3 = ready1 ? cnt16_1 : cnt16_2; 
///////////////////////////////////////////////////////

wire [10:0] fb_wr_addr1; //the raw wr addr to fb when not considering ready is 0
wire [10:0] fb_addr;
assign fb_wr_addr1=cnt15_1*(spec ? spec_fb_w + 1'b1 : delta_x)+cnt14_1;

reg [10:0] fb_wr_addr2; //the reg to buffer addr when ready is 0
always@(posedge clk)
begin
    if(~ready1) fb_wr_addr2<=fb_wr_addr2;
    else fb_wr_addr2<=fb_wr_addr1;
end

wire [10:0] fb_wr_addr; //real wr addr to fb
assign fb_wr_addr = ready1 ? fb_wr_addr1 : fb_wr_addr2; 
assign fb_addr  =  ~rstn ? 11'b0 : (
                    status_fb ? fb_wr_addr : (
                    status_calcu ? fb_rd_addr : 11'b0));

wire [15:0] fb_out_0;
wire fb_we_0; 
assign fb_we_0 = ~rstn ? 1'b0 : (
                ~status_fb ? 1'b0 : (~cnt16_3)&ready);

RAM_16bit_1225  feature_map_buff_0(
    .clka(clk),
    .rsta(~rstn),
    .ena(1'b1),
    .wea(fb_we_0),
    .addra(fb_addr),
    .dina(in_bus),
    .douta(fb_out_0),
    .rsta_busy()
);

wire [15:0] fb_out_1;
wire fb_we_1; 
assign fb_we_1 = ~rstn ? 1'b0 : (
                ~status_fb ? 1'b0 : cnt16_3&ready);

RAM_16bit_1225  feature_map_buff_1(
    .clka(clk),
    .rsta(~rstn),
    .ena(1'b1),
    .wea(fb_we_1),
    .addra(fb_addr),
    .dina(in_bus),
    .douta(fb_out_1),
    .rsta_busy()
);

reg cnt16_1; 
reg [5:0] cnt14_1,cnt15_1; 

always@(posedge clk)
begin
    cnt16_1<=cnt16; cnt15_1<=cnt15; cnt14_1<=cnt14;
end


//************************************ Data Fetch Unit ************************************//
reg [1:0] cnt0,cnt1;//unit in conv window:0~2
reg [5:0] cnt2,cnt3;//which conv window:0~deltax-3
wire cnt0_full,cnt1_full,cnt2_full,cnt3_full,calcu_done;
assign cnt0_full=(cnt0==2'b10);
assign cnt1_full=(cnt1==2'b10)&cnt0_full;

//??????????????????????????????????????????????????????????????????????????????????????????????
assign cnt2_full = spec ? (cnt2==spec_fb_w - 2'b10)&win_done : (cnt2==out_side-1'b1)&win_done;
assign cnt3_full = spec ? (cnt3==spec_fb_h - 2'b10)&cnt2_full : (cnt3==out_side-1'b1)&cnt2_full;
//??????????????????????????????????????????????????????????????????????????????????????????????

assign calcu_done=cnt3_full;

reg win_done; //indicates that a conv window has been done 
always@(posedge clk or negedge rstn) //delay 1 cycle after updating 1 conv window
begin
    if(~rstn) win_done<=1'b0;
    else
    begin
        if(status_calcu) win_done<=cnt1_full;
        else win_done<=1'b0;
    end
end

always@(posedge clk or negedge rstn)
begin
    if(~rstn) cnt0<=0;
    else
    begin
        if(status_calcu)
        begin
            if(win_done) cnt0<=cnt0;
            else if(cnt0_full) cnt0<=0;
            else cnt0<=cnt0+1'b1;
        end
        else cnt0<=0;
    end
end

always@(posedge clk or negedge rstn)
begin
    if(~rstn) cnt1<=0;
    else
    begin
        if(status_calcu)
        begin
            if(win_done) cnt1<=cnt1;
            else if(cnt1_full) cnt1<=0;
            else if(cnt0_full) cnt1<=cnt1+1'b1;
            else cnt1<=cnt1;
        end
        else cnt1<=0;
    end
end

always@(posedge clk or negedge rstn)
begin
    if(~rstn) cnt2<=0;
    else
    begin
        if(status_calcu)
        begin
            if(cnt2_full) cnt2<=0;
            else if(win_done) cnt2<=cnt2+1'b1;
            else cnt2<=cnt2;
        end
        else cnt2<=0;
    end
end

always@(posedge clk or negedge rstn)
begin
    if(~rstn) cnt3<=0;
    else
    begin
        if(status_calcu)
        begin
            if(cnt3_full) cnt3<=0;
            else if(cnt2_full) cnt3<=cnt3+1'b1;
            else cnt3<=cnt3;
        end
        else cnt3<=0;
    end
end

wire [11:0] fb_rd_addr;//addr when reading fb
wire [3:0] w_rd_addr;//addr when reading wb

//?????????????????????????????????????????????????????????????????????????????????????????????????????????????????
assign fb_rd_addr=cnt3*(spec ? spec_fb_w + 1'b1 : delta_x)+cnt2+cnt1*(spec ? spec_fb_w + 1'b1 : delta_x)+cnt0;
//?????????????????????????????????????????????????????????????????????????????????????????????????????????????????

assign w_rd_addr=cnt1+cnt1+cnt1+cnt0;

wire [15:0] fbout0_to_mtx,fbout1_to_mtx;
assign fbout0_to_mtx = status_calcu ? fb_out_0 : 16'b0;
assign fbout1_to_mtx = status_calcu ? fb_out_1 : 16'b0; //outputs 0 in non-calcu state


//!**** W Buffer ****!//
reg cnt6; //writing which Nif:0~1 
reg [6:0] cnt5; //writing which Nof:0~delta_Nof
reg [3:0] cnt4; //writing which unit:0~8 
wire cnt4_full,cnt5_full;
assign cnt4_full=cnt4[3]&ready; //cnt4==8
assign cnt5_full=cnt4_full&(cnt5==delta_Nof);

always@(posedge clk or negedge rstn)
begin
    if(~rstn) cnt4<=0;
    else
    begin
        if(status_w)
        begin
            if(cnt4_full) cnt4<=0;
            else if(ready) cnt4<=cnt4+1'b1;
            else cnt4<=cnt4;
        end
        else cnt4<=0;
    end
end

always@(posedge clk or negedge rstn)
begin
    if(~rstn) cnt5<=0;
    else
    begin
        if(status_w)
        begin
            if(cnt5_full) cnt5<=0;
            else if(cnt4_full) cnt5<=cnt5+1'b1;
            else cnt5<=cnt5;
        end
        else cnt5<=0;
    end
end

always@(posedge clk or negedge rstn)
begin
    if(~rstn) cnt6<=1'b0;
    else
    begin
        if(status_w)
        begin
            if(cnt5_full) cnt6<=~cnt6;
            else cnt6<=cnt6;
        end
        else cnt6<=1'b0;
    end
end

reg cnt6_1; 
reg [6:0] cnt5_1; 
reg [3:0] cnt4_1; //the raw wr addr to wb when not considering ready is 0

always@(posedge clk)
begin
    cnt6_1<=cnt6; cnt5_1<=cnt5; cnt4_1<=cnt4;
end

reg [3:0] cnt4_1_reg; //the reg to buffer addr when ready is 0
always@(posedge clk)
begin
    if(~ready1) cnt4_1_reg<=cnt4_1_reg;
    else cnt4_1_reg<=cnt4_1;     
end

wire [3:0] w_wr_addr; //real wr addr to wb
assign w_wr_addr = ready1 ? cnt4_1 : cnt4_1_reg;

/////////////////////////////////////////////////
reg wr_w_to_done;
always@(posedge clk or negedge rstn)
begin
    if(~rstn) wr_w_to_done<=1'b0;
    else if(status_w)
    begin
        if(cnt5_full&cnt6) wr_w_to_done<=1'b1;
        else wr_w_to_done<=wr_w_to_done;
    end
    else wr_w_to_done<=1'b0;
end

wire wr_w_done;
assign wr_w_done = wr_w_to_done&ready;
/////////////////////////////////////////////////
reg cnt6_2;
reg [6:0] cnt5_2;
always@(posedge clk)
begin
    if(~ready1) cnt6_2<=cnt6_2;
    else cnt6_2<=cnt6_1;
end
always@(posedge clk)
begin
    if(~ready1) cnt5_2<=cnt5_2;
    else cnt5_2<=cnt5_1;
end

wire cnt6_3;
wire [6:0] cnt5_3;
assign cnt6_3 = ready1 ? cnt6_1 : cnt6_2; 
assign cnt5_3 = ready1 ? cnt5_1 : cnt5_2; 
/////////////////////////////////////////////////

wire w_we_0;
wire w_we_1;
wire w_we_2;
wire w_we_3;
wire w_we_4;
wire w_we_5;
wire w_we_6;
wire w_we_7;
wire w_we_8;
wire w_we_9;
wire w_we_10;
wire w_we_11;
wire w_we_12;
wire w_we_13;
wire w_we_14;
wire w_we_15;
wire w_we_16;
wire w_we_17;
wire w_we_18;
wire w_we_19;
wire w_we_20;
wire w_we_21;
wire w_we_22;
wire w_we_23;
wire w_we_24;
wire w_we_25;
wire w_we_26;
wire w_we_27;
wire w_we_28;
wire w_we_29;
wire w_we_30;
wire w_we_31;
wire w_we_32;
wire w_we_33;
wire w_we_34;
wire w_we_35;
wire w_we_36;
wire w_we_37;
wire w_we_38;
wire w_we_39;
wire w_we_40;
wire w_we_41;
wire w_we_42;
wire w_we_43;
wire w_we_44;
wire w_we_45;
wire w_we_46;
wire w_we_47;
wire w_we_48;
wire w_we_49;
wire w_we_50;
wire w_we_51;
wire w_we_52;
wire w_we_53;
wire w_we_54;
wire w_we_55;
wire w_we_56;
wire w_we_57;
wire w_we_58;
wire w_we_59;
wire w_we_60;
wire w_we_61;
wire w_we_62;
wire w_we_63;
wire w_we_64;
wire w_we_65;
wire w_we_66;
wire w_we_67;
wire w_we_68;
wire w_we_69;
wire w_we_70;
wire w_we_71;
wire w_we_72;
wire w_we_73;
wire w_we_74;
wire w_we_75;
wire w_we_76;
wire w_we_77;
wire w_we_78;
wire w_we_79;
wire w_we_80;
wire w_we_81;
wire w_we_82;
wire w_we_83;
wire w_we_84;
wire w_we_85;
wire w_we_86;
wire w_we_87;
wire w_we_88;
wire w_we_89;
wire w_we_90;
wire w_we_91;
wire w_we_92;
wire w_we_93;
wire w_we_94;
wire w_we_95;
wire w_we_96;
wire w_we_97;
wire w_we_98;
wire w_we_99;
wire w_we_100;
wire w_we_101;
wire w_we_102;
wire w_we_103;
wire w_we_104;
wire w_we_105;
wire w_we_106;
wire w_we_107;
wire w_we_108;
wire w_we_109;
wire w_we_110;
wire w_we_111;
wire w_we_112;
wire w_we_113;
wire w_we_114;
wire w_we_115;
wire w_we_116;
wire w_we_117;
wire w_we_118;
wire w_we_119;
wire w_we_120;
wire w_we_121;
wire w_we_122;
wire w_we_123;
wire w_we_124;
wire w_we_125;
wire w_we_126;
wire w_we_127;

assign w_we_0=status_w&(~cnt6_3)&(cnt5_3==0)&ready;
//in non-wr_w state,cnt5，cnt6 are all 0,but we cannot write w buff
assign w_we_1=(~cnt6_3)&(cnt5_3==1)&ready;
assign w_we_2=(~cnt6_3)&(cnt5_3==2)&ready;
assign w_we_3=(~cnt6_3)&(cnt5_3==3)&ready;
assign w_we_4=(~cnt6_3)&(cnt5_3==4)&ready;
assign w_we_5=(~cnt6_3)&(cnt5_3==5)&ready;
assign w_we_6=(~cnt6_3)&(cnt5_3==6)&ready;
assign w_we_7=(~cnt6_3)&(cnt5_3==7)&ready;
assign w_we_8=(~cnt6_3)&(cnt5_3==8)&ready;
assign w_we_9=(~cnt6_3)&(cnt5_3==9)&ready;
assign w_we_10=(~cnt6_3)&(cnt5_3==10)&ready;
assign w_we_11=(~cnt6_3)&(cnt5_3==11)&ready;
assign w_we_12=(~cnt6_3)&(cnt5_3==12)&ready;
assign w_we_13=(~cnt6_3)&(cnt5_3==13)&ready;
assign w_we_14=(~cnt6_3)&(cnt5_3==14)&ready;
assign w_we_15=(~cnt6_3)&(cnt5_3==15)&ready;
assign w_we_16=(~cnt6_3)&(cnt5_3==16)&ready;
assign w_we_17=(~cnt6_3)&(cnt5_3==17)&ready;
assign w_we_18=(~cnt6_3)&(cnt5_3==18)&ready;
assign w_we_19=(~cnt6_3)&(cnt5_3==19)&ready;
assign w_we_20=(~cnt6_3)&(cnt5_3==20)&ready;
assign w_we_21=(~cnt6_3)&(cnt5_3==21)&ready;
assign w_we_22=(~cnt6_3)&(cnt5_3==22)&ready;
assign w_we_23=(~cnt6_3)&(cnt5_3==23)&ready;
assign w_we_24=(~cnt6_3)&(cnt5_3==24)&ready;
assign w_we_25=(~cnt6_3)&(cnt5_3==25)&ready;
assign w_we_26=(~cnt6_3)&(cnt5_3==26)&ready;
assign w_we_27=(~cnt6_3)&(cnt5_3==27)&ready;
assign w_we_28=(~cnt6_3)&(cnt5_3==28)&ready;
assign w_we_29=(~cnt6_3)&(cnt5_3==29)&ready;
assign w_we_30=(~cnt6_3)&(cnt5_3==30)&ready;
assign w_we_31=(~cnt6_3)&(cnt5_3==31)&ready;
assign w_we_32=(~cnt6_3)&(cnt5_3==32)&ready;
assign w_we_33=(~cnt6_3)&(cnt5_3==33)&ready;
assign w_we_34=(~cnt6_3)&(cnt5_3==34)&ready;
assign w_we_35=(~cnt6_3)&(cnt5_3==35)&ready;
assign w_we_36=(~cnt6_3)&(cnt5_3==36)&ready;
assign w_we_37=(~cnt6_3)&(cnt5_3==37)&ready;
assign w_we_38=(~cnt6_3)&(cnt5_3==38)&ready;
assign w_we_39=(~cnt6_3)&(cnt5_3==39)&ready;
assign w_we_40=(~cnt6_3)&(cnt5_3==40)&ready;
assign w_we_41=(~cnt6_3)&(cnt5_3==41)&ready;
assign w_we_42=(~cnt6_3)&(cnt5_3==42)&ready;
assign w_we_43=(~cnt6_3)&(cnt5_3==43)&ready;
assign w_we_44=(~cnt6_3)&(cnt5_3==44)&ready;
assign w_we_45=(~cnt6_3)&(cnt5_3==45)&ready;
assign w_we_46=(~cnt6_3)&(cnt5_3==46)&ready;
assign w_we_47=(~cnt6_3)&(cnt5_3==47)&ready;
assign w_we_48=(~cnt6_3)&(cnt5_3==48)&ready;
assign w_we_49=(~cnt6_3)&(cnt5_3==49)&ready;
assign w_we_50=(~cnt6_3)&(cnt5_3==50)&ready;
assign w_we_51=(~cnt6_3)&(cnt5_3==51)&ready;
assign w_we_52=(~cnt6_3)&(cnt5_3==52)&ready;
assign w_we_53=(~cnt6_3)&(cnt5_3==53)&ready;
assign w_we_54=(~cnt6_3)&(cnt5_3==54)&ready;
assign w_we_55=(~cnt6_3)&(cnt5_3==55)&ready;
assign w_we_56=(~cnt6_3)&(cnt5_3==56)&ready;
assign w_we_57=(~cnt6_3)&(cnt5_3==57)&ready;
assign w_we_58=(~cnt6_3)&(cnt5_3==58)&ready;
assign w_we_59=(~cnt6_3)&(cnt5_3==59)&ready;
assign w_we_60=(~cnt6_3)&(cnt5_3==60)&ready;
assign w_we_61=(~cnt6_3)&(cnt5_3==61)&ready;
assign w_we_62=(~cnt6_3)&(cnt5_3==62)&ready;
assign w_we_63=(~cnt6_3)&(cnt5_3==63)&ready;
assign w_we_64=cnt6_3&(cnt5_3==0)&ready;
assign w_we_65=cnt6_3&(cnt5_3==1)&ready;
assign w_we_66=cnt6_3&(cnt5_3==2)&ready;
assign w_we_67=cnt6_3&(cnt5_3==3)&ready;
assign w_we_68=cnt6_3&(cnt5_3==4)&ready;
assign w_we_69=cnt6_3&(cnt5_3==5)&ready;
assign w_we_70=cnt6_3&(cnt5_3==6)&ready;
assign w_we_71=cnt6_3&(cnt5_3==7)&ready;
assign w_we_72=cnt6_3&(cnt5_3==8)&ready;
assign w_we_73=cnt6_3&(cnt5_3==9)&ready;
assign w_we_74=cnt6_3&(cnt5_3==10)&ready;
assign w_we_75=cnt6_3&(cnt5_3==11)&ready;
assign w_we_76=cnt6_3&(cnt5_3==12)&ready;
assign w_we_77=cnt6_3&(cnt5_3==13)&ready;
assign w_we_78=cnt6_3&(cnt5_3==14)&ready;
assign w_we_79=cnt6_3&(cnt5_3==15)&ready;
assign w_we_80=cnt6_3&(cnt5_3==16)&ready;
assign w_we_81=cnt6_3&(cnt5_3==17)&ready;
assign w_we_82=cnt6_3&(cnt5_3==18)&ready;
assign w_we_83=cnt6_3&(cnt5_3==19)&ready;
assign w_we_84=cnt6_3&(cnt5_3==20)&ready;
assign w_we_85=cnt6_3&(cnt5_3==21)&ready;
assign w_we_86=cnt6_3&(cnt5_3==22)&ready;
assign w_we_87=cnt6_3&(cnt5_3==23)&ready;
assign w_we_88=cnt6_3&(cnt5_3==24)&ready;
assign w_we_89=cnt6_3&(cnt5_3==25)&ready;
assign w_we_90=cnt6_3&(cnt5_3==26)&ready;
assign w_we_91=cnt6_3&(cnt5_3==27)&ready;
assign w_we_92=cnt6_3&(cnt5_3==28)&ready;
assign w_we_93=cnt6_3&(cnt5_3==29)&ready;
assign w_we_94=cnt6_3&(cnt5_3==30)&ready;
assign w_we_95=cnt6_3&(cnt5_3==31)&ready;
assign w_we_96=cnt6_3&(cnt5_3==32)&ready;
assign w_we_97=cnt6_3&(cnt5_3==33)&ready;
assign w_we_98=cnt6_3&(cnt5_3==34)&ready;
assign w_we_99=cnt6_3&(cnt5_3==35)&ready;
assign w_we_100=cnt6_3&(cnt5_3==36)&ready;
assign w_we_101=cnt6_3&(cnt5_3==37)&ready;
assign w_we_102=cnt6_3&(cnt5_3==38)&ready;
assign w_we_103=cnt6_3&(cnt5_3==39)&ready;
assign w_we_104=cnt6_3&(cnt5_3==40)&ready;
assign w_we_105=cnt6_3&(cnt5_3==41)&ready;
assign w_we_106=cnt6_3&(cnt5_3==42)&ready;
assign w_we_107=cnt6_3&(cnt5_3==43)&ready;
assign w_we_108=cnt6_3&(cnt5_3==44)&ready;
assign w_we_109=cnt6_3&(cnt5_3==45)&ready;
assign w_we_110=cnt6_3&(cnt5_3==46)&ready;
assign w_we_111=cnt6_3&(cnt5_3==47)&ready;
assign w_we_112=cnt6_3&(cnt5_3==48)&ready;
assign w_we_113=cnt6_3&(cnt5_3==49)&ready;
assign w_we_114=cnt6_3&(cnt5_3==50)&ready;
assign w_we_115=cnt6_3&(cnt5_3==51)&ready;
assign w_we_116=cnt6_3&(cnt5_3==52)&ready;
assign w_we_117=cnt6_3&(cnt5_3==53)&ready;
assign w_we_118=cnt6_3&(cnt5_3==54)&ready;
assign w_we_119=cnt6_3&(cnt5_3==55)&ready;
assign w_we_120=cnt6_3&(cnt5_3==56)&ready;
assign w_we_121=cnt6_3&(cnt5_3==57)&ready;
assign w_we_122=cnt6_3&(cnt5_3==58)&ready;
assign w_we_123=cnt6_3&(cnt5_3==59)&ready;
assign w_we_124=cnt6_3&(cnt5_3==60)&ready;
assign w_we_125=cnt6_3&(cnt5_3==61)&ready;
assign w_we_126=cnt6_3&(cnt5_3==62)&ready;
assign w_we_127=cnt6_3&(cnt5_3==63)&ready;

wire [3:0] w_addr;
assign w_addr = ~rstn ? 4'b0 : (
                status_w ? w_wr_addr : (
                status_calcu ? w_rd_addr : 4'b0));

wire [15:0] w_out_0;
wire [15:0] w_out_1; 
wire [15:0] w_out_2; 
wire [15:0] w_out_3; 
wire [15:0] w_out_4; 
wire [15:0] w_out_5; 
wire [15:0] w_out_6; 
wire [15:0] w_out_7; 
wire [15:0] w_out_8; 
wire [15:0] w_out_9; 
wire [15:0] w_out_10;
wire [15:0] w_out_11;
wire [15:0] w_out_12;
wire [15:0] w_out_13;
wire [15:0] w_out_14;
wire [15:0] w_out_15;
wire [15:0] w_out_16;
wire [15:0] w_out_17;
wire [15:0] w_out_18;
wire [15:0] w_out_19;
wire [15:0] w_out_20;
wire [15:0] w_out_21;
wire [15:0] w_out_22;
wire [15:0] w_out_23;
wire [15:0] w_out_24;
wire [15:0] w_out_25;
wire [15:0] w_out_26;
wire [15:0] w_out_27;
wire [15:0] w_out_28;
wire [15:0] w_out_29;
wire [15:0] w_out_30;
wire [15:0] w_out_31;
wire [15:0] w_out_32;
wire [15:0] w_out_33;
wire [15:0] w_out_34;
wire [15:0] w_out_35;
wire [15:0] w_out_36;
wire [15:0] w_out_37;
wire [15:0] w_out_38;
wire [15:0] w_out_39;
wire [15:0] w_out_40;
wire [15:0] w_out_41;
wire [15:0] w_out_42;
wire [15:0] w_out_43;
wire [15:0] w_out_44;
wire [15:0] w_out_45;
wire [15:0] w_out_46;
wire [15:0] w_out_47;
wire [15:0] w_out_48;
wire [15:0] w_out_49;
wire [15:0] w_out_50;
wire [15:0] w_out_51;
wire [15:0] w_out_52;
wire [15:0] w_out_53;
wire [15:0] w_out_54;
wire [15:0] w_out_55;
wire [15:0] w_out_56;
wire [15:0] w_out_57;
wire [15:0] w_out_58;
wire [15:0] w_out_59;
wire [15:0] w_out_60;
wire [15:0] w_out_61;
wire [15:0] w_out_62;
wire [15:0] w_out_63;
wire [15:0] w_out_64;
wire [15:0] w_out_65;
wire [15:0] w_out_66;
wire [15:0] w_out_67;
wire [15:0] w_out_68;
wire [15:0] w_out_69;
wire [15:0] w_out_70;
wire [15:0] w_out_71;
wire [15:0] w_out_72;
wire [15:0] w_out_73;
wire [15:0] w_out_74;
wire [15:0] w_out_75;
wire [15:0] w_out_76;
wire [15:0] w_out_77;
wire [15:0] w_out_78;
wire [15:0] w_out_79;
wire [15:0] w_out_80;
wire [15:0] w_out_81;
wire [15:0] w_out_82;
wire [15:0] w_out_83;
wire [15:0] w_out_84;
wire [15:0] w_out_85;
wire [15:0] w_out_86;
wire [15:0] w_out_87;
wire [15:0] w_out_88;
wire [15:0] w_out_89;
wire [15:0] w_out_90;
wire [15:0] w_out_91;
wire [15:0] w_out_92;
wire [15:0] w_out_93;
wire [15:0] w_out_94;
wire [15:0] w_out_95;
wire [15:0] w_out_96;
wire [15:0] w_out_97;
wire [15:0] w_out_98;
wire [15:0] w_out_99;
wire [15:0] w_out_100;
wire [15:0] w_out_101;
wire [15:0] w_out_102;
wire [15:0] w_out_103;
wire [15:0] w_out_104;
wire [15:0] w_out_105;
wire [15:0] w_out_106;
wire [15:0] w_out_107;
wire [15:0] w_out_108;
wire [15:0] w_out_109;
wire [15:0] w_out_110;
wire [15:0] w_out_111;
wire [15:0] w_out_112;
wire [15:0] w_out_113;
wire [15:0] w_out_114;
wire [15:0] w_out_115;
wire [15:0] w_out_116;
wire [15:0] w_out_117;
wire [15:0] w_out_118;
wire [15:0] w_out_119;
wire [15:0] w_out_120;
wire [15:0] w_out_121;
wire [15:0] w_out_122;
wire [15:0] w_out_123;
wire [15:0] w_out_124;
wire [15:0] w_out_125;
wire [15:0] w_out_126;
wire [15:0] w_out_127;

RAM_16bit_16  w_buff_0(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_0),.we(w_we_0));
RAM_16bit_16  w_buff_1(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_1),.we(w_we_1));   
RAM_16bit_16  w_buff_2(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_2),.we(w_we_2));   
RAM_16bit_16  w_buff_3(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_3),.we(w_we_3));   
RAM_16bit_16  w_buff_4(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_4),.we(w_we_4));   
RAM_16bit_16  w_buff_5(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_5),.we(w_we_5));   
RAM_16bit_16  w_buff_6(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_6),.we(w_we_6));   
RAM_16bit_16  w_buff_7(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_7),.we(w_we_7));   
RAM_16bit_16  w_buff_8(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_8),.we(w_we_8));   
RAM_16bit_16  w_buff_9(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_9),.we(w_we_9));   
RAM_16bit_16  w_buff_10(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_10),.we(w_we_10));
RAM_16bit_16  w_buff_11(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_11),.we(w_we_11));
RAM_16bit_16  w_buff_12(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_12),.we(w_we_12));
RAM_16bit_16  w_buff_13(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_13),.we(w_we_13));
RAM_16bit_16  w_buff_14(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_14),.we(w_we_14));
RAM_16bit_16  w_buff_15(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_15),.we(w_we_15));
RAM_16bit_16  w_buff_16(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_16),.we(w_we_16));
RAM_16bit_16  w_buff_17(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_17),.we(w_we_17));
RAM_16bit_16  w_buff_18(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_18),.we(w_we_18));
RAM_16bit_16  w_buff_19(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_19),.we(w_we_19));
RAM_16bit_16  w_buff_20(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_20),.we(w_we_20));
RAM_16bit_16  w_buff_21(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_21),.we(w_we_21));
RAM_16bit_16  w_buff_22(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_22),.we(w_we_22));
RAM_16bit_16  w_buff_23(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_23),.we(w_we_23));
RAM_16bit_16  w_buff_24(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_24),.we(w_we_24));
RAM_16bit_16  w_buff_25(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_25),.we(w_we_25));
RAM_16bit_16  w_buff_26(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_26),.we(w_we_26));
RAM_16bit_16  w_buff_27(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_27),.we(w_we_27));
RAM_16bit_16  w_buff_28(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_28),.we(w_we_28));
RAM_16bit_16  w_buff_29(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_29),.we(w_we_29));
RAM_16bit_16  w_buff_30(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_30),.we(w_we_30));
RAM_16bit_16  w_buff_31(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_31),.we(w_we_31));
RAM_16bit_16  w_buff_32(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_32),.we(w_we_32));
RAM_16bit_16  w_buff_33(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_33),.we(w_we_33));
RAM_16bit_16  w_buff_34(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_34),.we(w_we_34));
RAM_16bit_16  w_buff_35(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_35),.we(w_we_35));
RAM_16bit_16  w_buff_36(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_36),.we(w_we_36));
RAM_16bit_16  w_buff_37(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_37),.we(w_we_37));
RAM_16bit_16  w_buff_38(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_38),.we(w_we_38));
RAM_16bit_16  w_buff_39(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_39),.we(w_we_39));
RAM_16bit_16  w_buff_40(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_40),.we(w_we_40));
RAM_16bit_16  w_buff_41(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_41),.we(w_we_41));
RAM_16bit_16  w_buff_42(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_42),.we(w_we_42));
RAM_16bit_16  w_buff_43(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_43),.we(w_we_43));
RAM_16bit_16  w_buff_44(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_44),.we(w_we_44));
RAM_16bit_16  w_buff_45(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_45),.we(w_we_45));
RAM_16bit_16  w_buff_46(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_46),.we(w_we_46));
RAM_16bit_16  w_buff_47(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_47),.we(w_we_47));
RAM_16bit_16  w_buff_48(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_48),.we(w_we_48));
RAM_16bit_16  w_buff_49(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_49),.we(w_we_49));
RAM_16bit_16  w_buff_50(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_50),.we(w_we_50));
RAM_16bit_16  w_buff_51(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_51),.we(w_we_51));
RAM_16bit_16  w_buff_52(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_52),.we(w_we_52));
RAM_16bit_16  w_buff_53(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_53),.we(w_we_53));
RAM_16bit_16  w_buff_54(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_54),.we(w_we_54));
RAM_16bit_16  w_buff_55(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_55),.we(w_we_55));
RAM_16bit_16  w_buff_56(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_56),.we(w_we_56));
RAM_16bit_16  w_buff_57(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_57),.we(w_we_57));
RAM_16bit_16  w_buff_58(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_58),.we(w_we_58));
RAM_16bit_16  w_buff_59(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_59),.we(w_we_59));
RAM_16bit_16  w_buff_60(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_60),.we(w_we_60));
RAM_16bit_16  w_buff_61(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_61),.we(w_we_61));
RAM_16bit_16  w_buff_62(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_62),.we(w_we_62));
RAM_16bit_16  w_buff_63(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_63),.we(w_we_63));
RAM_16bit_16  w_buff_64(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_64),.we(w_we_64));
RAM_16bit_16  w_buff_65(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_65),.we(w_we_65));
RAM_16bit_16  w_buff_66(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_66),.we(w_we_66));
RAM_16bit_16  w_buff_67(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_67),.we(w_we_67));
RAM_16bit_16  w_buff_68(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_68),.we(w_we_68));
RAM_16bit_16  w_buff_69(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_69),.we(w_we_69));
RAM_16bit_16  w_buff_70(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_70),.we(w_we_70));
RAM_16bit_16  w_buff_71(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_71),.we(w_we_71));
RAM_16bit_16  w_buff_72(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_72),.we(w_we_72));
RAM_16bit_16  w_buff_73(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_73),.we(w_we_73));
RAM_16bit_16  w_buff_74(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_74),.we(w_we_74));
RAM_16bit_16  w_buff_75(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_75),.we(w_we_75));
RAM_16bit_16  w_buff_76(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_76),.we(w_we_76));
RAM_16bit_16  w_buff_77(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_77),.we(w_we_77));
RAM_16bit_16  w_buff_78(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_78),.we(w_we_78));
RAM_16bit_16  w_buff_79(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_79),.we(w_we_79));
RAM_16bit_16  w_buff_80(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_80),.we(w_we_80));
RAM_16bit_16  w_buff_81(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_81),.we(w_we_81));
RAM_16bit_16  w_buff_82(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_82),.we(w_we_82));
RAM_16bit_16  w_buff_83(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_83),.we(w_we_83));
RAM_16bit_16  w_buff_84(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_84),.we(w_we_84));
RAM_16bit_16  w_buff_85(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_85),.we(w_we_85));
RAM_16bit_16  w_buff_86(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_86),.we(w_we_86));
RAM_16bit_16  w_buff_87(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_87),.we(w_we_87));
RAM_16bit_16  w_buff_88(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_88),.we(w_we_88));
RAM_16bit_16  w_buff_89(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_89),.we(w_we_89));
RAM_16bit_16  w_buff_90(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_90),.we(w_we_90));
RAM_16bit_16  w_buff_91(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_91),.we(w_we_91));
RAM_16bit_16  w_buff_92(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_92),.we(w_we_92));
RAM_16bit_16  w_buff_93(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_93),.we(w_we_93));
RAM_16bit_16  w_buff_94(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_94),.we(w_we_94));
RAM_16bit_16  w_buff_95(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_95),.we(w_we_95));
RAM_16bit_16  w_buff_96(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_96),.we(w_we_96));
RAM_16bit_16  w_buff_97(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_97),.we(w_we_97));
RAM_16bit_16  w_buff_98(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_98),.we(w_we_98));
RAM_16bit_16  w_buff_99(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_99),.we(w_we_99));
RAM_16bit_16  w_buff_100(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_100),.we(w_we_100));
RAM_16bit_16  w_buff_101(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_101),.we(w_we_101));
RAM_16bit_16  w_buff_102(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_102),.we(w_we_102));
RAM_16bit_16  w_buff_103(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_103),.we(w_we_103));
RAM_16bit_16  w_buff_104(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_104),.we(w_we_104));
RAM_16bit_16  w_buff_105(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_105),.we(w_we_105));
RAM_16bit_16  w_buff_106(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_106),.we(w_we_106));
RAM_16bit_16  w_buff_107(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_107),.we(w_we_107));
RAM_16bit_16  w_buff_108(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_108),.we(w_we_108));
RAM_16bit_16  w_buff_109(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_109),.we(w_we_109));
RAM_16bit_16  w_buff_110(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_110),.we(w_we_110));
RAM_16bit_16  w_buff_111(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_111),.we(w_we_111));
RAM_16bit_16  w_buff_112(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_112),.we(w_we_112));
RAM_16bit_16  w_buff_113(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_113),.we(w_we_113));
RAM_16bit_16  w_buff_114(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_114),.we(w_we_114));
RAM_16bit_16  w_buff_115(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_115),.we(w_we_115));
RAM_16bit_16  w_buff_116(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_116),.we(w_we_116));
RAM_16bit_16  w_buff_117(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_117),.we(w_we_117));
RAM_16bit_16  w_buff_118(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_118),.we(w_we_118));
RAM_16bit_16  w_buff_119(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_119),.we(w_we_119));
RAM_16bit_16  w_buff_120(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_120),.we(w_we_120));
RAM_16bit_16  w_buff_121(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_121),.we(w_we_121));
RAM_16bit_16  w_buff_122(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_122),.we(w_we_122));
RAM_16bit_16  w_buff_123(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_123),.we(w_we_123));
RAM_16bit_16  w_buff_124(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_124),.we(w_we_124));
RAM_16bit_16  w_buff_125(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_125),.we(w_we_125));
RAM_16bit_16  w_buff_126(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_126),.we(w_we_126));
RAM_16bit_16  w_buff_127(.clk(clk),.a(w_addr),.d(in_bus),.qspo(w_out_127),.we(w_we_127));


//!**** MAC Matrix ****!//
reg win_done1,win_done2;
always@(posedge clk or negedge rstn)
begin
    if(~rstn) 
    begin
        win_done1<=1'b0;win_done2<=1'b0;
    end
    else
    begin
        win_done1<=win_done;
        win_done2<=win_done1;
    end
end

wire [10:0] mac_addr,mac_calcu_addr,mac_pool_wr_addr,mac_pool_rd_addr,mac_back_addr;

//????????????????????????????????????????????????????????????????????????????????????????????????????????
assign mac_calcu_addr=cnt2+cnt3*(spec ? spec_fb_w-1'b1 : out_side);

wire [10:0] spec_mac_rd_addr;
assign spec_mac_rd_addr = ((cnt10<<1) + cnt8) * (spec_win[0] ? 33 : 32) + (cnt9<<1) + cnt7;
//????????????????????????????????????????????????????????????????????????????????????????????????????????

assign mac_pool_wr_addr=cnt9+cnt10*(cnt9_max+1'b1);

wire [10:0] odd_row_len,odd_base_addr,even_base_addr;
assign odd_row_len=(pooled_side<<1)+1'b1;
assign odd_base_addr=odd_row_len*((cnt10<<1)+cnt8)+(cnt9<<1)+cnt7;
assign even_base_addr=(cnt9_max+1'b1)*((cnt10<<2)+(cnt8<<1))+(cnt9<<1)+cnt7;

assign mac_pool_rd_addr = spec              ? spec_mac_rd_addr               : ( //??
                        (~delta_x[0])       ? even_base_addr                 : (   
                        (pool_style==2'b11) ? odd_base_addr                  : (
                        (pool_style==2'b10) ? odd_base_addr+odd_row_len      : (
                        (pool_style==2'b01) ? odd_base_addr+1'b1             : (
                        (pool_style==2'b00) ? odd_base_addr+odd_row_len+1'b1 : 11'b0)))));

assign mac_addr = ~rstn ? 11'b0 : (
                status_calcu ? (win_done|win_done1 ? mac_calcu_addr : 11'b0) : (
                status_pool ? (pool_win_done ? mac_pool_wr_addr : mac_pool_rd_addr) : (
                status_back|status_pre_back ? mac_back_addr : 11'b0)));

wire mac_buff_we;
assign mac_buff_we = ~rstn ? 1'b0 : (
                status_calcu ? win_done : (
                status_pool ? pool_win_done : 1'b0));

wire [15:0] mac_out_0;
wire [15:0] mac_out_1;
wire [15:0] mac_out_2;
wire [15:0] mac_out_3;
wire [15:0] mac_out_4;
wire [15:0] mac_out_5;
wire [15:0] mac_out_6;
wire [15:0] mac_out_7;
wire [15:0] mac_out_8;
wire [15:0] mac_out_9;
wire [15:0] mac_out_10;
wire [15:0] mac_out_11;
wire [15:0] mac_out_12;
wire [15:0] mac_out_13;
wire [15:0] mac_out_14;
wire [15:0] mac_out_15;
wire [15:0] mac_out_16;
wire [15:0] mac_out_17;
wire [15:0] mac_out_18;
wire [15:0] mac_out_19;
wire [15:0] mac_out_20;
wire [15:0] mac_out_21;
wire [15:0] mac_out_22;
wire [15:0] mac_out_23;
wire [15:0] mac_out_24;
wire [15:0] mac_out_25;
wire [15:0] mac_out_26;
wire [15:0] mac_out_27;
wire [15:0] mac_out_28;
wire [15:0] mac_out_29;
wire [15:0] mac_out_30;
wire [15:0] mac_out_31;
wire [15:0] mac_out_32;
wire [15:0] mac_out_33;
wire [15:0] mac_out_34;
wire [15:0] mac_out_35;
wire [15:0] mac_out_36;
wire [15:0] mac_out_37;
wire [15:0] mac_out_38;
wire [15:0] mac_out_39;
wire [15:0] mac_out_40;
wire [15:0] mac_out_41;
wire [15:0] mac_out_42;
wire [15:0] mac_out_43;
wire [15:0] mac_out_44;
wire [15:0] mac_out_45;
wire [15:0] mac_out_46;
wire [15:0] mac_out_47;
wire [15:0] mac_out_48;
wire [15:0] mac_out_49;
wire [15:0] mac_out_50;
wire [15:0] mac_out_51;
wire [15:0] mac_out_52;
wire [15:0] mac_out_53;
wire [15:0] mac_out_54;
wire [15:0] mac_out_55;
wire [15:0] mac_out_56;
wire [15:0] mac_out_57;
wire [15:0] mac_out_58;
wire [15:0] mac_out_59;
wire [15:0] mac_out_60;
wire [15:0] mac_out_61;
wire [15:0] mac_out_62;
wire [15:0] mac_out_63;

wire [15:0] pool_out_0;
wire [15:0] pool_out_1;
wire [15:0] pool_out_2;
wire [15:0] pool_out_3;
wire [15:0] pool_out_4;
wire [15:0] pool_out_5;
wire [15:0] pool_out_6;
wire [15:0] pool_out_7;
wire [15:0] pool_out_8;
wire [15:0] pool_out_9;
wire [15:0] pool_out_10;
wire [15:0] pool_out_11;
wire [15:0] pool_out_12;
wire [15:0] pool_out_13;
wire [15:0] pool_out_14;
wire [15:0] pool_out_15;
wire [15:0] pool_out_16;
wire [15:0] pool_out_17;
wire [15:0] pool_out_18;
wire [15:0] pool_out_19;
wire [15:0] pool_out_20;
wire [15:0] pool_out_21;
wire [15:0] pool_out_22;
wire [15:0] pool_out_23;
wire [15:0] pool_out_24;
wire [15:0] pool_out_25;
wire [15:0] pool_out_26;
wire [15:0] pool_out_27;
wire [15:0] pool_out_28;
wire [15:0] pool_out_29;
wire [15:0] pool_out_30;
wire [15:0] pool_out_31;
wire [15:0] pool_out_32;
wire [15:0] pool_out_33;
wire [15:0] pool_out_34;
wire [15:0] pool_out_35;
wire [15:0] pool_out_36;
wire [15:0] pool_out_37;
wire [15:0] pool_out_38;
wire [15:0] pool_out_39;
wire [15:0] pool_out_40;
wire [15:0] pool_out_41;
wire [15:0] pool_out_42;
wire [15:0] pool_out_43;
wire [15:0] pool_out_44;
wire [15:0] pool_out_45;
wire [15:0] pool_out_46;
wire [15:0] pool_out_47;
wire [15:0] pool_out_48;
wire [15:0] pool_out_49;
wire [15:0] pool_out_50;
wire [15:0] pool_out_51;
wire [15:0] pool_out_52;
wire [15:0] pool_out_53;
wire [15:0] pool_out_54;
wire [15:0] pool_out_55;
wire [15:0] pool_out_56;
wire [15:0] pool_out_57;
wire [15:0] pool_out_58;
wire [15:0] pool_out_59;
wire [15:0] pool_out_60;
wire [15:0] pool_out_61;
wire [15:0] pool_out_62;
wire [15:0] pool_out_63;

wire cho_mac_buff_din;
assign cho_mac_buff_din = status_calcu ? 1'b1 : (
                            status_pool ? 1'b0 : 1'b1);

MAC_unit mac_0(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_0),.w1(w_out_64),.addr(mac_addr),.pool_out(pool_out_0),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_0));       
MAC_unit mac_1(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_1),.w1(w_out_65),.addr(mac_addr),.pool_out(pool_out_1),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_1));       
MAC_unit mac_2(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_2),.w1(w_out_66),.addr(mac_addr),.pool_out(pool_out_2),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_2));       
MAC_unit mac_3(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_3),.w1(w_out_67),.addr(mac_addr),.pool_out(pool_out_3),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_3));       
MAC_unit mac_4(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_4),.w1(w_out_68),.addr(mac_addr),.pool_out(pool_out_4),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_4));       
MAC_unit mac_5(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_5),.w1(w_out_69),.addr(mac_addr),.pool_out(pool_out_5),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_5));       
MAC_unit mac_6(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_6),.w1(w_out_70),.addr(mac_addr),.pool_out(pool_out_6),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_6));       
MAC_unit mac_7(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_7),.w1(w_out_71),.addr(mac_addr),.pool_out(pool_out_7),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_7));       
MAC_unit mac_8(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_8),.w1(w_out_72),.addr(mac_addr),.pool_out(pool_out_8),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_8));       
MAC_unit mac_9(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_9),.w1(w_out_73),.addr(mac_addr),.pool_out(pool_out_9),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_9));       
MAC_unit mac_10(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_10),.w1(w_out_74),.addr(mac_addr),.pool_out(pool_out_10),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_10));   
MAC_unit mac_11(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_11),.w1(w_out_75),.addr(mac_addr),.pool_out(pool_out_11),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_11));   
MAC_unit mac_12(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_12),.w1(w_out_76),.addr(mac_addr),.pool_out(pool_out_12),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_12));   
MAC_unit mac_13(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_13),.w1(w_out_77),.addr(mac_addr),.pool_out(pool_out_13),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_13));   
MAC_unit mac_14(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_14),.w1(w_out_78),.addr(mac_addr),.pool_out(pool_out_14),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_14));   
MAC_unit mac_15(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_15),.w1(w_out_79),.addr(mac_addr),.pool_out(pool_out_15),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_15));   
MAC_unit mac_16(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_16),.w1(w_out_80),.addr(mac_addr),.pool_out(pool_out_16),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_16));   
MAC_unit mac_17(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_17),.w1(w_out_81),.addr(mac_addr),.pool_out(pool_out_17),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_17));   
MAC_unit mac_18(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_18),.w1(w_out_82),.addr(mac_addr),.pool_out(pool_out_18),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_18));   
MAC_unit mac_19(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_19),.w1(w_out_83),.addr(mac_addr),.pool_out(pool_out_19),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_19));   
MAC_unit mac_20(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_20),.w1(w_out_84),.addr(mac_addr),.pool_out(pool_out_20),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_20));   
MAC_unit mac_21(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_21),.w1(w_out_85),.addr(mac_addr),.pool_out(pool_out_21),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_21));   
MAC_unit mac_22(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_22),.w1(w_out_86),.addr(mac_addr),.pool_out(pool_out_22),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_22));   
MAC_unit mac_23(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_23),.w1(w_out_87),.addr(mac_addr),.pool_out(pool_out_23),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_23));   
MAC_unit mac_24(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_24),.w1(w_out_88),.addr(mac_addr),.pool_out(pool_out_24),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_24));   
MAC_unit mac_25(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_25),.w1(w_out_89),.addr(mac_addr),.pool_out(pool_out_25),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_25));   
MAC_unit mac_26(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_26),.w1(w_out_90),.addr(mac_addr),.pool_out(pool_out_26),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_26));   
MAC_unit mac_27(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_27),.w1(w_out_91),.addr(mac_addr),.pool_out(pool_out_27),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_27));   
MAC_unit mac_28(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_28),.w1(w_out_92),.addr(mac_addr),.pool_out(pool_out_28),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_28));   
MAC_unit mac_29(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_29),.w1(w_out_93),.addr(mac_addr),.pool_out(pool_out_29),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_29));   
MAC_unit mac_30(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_30),.w1(w_out_94),.addr(mac_addr),.pool_out(pool_out_30),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_30));   
MAC_unit mac_31(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_31),.w1(w_out_95),.addr(mac_addr),.pool_out(pool_out_31),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_31));   
MAC_unit mac_32(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_32),.w1(w_out_96),.addr(mac_addr),.pool_out(pool_out_32),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_32));   
MAC_unit mac_33(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_33),.w1(w_out_97),.addr(mac_addr),.pool_out(pool_out_33),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_33));   
MAC_unit mac_34(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_34),.w1(w_out_98),.addr(mac_addr),.pool_out(pool_out_34),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_34));   
MAC_unit mac_35(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_35),.w1(w_out_99),.addr(mac_addr),.pool_out(pool_out_35),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_35));   
MAC_unit mac_36(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_36),.w1(w_out_100),.addr(mac_addr),.pool_out(pool_out_36),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_36));  
MAC_unit mac_37(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_37),.w1(w_out_101),.addr(mac_addr),.pool_out(pool_out_37),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_37));  
MAC_unit mac_38(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_38),.w1(w_out_102),.addr(mac_addr),.pool_out(pool_out_38),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_38));  
MAC_unit mac_39(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_39),.w1(w_out_103),.addr(mac_addr),.pool_out(pool_out_39),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_39));  
MAC_unit mac_40(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_40),.w1(w_out_104),.addr(mac_addr),.pool_out(pool_out_40),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_40));  
MAC_unit mac_41(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_41),.w1(w_out_105),.addr(mac_addr),.pool_out(pool_out_41),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_41));  
MAC_unit mac_42(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_42),.w1(w_out_106),.addr(mac_addr),.pool_out(pool_out_42),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_42));  
MAC_unit mac_43(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_43),.w1(w_out_107),.addr(mac_addr),.pool_out(pool_out_43),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_43));  
MAC_unit mac_44(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_44),.w1(w_out_108),.addr(mac_addr),.pool_out(pool_out_44),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_44));  
MAC_unit mac_45(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_45),.w1(w_out_109),.addr(mac_addr),.pool_out(pool_out_45),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_45));  
MAC_unit mac_46(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_46),.w1(w_out_110),.addr(mac_addr),.pool_out(pool_out_46),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_46));  
MAC_unit mac_47(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_47),.w1(w_out_111),.addr(mac_addr),.pool_out(pool_out_47),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_47));  
MAC_unit mac_48(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_48),.w1(w_out_112),.addr(mac_addr),.pool_out(pool_out_48),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_48));  
MAC_unit mac_49(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_49),.w1(w_out_113),.addr(mac_addr),.pool_out(pool_out_49),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_49));  
MAC_unit mac_50(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_50),.w1(w_out_114),.addr(mac_addr),.pool_out(pool_out_50),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_50));  
MAC_unit mac_51(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_51),.w1(w_out_115),.addr(mac_addr),.pool_out(pool_out_51),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_51));  
MAC_unit mac_52(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_52),.w1(w_out_116),.addr(mac_addr),.pool_out(pool_out_52),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_52));  
MAC_unit mac_53(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_53),.w1(w_out_117),.addr(mac_addr),.pool_out(pool_out_53),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_53));  
MAC_unit mac_54(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_54),.w1(w_out_118),.addr(mac_addr),.pool_out(pool_out_54),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_54));  
MAC_unit mac_55(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_55),.w1(w_out_119),.addr(mac_addr),.pool_out(pool_out_55),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_55));  
MAC_unit mac_56(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_56),.w1(w_out_120),.addr(mac_addr),.pool_out(pool_out_56),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_56));  
MAC_unit mac_57(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_57),.w1(w_out_121),.addr(mac_addr),.pool_out(pool_out_57),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_57));  
MAC_unit mac_58(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_58),.w1(w_out_122),.addr(mac_addr),.pool_out(pool_out_58),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_58));  
MAC_unit mac_59(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_59),.w1(w_out_123),.addr(mac_addr),.pool_out(pool_out_59),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_59));  
MAC_unit mac_60(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_60),.w1(w_out_124),.addr(mac_addr),.pool_out(pool_out_60),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_60));  
MAC_unit mac_61(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_61),.w1(w_out_125),.addr(mac_addr),.pool_out(pool_out_61),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_61));  
MAC_unit mac_62(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_62),.w1(w_out_126),.addr(mac_addr),.pool_out(pool_out_62),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_62));  
MAC_unit mac_63(.clk(clk),.rstn(rstn),.we(mac_buff_we),.f0(fbout0_to_mtx),.f1(fbout1_to_mtx),.w0(w_out_63),.w1(w_out_127),.addr(mac_addr),.pool_out(pool_out_63),.status_calcu_init(status_calcu_init),.Nif_fir(Nif_fir),.win_done2(win_done2),.status_calcu(status_calcu),.choose(cho_mac_buff_din),.dout(mac_out_63));  


//************************************ Pool FSM ************************************//
parameter done     = 4'b0001;
parameter pool     = 4'b0010;
parameter back     = 4'b0100; //write back the result 
parameter pre_back = 4'b1000; //write back the result before pooling


reg [3:0] pool_status;
wire [3:0] nxt_pool_status;
always@(posedge clk or negedge rstn)
begin
    if(~rstn) pool_status<=done;
    else pool_status<=nxt_pool_status; 
end

assign nxt_pool_status = pool_status[0]&Nif_full&calcu_done ? (double_back ? pre_back : (is_pool ? pool : back)) : (
                         pool_status[1]&pool_done ? back :(
                         pool_status[2]&back_done ? done : (
                         pool_status[3]&back_done ? (is_pool ? pool : back) : pool_status)));


//************************************ Pooling ************************************//
wire [5:0] pooled_side; //the side of the window after pooling
wire need_pool_pad_w,need_pool_pad_h; 
//only when the side is an odd and cnt9,10 reach pooled_side,will it needs padding

assign pooled_side=out_side/2; 

//??????????????????????????????????????????????????????????????????????????????????
assign need_pool_pad_w = spec ? (cnt9 == 16) : (
                        delta_x[0] ? (cnt9==pooled_side) : 1'b0);

assign need_pool_pad_h = spec ? (cnt10 == 16) : (
                        delta_x[0] ? (cnt10==pooled_side) : 1'b0);
//??????????????????????????????????????????????????????????????????????????????????

wire pool_pad0; assign pool_pad0=need_pool_pad_w&cnt7|need_pool_pad_h&cnt8;//when to pad

reg pool_pad;
always@(posedge clk or negedge rstn)
begin
    if(~rstn) pool_pad<=1'b0;
    else pool_pad<=pool_pad0;

end

wire [5:0] cnt9_max,cnt10_max;
wire [5:0] pooled_side_minus_1;
assign pooled_side_minus_1=pooled_side-1'b1;

//????????????????????????????????????????????????????????????????????????????????????????????????
assign cnt9_max = spec        ?  spec_cnt9_max         : (
                ~delta_x[0]   ?  pooled_side_minus_1   : (
                pool_style[1] ?  pooled_side           : pooled_side_minus_1));

assign cnt10_max = spec       ?  spec_cnt10_max        : (
                ~delta_x[0]   ?  pooled_side_minus_1   : (
                pool_style[0] ?  pooled_side           : pooled_side_minus_1));
//????????????????????????????????????????????????????????????????????????????????????????????????


reg cnt7,cnt8; //unit in pooling window:0~1
reg [5:0] cnt9,cnt10; //which pooling window:0~uncertain
wire cnt7_full,cnt8_full,cnt9_full,cnt10_full;
assign cnt7_full=cnt7;
assign cnt8_full=cnt7_full&cnt8;

assign cnt9_full = (cnt9==cnt9_max)&pool_win_done;

assign cnt10_full = (cnt10==cnt10_max)&cnt9_full;

//????????????????????????????????????????????????????????????????????????????????????????????????
wire [5:0] spec_cnt9_max,spec_cnt10_max;
assign spec_cnt9_max = spec_win[0] ? 16 : 15;

assign spec_cnt10_max = spec_win[1] ? 16 : 15;
//????????????????????????????????????????????????????????????????????????????????????????????????

wire pool_done;
assign pool_done=cnt10_full;

reg pool_win_done; //indicates that a pooling window has been done 
always@(posedge clk or negedge rstn) //delay 1 cycle after updating 1 pooling window
begin
    if(~rstn) pool_win_done<=1'b0;
    else
    begin
        if(status_pool) pool_win_done<=cnt8_full;
        else pool_win_done<=1'b0;
    end
end

reg pool_win_done1;
always@(posedge clk or negedge rstn)
begin
    if(~rstn) pool_win_done1<=1'b0;
    else pool_win_done1<=pool_win_done;
end

always@(posedge clk or negedge rstn)
begin
    if(~rstn) cnt7<=1'b0;
    else
    begin
        if(status_pool) 
        begin
            if(pool_win_done) cnt7<=cnt7;
            else if(cnt7_full) cnt7<=1'b0;
            else cnt7<=~cnt7;
        end
        else cnt7<=1'b0;
    end
end

always@(posedge clk or negedge rstn)
begin
    if(~rstn) cnt8<=1'b0;
    else
    begin
        if(status_pool)
        begin
            if(pool_win_done) cnt8<=cnt8;
            else if(cnt8_full) cnt8<=1'b0;
            else if(cnt7_full) cnt8<=~cnt8;
            else cnt8<=cnt8;
        end
        else cnt8<=1'b0;
    end
end

always@(posedge clk or negedge rstn)
begin
    if(~rstn) cnt9<=0;
    else
    begin
        if(status_pool)
        begin
            if(cnt9_full) cnt9<=0;
            else if(pool_win_done) cnt9<=cnt9+1'b1;
            else cnt9<=cnt9;
        end
        else cnt9<=0;
    end
end

always@(posedge clk or negedge rstn)
begin
    if(~rstn) cnt10<=0;
    else
    begin
        if(status_pool)
        begin
            if(cnt10_full) cnt10<=0;
            else if(cnt9_full) cnt10<=cnt10+1'b1;
            else cnt10<=cnt10;
        end
        else cnt10<=0;
    end
end

reg [15:0] b0;
reg [15:0] b1; 
reg [15:0] b2; 
reg [15:0] b3; 
reg [15:0] b4; 
reg [15:0] b5; 
reg [15:0] b6; 
reg [15:0] b7; 
reg [15:0] b8; 
reg [15:0] b9; 
reg [15:0] b10;
reg [15:0] b11;
reg [15:0] b12;
reg [15:0] b13;
reg [15:0] b14;
reg [15:0] b15;
reg [15:0] b16;
reg [15:0] b17;
reg [15:0] b18;
reg [15:0] b19;
reg [15:0] b20;
reg [15:0] b21;
reg [15:0] b22;
reg [15:0] b23;
reg [15:0] b24;
reg [15:0] b25;
reg [15:0] b26;
reg [15:0] b27;
reg [15:0] b28;
reg [15:0] b29;
reg [15:0] b30;
reg [15:0] b31;
reg [15:0] b32;
reg [15:0] b33;
reg [15:0] b34;
reg [15:0] b35;
reg [15:0] b36;
reg [15:0] b37;
reg [15:0] b38;
reg [15:0] b39;
reg [15:0] b40;
reg [15:0] b41;
reg [15:0] b42;
reg [15:0] b43;
reg [15:0] b44;
reg [15:0] b45;
reg [15:0] b46;
reg [15:0] b47;
reg [15:0] b48;
reg [15:0] b49;
reg [15:0] b50;
reg [15:0] b51;
reg [15:0] b52;
reg [15:0] b53;
reg [15:0] b54;
reg [15:0] b55;
reg [15:0] b56;
reg [15:0] b57;
reg [15:0] b58;
reg [15:0] b59;
reg [15:0] b60;
reg [15:0] b61;
reg [15:0] b62;
reg [15:0] b63;

wire [15:0] relu_out0;
wire [15:0] relu_out1;
wire [15:0] relu_out2;
wire [15:0] relu_out3;
wire [15:0] relu_out4;
wire [15:0] relu_out5;
wire [15:0] relu_out6;
wire [15:0] relu_out7;
wire [15:0] relu_out8;
wire [15:0] relu_out9;
wire [15:0] relu_out10;
wire [15:0] relu_out11;
wire [15:0] relu_out12;
wire [15:0] relu_out13;
wire [15:0] relu_out14;
wire [15:0] relu_out15;
wire [15:0] relu_out16;
wire [15:0] relu_out17;
wire [15:0] relu_out18;
wire [15:0] relu_out19;
wire [15:0] relu_out20;
wire [15:0] relu_out21;
wire [15:0] relu_out22;
wire [15:0] relu_out23;
wire [15:0] relu_out24;
wire [15:0] relu_out25;
wire [15:0] relu_out26;
wire [15:0] relu_out27;
wire [15:0] relu_out28;
wire [15:0] relu_out29;
wire [15:0] relu_out30;
wire [15:0] relu_out31;
wire [15:0] relu_out32;
wire [15:0] relu_out33;
wire [15:0] relu_out34;
wire [15:0] relu_out35;
wire [15:0] relu_out36;
wire [15:0] relu_out37;
wire [15:0] relu_out38;
wire [15:0] relu_out39;
wire [15:0] relu_out40;
wire [15:0] relu_out41;
wire [15:0] relu_out42;
wire [15:0] relu_out43;
wire [15:0] relu_out44;
wire [15:0] relu_out45;
wire [15:0] relu_out46;
wire [15:0] relu_out47;
wire [15:0] relu_out48;
wire [15:0] relu_out49;
wire [15:0] relu_out50;
wire [15:0] relu_out51;
wire [15:0] relu_out52;
wire [15:0] relu_out53;
wire [15:0] relu_out54;
wire [15:0] relu_out55;
wire [15:0] relu_out56;
wire [15:0] relu_out57;
wire [15:0] relu_out58;
wire [15:0] relu_out59;
wire [15:0] relu_out60;
wire [15:0] relu_out61;
wire [15:0] relu_out62;
wire [15:0] relu_out63;

wire [15:0] to_be_relu0;
wire [15:0] to_be_relu1; 
wire [15:0] to_be_relu2; 
wire [15:0] to_be_relu3; 
wire [15:0] to_be_relu4; 
wire [15:0] to_be_relu5; 
wire [15:0] to_be_relu6; 
wire [15:0] to_be_relu7; 
wire [15:0] to_be_relu8; 
wire [15:0] to_be_relu9; 
wire [15:0] to_be_relu10;
wire [15:0] to_be_relu11;
wire [15:0] to_be_relu12;
wire [15:0] to_be_relu13;
wire [15:0] to_be_relu14;
wire [15:0] to_be_relu15;
wire [15:0] to_be_relu16;
wire [15:0] to_be_relu17;
wire [15:0] to_be_relu18;
wire [15:0] to_be_relu19;
wire [15:0] to_be_relu20;
wire [15:0] to_be_relu21;
wire [15:0] to_be_relu22;
wire [15:0] to_be_relu23;
wire [15:0] to_be_relu24;
wire [15:0] to_be_relu25;
wire [15:0] to_be_relu26;
wire [15:0] to_be_relu27;
wire [15:0] to_be_relu28;
wire [15:0] to_be_relu29;
wire [15:0] to_be_relu30;
wire [15:0] to_be_relu31;
wire [15:0] to_be_relu32;
wire [15:0] to_be_relu33;
wire [15:0] to_be_relu34;
wire [15:0] to_be_relu35;
wire [15:0] to_be_relu36;
wire [15:0] to_be_relu37;
wire [15:0] to_be_relu38;
wire [15:0] to_be_relu39;
wire [15:0] to_be_relu40;
wire [15:0] to_be_relu41;
wire [15:0] to_be_relu42;
wire [15:0] to_be_relu43;
wire [15:0] to_be_relu44;
wire [15:0] to_be_relu45;
wire [15:0] to_be_relu46;
wire [15:0] to_be_relu47;
wire [15:0] to_be_relu48;
wire [15:0] to_be_relu49;
wire [15:0] to_be_relu50;
wire [15:0] to_be_relu51;
wire [15:0] to_be_relu52;
wire [15:0] to_be_relu53;
wire [15:0] to_be_relu54;
wire [15:0] to_be_relu55;
wire [15:0] to_be_relu56;
wire [15:0] to_be_relu57;
wire [15:0] to_be_relu58;
wire [15:0] to_be_relu59;
wire [15:0] to_be_relu60;
wire [15:0] to_be_relu61;
wire [15:0] to_be_relu62;
wire [15:0] to_be_relu63;

pool_unit pool_0(.clk(clk),.rstn(rstn),.mac_out(mac_out_0),.b(b0),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out0),.to_be_relu(to_be_relu0),.now_max(pool_out_0));
pool_unit pool_1(.clk(clk),.rstn(rstn),.mac_out(mac_out_1),.b(b1),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out1),.to_be_relu(to_be_relu1),.now_max(pool_out_1));
pool_unit pool_2(.clk(clk),.rstn(rstn),.mac_out(mac_out_2),.b(b2),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out2),.to_be_relu(to_be_relu2),.now_max(pool_out_2));
pool_unit pool_3(.clk(clk),.rstn(rstn),.mac_out(mac_out_3),.b(b3),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out3),.to_be_relu(to_be_relu3),.now_max(pool_out_3));
pool_unit pool_4(.clk(clk),.rstn(rstn),.mac_out(mac_out_4),.b(b4),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out4),.to_be_relu(to_be_relu4),.now_max(pool_out_4));
pool_unit pool_5(.clk(clk),.rstn(rstn),.mac_out(mac_out_5),.b(b5),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out5),.to_be_relu(to_be_relu5),.now_max(pool_out_5));
pool_unit pool_6(.clk(clk),.rstn(rstn),.mac_out(mac_out_6),.b(b6),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out6),.to_be_relu(to_be_relu6),.now_max(pool_out_6));
pool_unit pool_7(.clk(clk),.rstn(rstn),.mac_out(mac_out_7),.b(b7),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out7),.to_be_relu(to_be_relu7),.now_max(pool_out_7));
pool_unit pool_8(.clk(clk),.rstn(rstn),.mac_out(mac_out_8),.b(b8),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out8),.to_be_relu(to_be_relu8),.now_max(pool_out_8));
pool_unit pool_9(.clk(clk),.rstn(rstn),.mac_out(mac_out_9),.b(b9),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out9),.to_be_relu(to_be_relu9),.now_max(pool_out_9));
pool_unit pool_10(.clk(clk),.rstn(rstn),.mac_out(mac_out_10),.b(b10),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out10),.to_be_relu(to_be_relu10),.now_max(pool_out_10));
pool_unit pool_11(.clk(clk),.rstn(rstn),.mac_out(mac_out_11),.b(b11),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out11),.to_be_relu(to_be_relu11),.now_max(pool_out_11));
pool_unit pool_12(.clk(clk),.rstn(rstn),.mac_out(mac_out_12),.b(b12),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out12),.to_be_relu(to_be_relu12),.now_max(pool_out_12));
pool_unit pool_13(.clk(clk),.rstn(rstn),.mac_out(mac_out_13),.b(b13),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out13),.to_be_relu(to_be_relu13),.now_max(pool_out_13));
pool_unit pool_14(.clk(clk),.rstn(rstn),.mac_out(mac_out_14),.b(b14),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out14),.to_be_relu(to_be_relu14),.now_max(pool_out_14));
pool_unit pool_15(.clk(clk),.rstn(rstn),.mac_out(mac_out_15),.b(b15),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out15),.to_be_relu(to_be_relu15),.now_max(pool_out_15));
pool_unit pool_16(.clk(clk),.rstn(rstn),.mac_out(mac_out_16),.b(b16),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out16),.to_be_relu(to_be_relu16),.now_max(pool_out_16));
pool_unit pool_17(.clk(clk),.rstn(rstn),.mac_out(mac_out_17),.b(b17),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out17),.to_be_relu(to_be_relu17),.now_max(pool_out_17));
pool_unit pool_18(.clk(clk),.rstn(rstn),.mac_out(mac_out_18),.b(b18),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out18),.to_be_relu(to_be_relu18),.now_max(pool_out_18));
pool_unit pool_19(.clk(clk),.rstn(rstn),.mac_out(mac_out_19),.b(b19),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out19),.to_be_relu(to_be_relu19),.now_max(pool_out_19));
pool_unit pool_20(.clk(clk),.rstn(rstn),.mac_out(mac_out_20),.b(b20),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out20),.to_be_relu(to_be_relu20),.now_max(pool_out_20));
pool_unit pool_21(.clk(clk),.rstn(rstn),.mac_out(mac_out_21),.b(b21),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out21),.to_be_relu(to_be_relu21),.now_max(pool_out_21));
pool_unit pool_22(.clk(clk),.rstn(rstn),.mac_out(mac_out_22),.b(b22),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out22),.to_be_relu(to_be_relu22),.now_max(pool_out_22));
pool_unit pool_23(.clk(clk),.rstn(rstn),.mac_out(mac_out_23),.b(b23),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out23),.to_be_relu(to_be_relu23),.now_max(pool_out_23));
pool_unit pool_24(.clk(clk),.rstn(rstn),.mac_out(mac_out_24),.b(b24),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out24),.to_be_relu(to_be_relu24),.now_max(pool_out_24));
pool_unit pool_25(.clk(clk),.rstn(rstn),.mac_out(mac_out_25),.b(b25),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out25),.to_be_relu(to_be_relu25),.now_max(pool_out_25));
pool_unit pool_26(.clk(clk),.rstn(rstn),.mac_out(mac_out_26),.b(b26),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out26),.to_be_relu(to_be_relu26),.now_max(pool_out_26));
pool_unit pool_27(.clk(clk),.rstn(rstn),.mac_out(mac_out_27),.b(b27),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out27),.to_be_relu(to_be_relu27),.now_max(pool_out_27));
pool_unit pool_28(.clk(clk),.rstn(rstn),.mac_out(mac_out_28),.b(b28),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out28),.to_be_relu(to_be_relu28),.now_max(pool_out_28));
pool_unit pool_29(.clk(clk),.rstn(rstn),.mac_out(mac_out_29),.b(b29),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out29),.to_be_relu(to_be_relu29),.now_max(pool_out_29));
pool_unit pool_30(.clk(clk),.rstn(rstn),.mac_out(mac_out_30),.b(b30),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out30),.to_be_relu(to_be_relu30),.now_max(pool_out_30));
pool_unit pool_31(.clk(clk),.rstn(rstn),.mac_out(mac_out_31),.b(b31),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out31),.to_be_relu(to_be_relu31),.now_max(pool_out_31));
pool_unit pool_32(.clk(clk),.rstn(rstn),.mac_out(mac_out_32),.b(b32),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out32),.to_be_relu(to_be_relu32),.now_max(pool_out_32));
pool_unit pool_33(.clk(clk),.rstn(rstn),.mac_out(mac_out_33),.b(b33),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out33),.to_be_relu(to_be_relu33),.now_max(pool_out_33));
pool_unit pool_34(.clk(clk),.rstn(rstn),.mac_out(mac_out_34),.b(b34),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out34),.to_be_relu(to_be_relu34),.now_max(pool_out_34));
pool_unit pool_35(.clk(clk),.rstn(rstn),.mac_out(mac_out_35),.b(b35),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out35),.to_be_relu(to_be_relu35),.now_max(pool_out_35));
pool_unit pool_36(.clk(clk),.rstn(rstn),.mac_out(mac_out_36),.b(b36),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out36),.to_be_relu(to_be_relu36),.now_max(pool_out_36));
pool_unit pool_37(.clk(clk),.rstn(rstn),.mac_out(mac_out_37),.b(b37),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out37),.to_be_relu(to_be_relu37),.now_max(pool_out_37));
pool_unit pool_38(.clk(clk),.rstn(rstn),.mac_out(mac_out_38),.b(b38),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out38),.to_be_relu(to_be_relu38),.now_max(pool_out_38));
pool_unit pool_39(.clk(clk),.rstn(rstn),.mac_out(mac_out_39),.b(b39),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out39),.to_be_relu(to_be_relu39),.now_max(pool_out_39));
pool_unit pool_40(.clk(clk),.rstn(rstn),.mac_out(mac_out_40),.b(b40),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out40),.to_be_relu(to_be_relu40),.now_max(pool_out_40));
pool_unit pool_41(.clk(clk),.rstn(rstn),.mac_out(mac_out_41),.b(b41),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out41),.to_be_relu(to_be_relu41),.now_max(pool_out_41));
pool_unit pool_42(.clk(clk),.rstn(rstn),.mac_out(mac_out_42),.b(b42),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out42),.to_be_relu(to_be_relu42),.now_max(pool_out_42));
pool_unit pool_43(.clk(clk),.rstn(rstn),.mac_out(mac_out_43),.b(b43),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out43),.to_be_relu(to_be_relu43),.now_max(pool_out_43));
pool_unit pool_44(.clk(clk),.rstn(rstn),.mac_out(mac_out_44),.b(b44),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out44),.to_be_relu(to_be_relu44),.now_max(pool_out_44));
pool_unit pool_45(.clk(clk),.rstn(rstn),.mac_out(mac_out_45),.b(b45),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out45),.to_be_relu(to_be_relu45),.now_max(pool_out_45));
pool_unit pool_46(.clk(clk),.rstn(rstn),.mac_out(mac_out_46),.b(b46),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out46),.to_be_relu(to_be_relu46),.now_max(pool_out_46));
pool_unit pool_47(.clk(clk),.rstn(rstn),.mac_out(mac_out_47),.b(b47),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out47),.to_be_relu(to_be_relu47),.now_max(pool_out_47));
pool_unit pool_48(.clk(clk),.rstn(rstn),.mac_out(mac_out_48),.b(b48),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out48),.to_be_relu(to_be_relu48),.now_max(pool_out_48));
pool_unit pool_49(.clk(clk),.rstn(rstn),.mac_out(mac_out_49),.b(b49),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out49),.to_be_relu(to_be_relu49),.now_max(pool_out_49));
pool_unit pool_50(.clk(clk),.rstn(rstn),.mac_out(mac_out_50),.b(b50),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out50),.to_be_relu(to_be_relu50),.now_max(pool_out_50));
pool_unit pool_51(.clk(clk),.rstn(rstn),.mac_out(mac_out_51),.b(b51),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out51),.to_be_relu(to_be_relu51),.now_max(pool_out_51));
pool_unit pool_52(.clk(clk),.rstn(rstn),.mac_out(mac_out_52),.b(b52),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out52),.to_be_relu(to_be_relu52),.now_max(pool_out_52));
pool_unit pool_53(.clk(clk),.rstn(rstn),.mac_out(mac_out_53),.b(b53),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out53),.to_be_relu(to_be_relu53),.now_max(pool_out_53));
pool_unit pool_54(.clk(clk),.rstn(rstn),.mac_out(mac_out_54),.b(b54),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out54),.to_be_relu(to_be_relu54),.now_max(pool_out_54));
pool_unit pool_55(.clk(clk),.rstn(rstn),.mac_out(mac_out_55),.b(b55),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out55),.to_be_relu(to_be_relu55),.now_max(pool_out_55));
pool_unit pool_56(.clk(clk),.rstn(rstn),.mac_out(mac_out_56),.b(b56),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out56),.to_be_relu(to_be_relu56),.now_max(pool_out_56));
pool_unit pool_57(.clk(clk),.rstn(rstn),.mac_out(mac_out_57),.b(b57),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out57),.to_be_relu(to_be_relu57),.now_max(pool_out_57));
pool_unit pool_58(.clk(clk),.rstn(rstn),.mac_out(mac_out_58),.b(b58),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out58),.to_be_relu(to_be_relu58),.now_max(pool_out_58));
pool_unit pool_59(.clk(clk),.rstn(rstn),.mac_out(mac_out_59),.b(b59),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out59),.to_be_relu(to_be_relu59),.now_max(pool_out_59));
pool_unit pool_60(.clk(clk),.rstn(rstn),.mac_out(mac_out_60),.b(b60),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out60),.to_be_relu(to_be_relu60),.now_max(pool_out_60));
pool_unit pool_61(.clk(clk),.rstn(rstn),.mac_out(mac_out_61),.b(b61),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out61),.to_be_relu(to_be_relu61),.now_max(pool_out_61));
pool_unit pool_62(.clk(clk),.rstn(rstn),.mac_out(mac_out_62),.b(b62),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out62),.to_be_relu(to_be_relu62),.now_max(pool_out_62));
pool_unit pool_63(.clk(clk),.rstn(rstn),.mac_out(mac_out_63),.b(b63),.pool_win_done1(pool_win_done1),.status_pool(status_pool),.pool_pad(pool_pad),.status_pool_init(status_pool_init),.relu_out(relu_out63),.to_be_relu(to_be_relu63),.now_max(pool_out_63));


//************************************ Bias ROM ************************************//
wire [10:0] b_addr;
wire [15:0] b_out;
assign b_addr = ~rstn ? 11'b0 : b_base_addr+cnt5_3;

ROM_16bit_1368 b_rom(
    .addra(b_addr),
    .clka(clk),
    .douta(b_out)
);

always@(posedge clk or negedge rstn)begin if(~rstn) b0<=16'b0; else begin if(w_we_0) b0<=b_out; else b0<=b0; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b1<=16'b0; else begin if(w_we_1) b1<=b_out; else b1<=b1; end end     
always@(posedge clk or negedge rstn)begin if(~rstn) b2<=16'b0; else begin if(w_we_2) b2<=b_out; else b2<=b2; end end     
always@(posedge clk or negedge rstn)begin if(~rstn) b3<=16'b0; else begin if(w_we_3) b3<=b_out; else b3<=b3; end end     
always@(posedge clk or negedge rstn)begin if(~rstn) b4<=16'b0; else begin if(w_we_4) b4<=b_out; else b4<=b4; end end     
always@(posedge clk or negedge rstn)begin if(~rstn) b5<=16'b0; else begin if(w_we_5) b5<=b_out; else b5<=b5; end end     
always@(posedge clk or negedge rstn)begin if(~rstn) b6<=16'b0; else begin if(w_we_6) b6<=b_out; else b6<=b6; end end     
always@(posedge clk or negedge rstn)begin if(~rstn) b7<=16'b0; else begin if(w_we_7) b7<=b_out; else b7<=b7; end end     
always@(posedge clk or negedge rstn)begin if(~rstn) b8<=16'b0; else begin if(w_we_8) b8<=b_out; else b8<=b8; end end     
always@(posedge clk or negedge rstn)begin if(~rstn) b9<=16'b0; else begin if(w_we_9) b9<=b_out; else b9<=b9; end end     
always@(posedge clk or negedge rstn)begin if(~rstn) b10<=16'b0; else begin if(w_we_10) b10<=b_out; else b10<=b10; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b11<=16'b0; else begin if(w_we_11) b11<=b_out; else b11<=b11; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b12<=16'b0; else begin if(w_we_12) b12<=b_out; else b12<=b12; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b13<=16'b0; else begin if(w_we_13) b13<=b_out; else b13<=b13; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b14<=16'b0; else begin if(w_we_14) b14<=b_out; else b14<=b14; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b15<=16'b0; else begin if(w_we_15) b15<=b_out; else b15<=b15; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b16<=16'b0; else begin if(w_we_16) b16<=b_out; else b16<=b16; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b17<=16'b0; else begin if(w_we_17) b17<=b_out; else b17<=b17; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b18<=16'b0; else begin if(w_we_18) b18<=b_out; else b18<=b18; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b19<=16'b0; else begin if(w_we_19) b19<=b_out; else b19<=b19; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b20<=16'b0; else begin if(w_we_20) b20<=b_out; else b20<=b20; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b21<=16'b0; else begin if(w_we_21) b21<=b_out; else b21<=b21; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b22<=16'b0; else begin if(w_we_22) b22<=b_out; else b22<=b22; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b23<=16'b0; else begin if(w_we_23) b23<=b_out; else b23<=b23; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b24<=16'b0; else begin if(w_we_24) b24<=b_out; else b24<=b24; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b25<=16'b0; else begin if(w_we_25) b25<=b_out; else b25<=b25; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b26<=16'b0; else begin if(w_we_26) b26<=b_out; else b26<=b26; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b27<=16'b0; else begin if(w_we_27) b27<=b_out; else b27<=b27; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b28<=16'b0; else begin if(w_we_28) b28<=b_out; else b28<=b28; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b29<=16'b0; else begin if(w_we_29) b29<=b_out; else b29<=b29; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b30<=16'b0; else begin if(w_we_30) b30<=b_out; else b30<=b30; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b31<=16'b0; else begin if(w_we_31) b31<=b_out; else b31<=b31; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b32<=16'b0; else begin if(w_we_32) b32<=b_out; else b32<=b32; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b33<=16'b0; else begin if(w_we_33) b33<=b_out; else b33<=b33; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b34<=16'b0; else begin if(w_we_34) b34<=b_out; else b34<=b34; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b35<=16'b0; else begin if(w_we_35) b35<=b_out; else b35<=b35; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b36<=16'b0; else begin if(w_we_36) b36<=b_out; else b36<=b36; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b37<=16'b0; else begin if(w_we_37) b37<=b_out; else b37<=b37; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b38<=16'b0; else begin if(w_we_38) b38<=b_out; else b38<=b38; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b39<=16'b0; else begin if(w_we_39) b39<=b_out; else b39<=b39; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b40<=16'b0; else begin if(w_we_40) b40<=b_out; else b40<=b40; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b41<=16'b0; else begin if(w_we_41) b41<=b_out; else b41<=b41; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b42<=16'b0; else begin if(w_we_42) b42<=b_out; else b42<=b42; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b43<=16'b0; else begin if(w_we_43) b43<=b_out; else b43<=b43; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b44<=16'b0; else begin if(w_we_44) b44<=b_out; else b44<=b44; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b45<=16'b0; else begin if(w_we_45) b45<=b_out; else b45<=b45; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b46<=16'b0; else begin if(w_we_46) b46<=b_out; else b46<=b46; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b47<=16'b0; else begin if(w_we_47) b47<=b_out; else b47<=b47; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b48<=16'b0; else begin if(w_we_48) b48<=b_out; else b48<=b48; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b49<=16'b0; else begin if(w_we_49) b49<=b_out; else b49<=b49; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b50<=16'b0; else begin if(w_we_50) b50<=b_out; else b50<=b50; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b51<=16'b0; else begin if(w_we_51) b51<=b_out; else b51<=b51; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b52<=16'b0; else begin if(w_we_52) b52<=b_out; else b52<=b52; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b53<=16'b0; else begin if(w_we_53) b53<=b_out; else b53<=b53; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b54<=16'b0; else begin if(w_we_54) b54<=b_out; else b54<=b54; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b55<=16'b0; else begin if(w_we_55) b55<=b_out; else b55<=b55; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b56<=16'b0; else begin if(w_we_56) b56<=b_out; else b56<=b56; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b57<=16'b0; else begin if(w_we_57) b57<=b_out; else b57<=b57; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b58<=16'b0; else begin if(w_we_58) b58<=b_out; else b58<=b58; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b59<=16'b0; else begin if(w_we_59) b59<=b_out; else b59<=b59; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b60<=16'b0; else begin if(w_we_60) b60<=b_out; else b60<=b60; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b61<=16'b0; else begin if(w_we_61) b61<=b_out; else b61<=b61; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b62<=16'b0; else begin if(w_we_62) b62<=b_out; else b62<=b62; end end
always@(posedge clk or negedge rstn)begin if(~rstn) b63<=16'b0; else begin if(w_we_63) b63<=b_out; else b63<=b63; end end


//************************************ Returning Results ************************************//
reg [5:0] cnt11,cnt12,cnt13; //final output w,h and rd which mac buff
//! cnt11~12 already take output padding units into consideration
wire [5:0] base_cnt11_max,base_cnt12_max,cnt13_max;
//! "base" means that we don't consider output padding
assign cnt13_max=delta_Nof;
assign base_cnt11_max = is_pool&status_back ? cnt9_max : out_side-1'b1;
assign base_cnt12_max = is_pool&status_back ? cnt10_max : out_side-1'b1;

reg [5:0] cnt11_max,cnt12_max; //! the real w,h when taking output padding into consideration
always@(*)
begin
    case(pad_style)
        4'hc:   begin cnt11_max=base_cnt11_max+1'b1;  cnt12_max=base_cnt12_max+1'b1;   end
        4'h4:   begin cnt11_max=base_cnt11_max;       cnt12_max=base_cnt12_max+1'b1;   end
        4'h6:   begin cnt11_max=base_cnt11_max+1'b1;  cnt12_max=base_cnt12_max+1'b1;   end
        4'h8:   begin cnt11_max=base_cnt11_max+1'b1;  cnt12_max=base_cnt12_max;        end
        4'h0:   begin cnt11_max=base_cnt11_max;       cnt12_max=base_cnt12_max;        end
        4'h2:   begin cnt11_max=base_cnt11_max+1'b1;  cnt12_max=base_cnt12_max;        end
        4'h9:   begin cnt11_max=base_cnt11_max+1'b1;  cnt12_max=base_cnt12_max+1'b1;   end
        4'h1:   begin cnt11_max=base_cnt11_max;       cnt12_max=base_cnt12_max+1'b1;   end
        4'h3:   begin cnt11_max=base_cnt11_max+1'b1;  cnt12_max=base_cnt12_max+1'b1;   end
        4'hf:   begin cnt11_max=base_cnt11_max+2'b10; cnt12_max=base_cnt12_max+2'b10;  end
        default:begin cnt11_max=base_cnt11_max;       cnt12_max=base_cnt12_max;        end
    endcase
end

reg out_pad; //when to output padding
always@(*)
begin
    case(pad_style)
        4'hc:   begin out_pad=((cnt11==0)|(cnt12==0));                                        end
        4'h4:   begin out_pad=(cnt12==0);                                                     end
        4'h6:   begin out_pad=((cnt11==cnt11_max)|(cnt12==0));                                end
        4'h8:   begin out_pad=(cnt11==0);                                                     end
        4'h0:   begin out_pad=1'b0;                                                           end
        4'h2:   begin out_pad=(cnt11==cnt11_max);                                             end
        4'h9:   begin out_pad=((cnt11==0)|(cnt12==cnt12_max));                                end
        4'h1:   begin out_pad=(cnt12==cnt12_max);                                             end
        4'h3:   begin out_pad=((cnt11==cnt11_max)|(cnt12==cnt12_max));                        end
        4'hf:   begin out_pad=((cnt11==0)|(cnt11==cnt11_max)|(cnt12==0)|(cnt12==cnt12_max));  end
        default:begin out_pad=1'b0;                                                           end
    endcase
end

reg out_pad1;
always@(posedge clk or negedge rstn) //delay one cycle,for rd_data can be obtained in the next cycle
begin
    if(~rstn) out_pad1<=1'b0;
    else out_pad1<=out_pad;
end

wire cnt11_full,cnt12_full,cnt13_full;
assign cnt11_full=(cnt11==cnt11_max)&ready;
assign cnt12_full=(cnt12==cnt12_max)&cnt11_full;
assign cnt13_full=(cnt13==cnt13_max)&cnt12_full;

always@(posedge clk or negedge rstn)
begin
    if(~rstn) cnt11<=6'b0;
    else
    begin
        if(status_back|status_pre_back)
        begin
            if(cnt11_full) cnt11<=6'b0;
            else if(ready) cnt11<=cnt11+1'b1;
            else cnt11<=cnt11;
        end
        else cnt11<=6'b0;
    end
end

always@(posedge clk or negedge rstn)
begin
    if(~rstn) cnt12<=6'b0;
    else
    begin
        if(status_back|status_pre_back)
        begin
            if(cnt12_full) cnt12<=6'b0;
            else if(cnt11_full) cnt12<=cnt12+1'b1;
            else cnt12<=cnt12;
        end
        else cnt12<=6'b0;
    end
end

always@(posedge clk or negedge rstn)
begin
    if(~rstn) cnt13<=6'b0;
    else
    begin
        if(status_back|status_pre_back)
        begin
            if(cnt13_full) cnt13<=6'b0;
            else if(cnt12_full) cnt13<=cnt13+1'b1;
            else cnt13<=cnt13;
        end
        else cnt13<=6'b0;
    end
end

reg [5:0] cnt13_1;
always@(posedge clk) //delay one cycle,for rd_data can be obtained in the next cycle
begin
    cnt13_1<=cnt13;
end

reg back_done;
always@(posedge clk) //delay one cycle,for rd_data can be obtained in the next cycle
begin
    back_done<=cnt13_full;
end

assign mac_back_addr =  (pad_style==4'hc)|(pad_style==4'hf) ? (cnt12-1'b1)*(base_cnt11_max+1'b1)+(cnt11-1'b1) : (
                        (pad_style==4'h4)|(pad_style==4'h6) ? (cnt12-1'b1)*(base_cnt11_max+1'b1)+cnt11        : (
                        (pad_style==4'h8)|(pad_style==4'h9) ? cnt12*(base_cnt11_max+1'b1)+(cnt11-1'b1) : cnt12*(base_cnt11_max+1'b1)+cnt11));

wire [15:0] result0; assign result0 = bottom ? to_be_relu0 : (is_pool&status_back ? mac_out_0 : relu_out0);
wire [15:0] result1; assign result1 = bottom ? to_be_relu1 : (is_pool&status_back ? mac_out_1 : relu_out1);
wire [15:0] result2; assign result2 = bottom ? to_be_relu2 : (is_pool&status_back ? mac_out_2 : relu_out2);
wire [15:0] result3; assign result3 = bottom ? to_be_relu3 : (is_pool&status_back ? mac_out_3 : relu_out3);
wire [15:0] result4; assign result4 = bottom ? to_be_relu4 : (is_pool&status_back ? mac_out_4 : relu_out4);
wire [15:0] result5; assign result5 = bottom ? to_be_relu5 : (is_pool&status_back ? mac_out_5 : relu_out5);
wire [15:0] result6; assign result6 = bottom ? to_be_relu6 : (is_pool&status_back ? mac_out_6 : relu_out6);
wire [15:0] result7; assign result7 = bottom ? to_be_relu7 : (is_pool&status_back ? mac_out_7 : relu_out7);
wire [15:0] result8; assign result8 = bottom ? to_be_relu8 : (is_pool&status_back ? mac_out_8 : relu_out8);
wire [15:0] result9; assign result9 = bottom ? to_be_relu9 : (is_pool&status_back ? mac_out_9 : relu_out9);
wire [15:0] result10; assign result10 = bottom ? to_be_relu10 : (is_pool&status_back ? mac_out_10 : relu_out10);
wire [15:0] result11; assign result11 = bottom ? to_be_relu11 : (is_pool&status_back ? mac_out_11 : relu_out11);
wire [15:0] result12; assign result12 = bottom ? to_be_relu12 : (is_pool&status_back ? mac_out_12 : relu_out12);
wire [15:0] result13; assign result13 = bottom ? to_be_relu13 : (is_pool&status_back ? mac_out_13 : relu_out13);
wire [15:0] result14; assign result14 = bottom ? to_be_relu14 : (is_pool&status_back ? mac_out_14 : relu_out14);
wire [15:0] result15; assign result15 = bottom ? to_be_relu15 : (is_pool&status_back ? mac_out_15 : relu_out15);
wire [15:0] result16; assign result16 = bottom ? to_be_relu16 : (is_pool&status_back ? mac_out_16 : relu_out16);
wire [15:0] result17; assign result17 = bottom ? to_be_relu17 : (is_pool&status_back ? mac_out_17 : relu_out17);
wire [15:0] result18; assign result18 = bottom ? to_be_relu18 : (is_pool&status_back ? mac_out_18 : relu_out18);
wire [15:0] result19; assign result19 = bottom ? to_be_relu19 : (is_pool&status_back ? mac_out_19 : relu_out19);
wire [15:0] result20; assign result20 = bottom ? to_be_relu20 : (is_pool&status_back ? mac_out_20 : relu_out20);
wire [15:0] result21; assign result21 = bottom ? to_be_relu21 : (is_pool&status_back ? mac_out_21 : relu_out21);
wire [15:0] result22; assign result22 = bottom ? to_be_relu22 : (is_pool&status_back ? mac_out_22 : relu_out22);
wire [15:0] result23; assign result23 = bottom ? to_be_relu23 : (is_pool&status_back ? mac_out_23 : relu_out23);
wire [15:0] result24; assign result24 = bottom ? to_be_relu24 : (is_pool&status_back ? mac_out_24 : relu_out24);
wire [15:0] result25; assign result25 = bottom ? to_be_relu25 : (is_pool&status_back ? mac_out_25 : relu_out25);
wire [15:0] result26; assign result26 = bottom ? to_be_relu26 : (is_pool&status_back ? mac_out_26 : relu_out26);
wire [15:0] result27; assign result27 = bottom ? to_be_relu27 : (is_pool&status_back ? mac_out_27 : relu_out27);
wire [15:0] result28; assign result28 = bottom ? to_be_relu28 : (is_pool&status_back ? mac_out_28 : relu_out28);
wire [15:0] result29; assign result29 = bottom ? to_be_relu29 : (is_pool&status_back ? mac_out_29 : relu_out29);
wire [15:0] result30; assign result30 = bottom ? to_be_relu30 : (is_pool&status_back ? mac_out_30 : relu_out30);
wire [15:0] result31; assign result31 = bottom ? to_be_relu31 : (is_pool&status_back ? mac_out_31 : relu_out31);
wire [15:0] result32; assign result32 = bottom ? to_be_relu32 : (is_pool&status_back ? mac_out_32 : relu_out32);
wire [15:0] result33; assign result33 = bottom ? to_be_relu33 : (is_pool&status_back ? mac_out_33 : relu_out33);
wire [15:0] result34; assign result34 = bottom ? to_be_relu34 : (is_pool&status_back ? mac_out_34 : relu_out34);
wire [15:0] result35; assign result35 = bottom ? to_be_relu35 : (is_pool&status_back ? mac_out_35 : relu_out35);
wire [15:0] result36; assign result36 = bottom ? to_be_relu36 : (is_pool&status_back ? mac_out_36 : relu_out36);
wire [15:0] result37; assign result37 = bottom ? to_be_relu37 : (is_pool&status_back ? mac_out_37 : relu_out37);
wire [15:0] result38; assign result38 = bottom ? to_be_relu38 : (is_pool&status_back ? mac_out_38 : relu_out38);
wire [15:0] result39; assign result39 = bottom ? to_be_relu39 : (is_pool&status_back ? mac_out_39 : relu_out39);
wire [15:0] result40; assign result40 = bottom ? to_be_relu40 : (is_pool&status_back ? mac_out_40 : relu_out40);
wire [15:0] result41; assign result41 = bottom ? to_be_relu41 : (is_pool&status_back ? mac_out_41 : relu_out41);
wire [15:0] result42; assign result42 = bottom ? to_be_relu42 : (is_pool&status_back ? mac_out_42 : relu_out42);
wire [15:0] result43; assign result43 = bottom ? to_be_relu43 : (is_pool&status_back ? mac_out_43 : relu_out43);
wire [15:0] result44; assign result44 = bottom ? to_be_relu44 : (is_pool&status_back ? mac_out_44 : relu_out44);
wire [15:0] result45; assign result45 = bottom ? to_be_relu45 : (is_pool&status_back ? mac_out_45 : relu_out45);
wire [15:0] result46; assign result46 = bottom ? to_be_relu46 : (is_pool&status_back ? mac_out_46 : relu_out46);
wire [15:0] result47; assign result47 = bottom ? to_be_relu47 : (is_pool&status_back ? mac_out_47 : relu_out47);
wire [15:0] result48; assign result48 = bottom ? to_be_relu48 : (is_pool&status_back ? mac_out_48 : relu_out48);
wire [15:0] result49; assign result49 = bottom ? to_be_relu49 : (is_pool&status_back ? mac_out_49 : relu_out49);
wire [15:0] result50; assign result50 = bottom ? to_be_relu50 : (is_pool&status_back ? mac_out_50 : relu_out50);
wire [15:0] result51; assign result51 = bottom ? to_be_relu51 : (is_pool&status_back ? mac_out_51 : relu_out51);
wire [15:0] result52; assign result52 = bottom ? to_be_relu52 : (is_pool&status_back ? mac_out_52 : relu_out52);
wire [15:0] result53; assign result53 = bottom ? to_be_relu53 : (is_pool&status_back ? mac_out_53 : relu_out53);
wire [15:0] result54; assign result54 = bottom ? to_be_relu54 : (is_pool&status_back ? mac_out_54 : relu_out54);
wire [15:0] result55; assign result55 = bottom ? to_be_relu55 : (is_pool&status_back ? mac_out_55 : relu_out55);
wire [15:0] result56; assign result56 = bottom ? to_be_relu56 : (is_pool&status_back ? mac_out_56 : relu_out56);
wire [15:0] result57; assign result57 = bottom ? to_be_relu57 : (is_pool&status_back ? mac_out_57 : relu_out57);
wire [15:0] result58; assign result58 = bottom ? to_be_relu58 : (is_pool&status_back ? mac_out_58 : relu_out58);
wire [15:0] result59; assign result59 = bottom ? to_be_relu59 : (is_pool&status_back ? mac_out_59 : relu_out59);
wire [15:0] result60; assign result60 = bottom ? to_be_relu60 : (is_pool&status_back ? mac_out_60 : relu_out60);
wire [15:0] result61; assign result61 = bottom ? to_be_relu61 : (is_pool&status_back ? mac_out_61 : relu_out61);
wire [15:0] result62; assign result62 = bottom ? to_be_relu62 : (is_pool&status_back ? mac_out_62 : relu_out62);
wire [15:0] result63; assign result63 = bottom ? to_be_relu63 : (is_pool&status_back ? mac_out_63 : relu_out63);

reg [15:0] out_bus1; //the outbus before padding
always@(*)
begin
    case(cnt13_1)
        0: begin out_bus1=result0; end
        1: begin out_bus1=result1; end
        2: begin out_bus1=result2; end
        3: begin out_bus1=result3; end
        4: begin out_bus1=result4; end
        5: begin out_bus1=result5; end
        6: begin out_bus1=result6; end
        7: begin out_bus1=result7; end
        8: begin out_bus1=result8; end
        9: begin out_bus1=result9; end
        10: begin out_bus1=result10; end
        11: begin out_bus1=result11; end
        12: begin out_bus1=result12; end
        13: begin out_bus1=result13; end
        14: begin out_bus1=result14; end
        15: begin out_bus1=result15; end
        16: begin out_bus1=result16; end
        17: begin out_bus1=result17; end
        18: begin out_bus1=result18; end
        19: begin out_bus1=result19; end
        20: begin out_bus1=result20; end
        21: begin out_bus1=result21; end
        22: begin out_bus1=result22; end
        23: begin out_bus1=result23; end
        24: begin out_bus1=result24; end
        25: begin out_bus1=result25; end
        26: begin out_bus1=result26; end
        27: begin out_bus1=result27; end
        28: begin out_bus1=result28; end
        29: begin out_bus1=result29; end
        30: begin out_bus1=result30; end
        31: begin out_bus1=result31; end
        32: begin out_bus1=result32; end
        33: begin out_bus1=result33; end
        34: begin out_bus1=result34; end
        35: begin out_bus1=result35; end
        36: begin out_bus1=result36; end
        37: begin out_bus1=result37; end
        38: begin out_bus1=result38; end
        39: begin out_bus1=result39; end
        40: begin out_bus1=result40; end
        41: begin out_bus1=result41; end
        42: begin out_bus1=result42; end
        43: begin out_bus1=result43; end
        44: begin out_bus1=result44; end
        45: begin out_bus1=result45; end
        46: begin out_bus1=result46; end
        47: begin out_bus1=result47; end
        48: begin out_bus1=result48; end
        49: begin out_bus1=result49; end
        50: begin out_bus1=result50; end
        51: begin out_bus1=result51; end
        52: begin out_bus1=result52; end
        53: begin out_bus1=result53; end
        54: begin out_bus1=result54; end
        55: begin out_bus1=result55; end
        56: begin out_bus1=result56; end
        57: begin out_bus1=result57; end
        58: begin out_bus1=result58; end
        59: begin out_bus1=result59; end
        60: begin out_bus1=result60; end
        61: begin out_bus1=result61; end
        62: begin out_bus1=result62; end
        63: begin out_bus1=result63; end        
        default: begin out_bus1=result0; end   
    endcase
end

reg [15:0] out_reg; //to hold the output when ready==0
always@(posedge clk or negedge rstn)
begin
    if(~rstn) out_reg<=16'b0;
    else if(~ready1) out_reg<=out_reg;
    else out_reg<=out_bus2;
end

wire [15:0] out_bus2;
assign out_bus2 = out_pad1 ? 16'b0 : out_bus1;
assign out_bus = ready1 ? out_bus2 : out_reg;
endmodule