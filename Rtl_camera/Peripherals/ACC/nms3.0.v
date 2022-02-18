//This design has taken HREADY LOW from DDR into consideration
//! sift state uses inner FSM
//! decode state uses inner FSM
//! exponential function multi-latency
module nms(
    //General ports
    input    wire            clk,
    input    wire            rstn,
    input    wire            start,
    input    wire            ready, //! HREADYOUTM from DDR
    output   wire            rd, //! related to HTRANSM, when to rd data from DDR
    input    wire            await_done, //! after CPU reading result, give me this signal

    //Bus
    input    wire   [15:0]   in_bus,
    input    wire   [7:0]    s_addr1, //! delayed HADDRS[7:0] of ACC
    output   wire   [31:0]   n_rt_addr, //! HADDRM to DDR
    output   reg    [31:0]   final_result, //! HRDATAS of ACC

    //Satus
    output   reg    [2:0]    status,

    //Interrupt request
    output   wire            no_face_detected, //! interrupt request: tell CPU no face detected
    output   wire            you_can_rd_result //! interrupt request: tell CPU to occupy bus and read results 
);

//base addr of R0,R1
parameter sift_start_addr=32'h41370000; //base addr to cls
parameter rloc_start_addr=32'h4137BAA0; //base addr to loc

//nms status 
parameter idle=3'b000;
parameter sift=3'b001;
parameter judge=3'b010;
parameter sort=3'b011;
parameter decode=3'b100;
parameter nms=3'b101;
parameter await=3'b110;

//size of the original image
parameter width=320;
parameter height=240;


assign  n_rt_addr = (status==sift) ? sift_addr : (
                    (status==decode) ? decode_addr : 32'b0);

assign rd = (status==sift) ? sift_rd : (
            (status==decode) ? decode_rd : 1'b0);

// assign rd = (status == sift) | (status == decode);

assign no_face_detected = (status==judge) & no_face; 
assign you_can_rd_result = (status==nms) & nms_done;


//************************************ General FSM ************************************//
wire [2:0] nxt_status;
always@(posedge clk or negedge rstn)
begin
    if(~rstn) status<=idle;
    else status<=nxt_status;
end

wire no_face = (remain_num==0);
assign nxt_status = (status==idle)   &  start        ?   sift   : (
                    (status==sift)   &  sift_done    ?   judge  : (
                    (status==judge)  &  no_face      ?   idle   : (
                    (status==judge)  &  (~no_face)   ?   sort   : (
                    (status==sort)   &  sort_done    ?   decode : (
                    (status==decode) &  decode_done  ?   nms    : (
                    (status==nms)    &  nms_done     ?   await  : (
                    (status==await)  &  await_done   ?   idle   : status )))))));


//************************************ Sift Confidences And Indexes ************************************//
parameter  IDLE     =  3'h000;
parameter  FIRST    =  3'b001;
parameter  SECOND   =  3'b010;
parameter  WAIT     =  3'b011;
parameter  COMPARE  =  3'b100;
parameter  ABSORB   =  3'b101;

reg  [2:0] SiftState;
wire [2:0] nxt_SiftState;

always@(posedge clk or negedge rstn)
begin
    if(~rstn) SiftState<=IDLE;
    else SiftState<=nxt_SiftState;
end

assign  nxt_SiftState = sift_done                               ?  IDLE    : (
                        (SiftState == IDLE) & (status == sift)  ?  FIRST   : (
                        (SiftState == FIRST) & ready            ?  SECOND  : (
                        (SiftState == SECOND) & ready           ?  WAIT    : (
                        (SiftState == WAIT) & ready             ?  COMPARE : (
                        (SiftState == COMPARE) & retain         ?  ABSORB  : (
                        (SiftState == COMPARE) & (~retain)      ?  FIRST   : (
                        (SiftState == ABSORB)                   ?  FIRST   : SiftState)))))));

reg [15:0] SiftReg0,SiftReg1;

always@(posedge clk or negedge rstn)
begin
    if(~rstn) SiftReg0<=0;
    else if((SiftState == SECOND) & ready) SiftReg0<=in_bus;
end

always@(posedge clk or negedge rstn)
begin
    if(~rstn) SiftReg1<=0;
    else if((SiftState == WAIT) & ready) SiftReg1<=in_bus;
end


reg SiftReg1_Larger; //represent the index of the larger number
always@(*)
begin
    casez({SiftReg1[15],SiftReg0[15]})
        2'b00: SiftReg1_Larger = (SiftReg1[14:0] > SiftReg0[14:0]);
        2'b01: SiftReg1_Larger = 1'b1;
        default: SiftReg1_Larger = 1'b0;
    endcase
end

wire [15:0] larger_cls;
assign larger_cls = SiftReg1_Larger ? SiftReg1 : SiftReg0;

wire retain; //whether to retain present larger_cls
assign retain = ~larger_cls[15];


reg [12:0] idx_cnt;
reg [4:0] remain_num;
always@(posedge clk or negedge rstn)
begin
    if(~rstn) idx_cnt <= 0;
    else if(status == sift)
    begin
        if((SiftState == COMPARE) & (~retain) | (SiftState == ABSORB))
            idx_cnt <= idx_cnt + 1;
        else idx_cnt <= idx_cnt;
    end
    else idx_cnt <= 0;
end

always@(posedge clk or negedge rstn)
begin
    if(~rstn) remain_num <= 0;
    else if(status == idle) remain_num <= 0;
    else if(status == sift)
    begin
        if(SiftState == ABSORB) remain_num <= remain_num + 1;
        else remain_num <= remain_num;
    end
    else remain_num <= remain_num;
end


wire cls_idx_buff_we;
assign cls_idx_buff_we = (status==sift) ? (SiftState == ABSORB) : (
                         (status==sort) ? swap : 1'b0);

wire [4:0] cls_idx_buff_addr;
assign  cls_idx_buff_addr = (status==sift) ? remain_num : (
                            (status==sort) ? real_sort_addr : (
                            (status==decode) ? decode_idx_addr : 5'b0));

wire [14:0] cls_buff_din;
wire [13:0] idx_buff_din;

assign cls_buff_din  =  (status==sift) ? larger_cls : (
                        (status==sort) ? reg2 : 15'b0);

assign idx_buff_din  =  (status==sift) ? {SiftReg1_Larger,idx_cnt} : (
                        (status==sort) ? reg4 : 15'b0);

wire [14:0] cls_buff_dout;
RAM_15bit_32  cls_buff( 
//? MSB of the 16bit number must be 0,which we donnot care
    .clk(clk),
    .a(cls_idx_buff_addr),
    .d(cls_buff_din),
    .qspo(cls_buff_dout),
    .we(cls_idx_buff_we));

wire [13:0] idx_buff_dout;
RAM_14bit_32  idx_buff( 
//? 13: transversal index of the cls,0 or 1
//? 12-0: longitudinal index of the cls,0 to 5971
    .clk(clk),
    .a(cls_idx_buff_addr),
    .d(idx_buff_din),
    .qspo(idx_buff_dout),
    .we(cls_idx_buff_we));

wire [31:0] sift_addr;
assign sift_addr = sift_start_addr + (idx_cnt<<3) + (which_cls<<2); //? the rd addr when sifting

wire which_cls;
assign which_cls = (SiftState == FIRST) ? 1'b0 : 1'b1;

wire sift_rd;
assign sift_rd = ((SiftState == FIRST) | (SiftState == SECOND) | (SiftState == WAIT)) & (~sift_done); //? related to HTRANS


wire sift_done;
assign sift_done=(idx_cnt==5972);



//************************************ Sort By Confidences ************************************//
reg swap; 
wire nxt_swap;
always@(posedge clk or negedge rstn) //FSM
begin
    if(~rstn) swap<=1'b0;
    else swap<=nxt_swap;
end

assign nxt_swap  =  (~swap)&to_swap ? 1'b1 : (
                    swap&cnt1 ? 1'b0 : swap);

reg cnt1; //count in every bubble and every swapping
always@(posedge clk or negedge rstn)
begin
    if(~rstn) cnt1<=1'b0;
    else
    begin
        if((status==sort))
        begin
            if(~cnt1) cnt1<=~cnt1;
            else if(swap&cnt1|(~swap)&compare2) cnt1<=~cnt1;
            else cnt1<=cnt1;
        end
        else cnt1<=1'b0;
    end
end

reg cnt2; //generate compare2
always@(posedge clk or negedge rstn)
begin
    if(~rstn) cnt2<=1'b0;
    else
    begin
        if((~swap)&cnt1) cnt2<=~cnt2;
        else cnt2<=1'b0;
    end
end

wire compare2; //when to compare two numbers in a bubble
assign compare2 = (status==sort)&cnt2 ? 1'b1 : 1'b0;

reg [4:0] sort_addr; //raw addr to cls_buff and idx_buff
always@(posedge clk or negedge rstn)
begin
    if(~rstn) sort_addr<=5'b0;
    else 
    begin
        if(status==sort)
        begin
            if(sort_addr_full) sort_addr<=5'b0;
            else if((~cnt1)&(~swap)) sort_addr<=sort_addr+1'b1;
            else sort_addr<=sort_addr;
        end
        else sort_addr<=5'b0;
    end
end

wire sort_addr_full; //a bubble has risen to the top
assign sort_addr_full = (sort_addr==rise_len)&((~swap)&(~to_swap)&compare2|swap&cnt1);

reg [14:0] reg1,reg2; //output register for cls_buff
reg [13:0] reg3,reg4; //output register for idx_buff

always@(posedge clk or negedge rstn)
begin
    if(~rstn) 
    begin
        reg1<=15'b0; reg2<=15'b0;
        reg3<=14'b0; reg4<=14'b0;
    end
    else
    begin
        if(status==sort)
        begin
            reg1<=cls_buff_dout; reg2<=reg1;
            reg3<=idx_buff_dout; reg4<=reg3;
        end
        else
        begin
            reg1<=15'b0; reg2<=15'b0;
            reg3<=14'b0; reg4<=14'b0;           
        end
    end
end

wire to_swap; //whether to swap two numbers
assign to_swap = compare2 ? (reg1<cls_buff_dout) : 1'b0;

wire [4:0] real_sort_addr; //real addr to cls_buff and idx_buff
assign real_sort_addr = swap&cnt1 ? sort_addr-1'b1 : sort_addr;

reg [4:0] rise_len;
always@(posedge clk or negedge rstn)
begin
    if(~rstn) rise_len<=5'b0;
    else
    begin
        if(status==sort)
        begin
            if(sort_addr_full) rise_len<=rise_len-1'b1;
            else rise_len<=rise_len;
        end
        else rise_len<=remain_num-1'b1;
    end
end

wire sort_done;
assign sort_done = (rise_len==1)&sort_addr_full;



//************************************ Decode Boxes By Anchors ************************************//
parameter  INIT    =  4'h0;
parameter  ADDR0   =  4'h1;
parameter  ADDR1   =  4'h2;
parameter  ADDR2   =  4'h3;
parameter  ADDR3   =  4'h4;
parameter  WAIT1   =  4'h5;
parameter  INSERT0 =  4'h6;
parameter  INSERT1 =  4'h7;
parameter  WRITE   =  4'h8;

reg  [3:0] DecodeState;
wire [3:0] nxt_DecodeState;
always@(posedge clk or negedge rstn)
begin
    if(~rstn) DecodeState <= INIT;
    else DecodeState <= nxt_DecodeState;
end

assign nxt_DecodeState = decode_done         ?   INIT     : (
                        (DecodeState == INIT) 
                        & (status == decode) ?   ADDR0    : (
                        DecodeStateInd[0]    ?   ADDR1    : (
                        DecodeStateInd[1]    ?   ADDR2    : (
                        DecodeStateInd[2]    ?   ADDR3    : (
                        DecodeStateInd[3]    ?   WAIT1    : (
                        DecodeStateInd[4]    ?   INSERT0  : (
                        DecodeStateInd[5]    ?   INSERT1  : (
                        DecodeStateInd[6]    ?   WRITE    : (
                        DecodeStateInd[7]    ?   ADDR0    : DecodeState ))))))))); 


wire [7:0] DecodeStateInd; //8 signals to indict the done_signal of each decodestate
assign DecodeStateInd[0] = (DecodeState == ADDR0) & ready;
assign DecodeStateInd[1] = (DecodeState == ADDR1) & ready;
assign DecodeStateInd[2] = (DecodeState == ADDR2) & ready;
assign DecodeStateInd[3] = (DecodeState == ADDR3) & exp_out_valid;
assign DecodeStateInd[4] = (DecodeState == WAIT1) & exp_out_valid;
assign DecodeStateInd[5] = (DecodeState == INSERT0);
assign DecodeStateInd[6] = (DecodeState == INSERT1);
assign DecodeStateInd[7] =  DecodeState[3];


reg [4:0] decode_idx_addr; //the addr to idx_RAM when decoding
always@(posedge clk or negedge rstn)
begin
    if(~rstn) decode_idx_addr <= 0;
    else 
    begin
        if(DecodeState == INIT) 
            decode_idx_addr <= 0;
        else if(DecodeStateInd[6]) 
            decode_idx_addr <=decode_idx_addr + 1'b1;
        else
            decode_idx_addr <= decode_idx_addr;
    end
end

wire [1:0] which_loc;
wire [31:0] decode_addr;

assign decode_addr = rloc_start_addr + (idx_buff_dout[12:0]<<4) + (which_loc<<2); //? the DDR addr when decoding boxes

assign  which_loc = (DecodeState == ADDR0) ? 2'b00 : (
                    (DecodeState == ADDR1) ? 2'b01 : (
                    (DecodeState == ADDR2) ? 2'b10 : (
                    (DecodeState == ADDR3) ? 2'b11 : 2'b00)));

wire [13:0] anchor_rom_addr;
assign anchor_rom_addr = (idx_buff_dout[12:0]<<1) + which_loc[0];

reg WaitExp; //when WaitExp is high, it indicates that ExpResult has not come out
always@(posedge clk or negedge rstn)
begin
    if(~rstn) WaitExp <= 1'b0;
    else if(DecodeStateInd[3] | DecodeStateInd[4]) WaitExp <= 1'b0;
    else if(((DecodeState == ADDR3) | (DecodeState == WAIT1)) & ready) WaitExp <= 1'b1;
    else WaitExp <= WaitExp;
end

wire decode_done; 
assign decode_done = (decode_idx_addr == remain_num);

wire decode_rd; 
assign  decode_rd = (DecodeState == ADDR0) | (DecodeState == ADDR1) |
                    (DecodeState == ADDR2) |  DecodeStateInd[3];


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//in_bus proccessing
wire [29:0] pre_devide_out;
multi_0point2 pre_devide(
    .A(in_bus),
    .P(pre_devide_out)
    );

wire [15:0] in_bus_by_5; //data after in_bus multi 0.2,type 1,2,13
assign in_bus_by_5 = {pre_devide_out[29],pre_devide_out[27:13]};

reg [15:0] in_bus_by_5Reg1;
always@(posedge clk)
begin
    if(DecodeStateInd[1] | DecodeStateInd[2] | DecodeStateInd[3] | DecodeStateInd[4])
        in_bus_by_5Reg1 <= in_bus_by_5;
    else in_bus_by_5Reg1 <= in_bus_by_5Reg1;
end

wire exp_in_valid,exp_out_valid;
assign exp_in_valid = ((DecodeState == ADDR3) | (DecodeState == WAIT1)) & ready & (~WaitExp);

wire [15:0] sinh,cosh; //type 1,1,14
exp exponent(
    .aclk(clk),
    .s_axis_phase_tvalid(exp_in_valid),
    .s_axis_phase_tdata(in_bus_by_5),

    .m_axis_dout_tvalid(exp_out_valid),
    .m_axis_dout_tdata({sinh,cosh})
);


wire [15:0] _exp_result; //type 1,1,14
adder_16bit gen_exp(
    .A(sinh),
    .B(cosh),
    .S(_exp_result) 
);

wire [15:0] exp_result; //type 1,2,13
assign exp_result = _exp_result[15] ? 16'h7fff : {_exp_result[15],1'b0,_exp_result[14:1]}; 
//? preventing overflow, when overflow, push it to be maximun

reg [15:0] exp_resultReg;
always@(posedge clk or negedge rstn)
begin
    if(~rstn) exp_resultReg <= 16'b0;
    else if(DecodeStateInd[3] | DecodeStateInd[4]) exp_resultReg <= exp_result;
    else exp_resultReg <= exp_result;
end


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//anchor_rom_out
wire [31:0] anchor;
ROM_32bit_11952 anchor_rom(
    .a(anchor_rom_addr),
    .spo(anchor)
);

reg [15:0] whReg1,whReg2,cxyReg1,cxyReg2,cxyReg3;
always@(posedge clk)
begin
    if(DecodeStateInd[0] | DecodeStateInd[1] | DecodeStateInd[2] | DecodeStateInd[3])
    begin
        whReg1  <= anchor[31:16];
        cxyReg1 <= anchor[15:0];
    end
    else
    begin
        whReg1 <= whReg1;
        cxyReg1 <= cxyReg1;
    end
end

always@(posedge clk)
begin
    if(DecodeStateInd[1] | DecodeStateInd[2] | DecodeStateInd[3] | DecodeStateInd[4])
    begin
        whReg2 <= whReg1;
        cxyReg2 <=cxyReg1;
    end
    else
    begin
        whReg2 <= whReg2;
        cxyReg2 <= cxyReg2;
    end
end

always@(posedge clk)
begin
    if((DecodeStateInd[2] | DecodeStateInd[3] | DecodeStateInd[4] | DecodeStateInd[5]))
        cxyReg3 <= cxyReg2;
    else 
        cxyReg3 <= cxyReg3;
end

wire [15:0] whReg2_by_2; //wh/2,type 1,1,14
assign whReg2_by_2 = {3'b0,whReg2[13:1]}; //wh must be positive,so we can devide it by this way

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//mutiplier,adder and data channels
wire [31:0] main_multi_out;
wire[15:0] mult0,mult1,deco_out;
multi_16bit main_multi(
    .A(mult0),
    .B(mult1),
    .P(main_multi_out)
);

wire [15:0] prod,sum; //type 1,1,14
assign prod = {main_multi_out[31],main_multi_out[27:13]};

reg [15:0] prodReg1;
always@(posedge clk)
begin
    if((DecodeStateInd[2] | DecodeStateInd[3] | DecodeStateInd[4] | DecodeStateInd[5]))
        prodReg1 <= prod;
    else prodReg1 <= prodReg1;
end

adder_16bit main_adder(
    .A(prodReg1),
    .B(cxyReg3),
    .S(sum)
);


assign mult0 = which_loc[1] ? in_bus_by_5Reg1 : exp_resultReg; //type 1,1,14

assign mult1 = which_loc[1] ? whReg2_by_2 : whReg2; //type 1,1,14 

assign deco_out = (DecodeStateInd[5] | DecodeStateInd[6]) ? prodReg1 : sum; //type 1,1,14


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Registers and Main RAM
reg [15:0] bcx,bcy,bw,bh; //four bridge registers,type 1,1,14
always@(posedge clk or negedge rstn)
begin
    if(~rstn) bcx <= 0;
    else if(DecodeStateInd[3]) bcx <= deco_out;
    else bcx <= bcx;
end

always@(posedge clk or negedge rstn)
begin
    if(~rstn) bcy <= 0;
    else if(DecodeStateInd[4]) bcy <= deco_out;
    else bcy <= bcy;
end

always@(posedge clk or negedge rstn)
begin
    if(~rstn) bw <= 0;
    else if(DecodeStateInd[5]) bw <= deco_out;
    else bw <= bw;
end

always@(posedge clk or negedge rstn)
begin
    if(~rstn) bh <= 0;
    else if(DecodeStateInd[6]) bh <= deco_out;
    else bh <= bh;
end


wire [15:0] bw_by_2,bh_by_2;
assign bw_by_2 = {2'b0,bw[13:1]};
assign bh_by_2 = {2'b0,bh[13:1]};

wire [31:0] p2;
wire [15:0] xmin,ymin,xmax,ymax,area; //type 1,1,14
assign area = {p2[31],p2[28:14]};

subtracter_16bit   gen_xmin   ( .A(bcx), .B(bw_by_2), .S(xmin) );
subtracter_16bit   gen_ymin   ( .A(bcy), .B(bh_by_2), .S(ymin) );
adder_16bit        gen_xmax   ( .A(bcx), .B(bw_by_2), .S(xmax) );
adder_16bit        gen_ymax   ( .A(bcy), .B(bh_by_2), .S(ymax) );
multi_16bit        gen_area   ( .A(bw),  .B(bh),      .P(p2)   );

wire [80:0] main_buff_dout;
wire main_buff_we;
assign main_buff_we  =  (status==decode) ? DecodeStateInd[7] : (
                        (status==nms) ? re_wr : 1'b0);

wire [4:0] main_buff_addr;
assign main_buff_addr = (status==decode) ? decode_idx_addr-1'b1 : (
                        (status==nms) ? mbuff_nms_addr : 5'b0);

wire [80:0] main_buff_din;
wire [80:0] mbuff_decode_din;
assign mbuff_decode_din = {idx_buff_dout[13],xmin,ymin,xmax,ymax,area};
assign main_buff_din = (status==decode) ? mbuff_decode_din : main_buff_dout;

RAM_81bit_32  main_buff(
    .clk(clk),
    .a(main_buff_addr),
    .d(main_buff_din),
    .qspo(main_buff_dout),
    .we(main_buff_we)
);



//************************************ NMS ************************************//
reg rd_hd,re_wr;
wire nxt_rd_hd,nxt_re_wr;
always@(posedge clk or negedge rstn)
begin
    if(~rstn) 
    begin rd_hd<=1'b1; re_wr<=1'b0; end
    else 
    begin rd_hd<=nxt_rd_hd; re_wr<=nxt_re_wr; end
end

assign nxt_rd_hd = ~(status==nms) ?  1'b1 : (
                    rd_hd ? 1'b0 : (
                    cycle_done ? 1'b1 : rd_hd));

assign nxt_re_wr = ~(status==nms) ? 1'b0 : (
                    re_wr ? 1'b0 : (
                    nms_retain ? 1'b1 : re_wr));

///////////////////////////////////////////////////////////////////////////////////////
reg rd_hd1;
always@(posedge clk)
begin
    rd_hd1<=rd_hd;
end

reg [1:0] cnt5; //0~3
always@(posedge clk or negedge rstn)
begin
    if(~rstn) cnt5<=2'b0;
    else 
    begin
        if(status==nms)
        begin
            if(rd_hd|re_wr) cnt5<=2'b0;
            else cnt5<=cnt5+1'b1;
        end
        else cnt5<=2'b0;
    end
end

wire compare3; //when to compare the IoU with the threshold
assign compare3 = cnt5[1]&cnt5[0];

reg [4:0] nms_rewr_addr,nms_rdot_addr;
wire [4:0] mbuff_nms_addr;
assign mbuff_nms_addr = rd_hd ? 5'b0 : (
                        re_wr ? nms_rewr_addr : nms_rdot_addr);

always@(posedge clk or negedge rstn)
begin
    if(~rstn) nms_rewr_addr<=5'b0;
    else 
    begin
        if(status==nms)
        begin
            if(cycle_done) nms_rewr_addr<=5'b0;
            else if(re_wr) nms_rewr_addr<=nms_rewr_addr+1'b1;
            else nms_rewr_addr<=nms_rewr_addr;
        end
    end
end

always@(posedge clk or negedge rstn)
begin
    if(~rstn) nms_rdot_addr<=5'b1;
    else 
    begin
        if(status==nms)
        begin
            if(cycle_done) nms_rdot_addr<=5'b1;
            else if(compare3) nms_rdot_addr<=nms_rdot_addr+1'b1;
            else nms_rdot_addr<=nms_rdot_addr;
        end
        else nms_rdot_addr<=5'b1;
    end
end

reg re_wr1;
reg [4:0] nms_rdot_addr1,nms_rdot_addr2;
always@(posedge clk)
begin
    re_wr1<=re_wr;
    nms_rdot_addr1<=nms_rdot_addr;
    nms_rdot_addr2<=nms_rdot_addr1;
end

reg [4:0] now_len; //the number of boxes left now
always@(posedge clk)
begin
    if(status==nms)
    begin
        if(cycle_done) now_len<=nms_rewr_addr;
        else now_len<=now_len;
    end
    else now_len<=remain_num;
end

wire cycle_done; //once nms finished
assign cycle_done = (nms_rdot_addr==now_len-1'b1)&compare3&(~nms_retain)| 
                    (nms_rdot_addr2==now_len-1'b1)&re_wr1;

wire nms_done;
assign nms_done = (now_len==1)&rd_hd1|(now_len==0); 

reg class_hd;
reg [15:0] xmin_hd,ymin_hd,xmax_hd,ymax_hd,area_hd;
always@(posedge clk)
begin
    if(rd_hd1)
    begin
        class_hd<=main_buff_dout[80];
        xmin_hd<=main_buff_dout[79:64];
        ymin_hd<=main_buff_dout[63:48];
        xmax_hd<=main_buff_dout[47:32];
        ymax_hd<=main_buff_dout[31:16];
        area_hd<=main_buff_dout[15:0];
    end
    else
    begin
        class_hd<=class_hd;
        xmin_hd<=xmin_hd;
        ymin_hd<=ymin_hd;
        xmax_hd<=xmax_hd;
        ymax_hd<=ymax_hd;
        area_hd<=area_hd;        
    end
end

wire xmin_hd_larger,ymin_hd_larger,xmax_hd_larger,ymax_hd_larger;
wire [15:0] overlap_xmin,overlap_ymin,overlap_xmax,overlap_ymax;

assign xmin_hd_larger = (xmin_hd[15]&main_buff_dout[79]) ? (xmin_hd[14:0] < main_buff_dout[78:64]) : (
                        ((~xmin_hd[15])&(~main_buff_dout[79])) ? (xmin_hd[14:0] > main_buff_dout[78:64]) : (
                        ((~xmin_hd[15])&main_buff_dout[79]) ? 1'b1 : 1'b0));

assign ymin_hd_larger = (ymin_hd[15]&main_buff_dout[63]) ? (ymin_hd[14:0] < main_buff_dout[63:48]) : (
                        ((~ymin_hd[15])&(~main_buff_dout[63])) ? (ymin_hd[14:0] > main_buff_dout[63:48]) : (
                        ((~ymin_hd[15])&main_buff_dout[63]) ? 1'b1 : 1'b0));

assign xmax_hd_larger = (xmax_hd[15]&main_buff_dout[47]) ? (xmax_hd[14:0] < main_buff_dout[46:32]) : (
                        ((~xmax_hd[15])&(~main_buff_dout[47])) ? (xmax_hd[14:0] > main_buff_dout[46:32]) : (
                        ((~xmax_hd[15])&main_buff_dout[47]) ? 1'b1 : 1'b0));

assign ymax_hd_larger = (ymax_hd[15]&main_buff_dout[31]) ? (ymax_hd[14:0] < main_buff_dout[30:16]) : (
                        ((~ymax_hd[15])&(~main_buff_dout[31])) ? (ymax_hd[14:0] > main_buff_dout[30:16]) : (
                        ((~ymax_hd[15])&main_buff_dout[31]) ? 1'b1 : 1'b0));

assign overlap_xmin = xmin_hd_larger ? xmin_hd : main_buff_dout[79:64];
assign overlap_ymin = ymin_hd_larger ? ymin_hd : main_buff_dout[63:48];
assign overlap_xmax = xmax_hd_larger ? main_buff_dout[47:32] : xmax_hd;
assign overlap_ymax = ymax_hd_larger ? main_buff_dout[31:16] : ymax_hd;

wire [15:0] _overlap_w,_overlap_h,overlap_w,overlap_h,overlap_area;
subtracter_16bit gen_overlap_w ( .A(overlap_xmax), .B(overlap_xmin), .S(_overlap_w) );
subtracter_16bit gen_overlap_h ( .A(overlap_ymax), .B(overlap_ymin), .S(_overlap_h) );

assign overlap_w = _overlap_w[15] ? 16'b0 : _overlap_w;
assign overlap_h = _overlap_h[15] ? 16'b0 : _overlap_h;

wire [31:0] _overlap_area;
multi_16bit_p1 gen_overlap_area ( .CLK(clk), .A(overlap_w), .B(overlap_h), .P(_overlap_area) );
assign overlap_area = {1'b0,_overlap_area[28:14]};

wire [15:0] unite_area;
subtracter_16bit gen_unite_area ( .A(main_buff_dout[15:0]+area_hd), .B(overlap_area), .S(unite_area) );

wire nms_retain;
assign nms_retain = compare3&(overlap_area[14:0]<unite_area[15:1]); //! decide the threshold of IoU 

wire [15:0] _real_xmin,_real_ymin,_real_xmax,_real_ymax;
assign _real_xmin = main_buff_dout[79] ? 16'b0 : main_buff_dout[79:64];
assign _real_ymin = main_buff_dout[63] ? 16'b0 : main_buff_dout[63:48];
assign _real_xmax = main_buff_dout[46] ? 16'h4fff : main_buff_dout[47:32];
assign _real_ymax = main_buff_dout[30] ? 16'h4fff : main_buff_dout[31:16];

wire [31:0] _real_xmin_,_real_ymin_,_real_xmax_,_real_ymax_;
multi_16bit gen_real_xmin ( .A(_real_xmin), .B(width),  .P(_real_xmin_) );
multi_16bit gen_real_ymin ( .A(_real_ymin), .B(height), .P(_real_ymin_) );
multi_16bit gen_real_xmax ( .A(_real_xmax), .B(width),  .P(_real_xmax_) );
multi_16bit gen_real_ymax ( .A(_real_ymax), .B(height), .P(_real_ymax_) );

reg is_valid0,is_valid1,is_valid2,is_valid3,is_valid4;
reg category0,category1,category2,category3,category4;
reg [15:0] real_xmin0,real_xmin1,real_xmin2,real_xmin3,real_xmin4;
reg [15:0] real_ymin0,real_ymin1,real_ymin2,real_ymin3,real_ymin4;
reg [15:0] real_xmax0,real_xmax1,real_xmax2,real_xmax3,real_xmax4;
reg [15:0] real_ymax0,real_ymax1,real_ymax2,real_ymax3,real_ymax4;

//result registers
always@(posedge clk or negedge rstn)
begin
    if(~rstn)
    begin
        is_valid0<=1'b0;
        category0<=1'b0;
        real_xmin0<=0;
        real_ymin0<=0;
        real_xmax0<=0;
        real_ymax0<=0;

        is_valid1<=1'b0;
        category1<=1'b0;
        real_xmin1<=0;
        real_ymin1<=0;
        real_xmax1<=0;
        real_ymax1<=0;

        is_valid2<=1'b0;
        category2<=1'b0;
        real_xmin2<=0;
        real_ymin2<=0;
        real_xmax2<=0;
        real_ymax2<=0;

        is_valid3<=1'b0;
        category3<=1'b0;
        real_xmin3<=0;
        real_ymin3<=0;
        real_xmax3<=0;
        real_ymax3<=0;

        is_valid4<=1'b0;
        category4<=1'b0;
        real_xmin4<=0;
        real_ymin4<=0;
        real_xmax4<=0;
        real_ymax4<=0;        
    end
    else if((status==nms)&rd_hd1&(~rd_hd))
    begin
        is_valid0<=1'b1;
        category0<=main_buff_dout[80]; 
        real_xmin0<=_real_xmin_[29:14]; 
        real_ymin0<=_real_ymin_[29:14];
        real_xmax0<=_real_xmax_[29:14];
        real_ymax0<=_real_ymax_[29:14];

        is_valid1<=is_valid0;
        category1<=category0;
        real_xmin1<=real_xmin0;
        real_ymin1<=real_ymin0;
        real_xmax1<=real_xmax0;
        real_ymax1<=real_ymax0;

        is_valid2<=is_valid1;
        category2<=category1;
        real_xmin2<=real_xmin1;
        real_ymin2<=real_ymin1;
        real_xmax2<=real_xmax1;
        real_ymax2<=real_ymax1;

        is_valid3<=is_valid2;
        category3<=category2;
        real_xmin3<=real_xmin2;
        real_ymin3<=real_ymin2;
        real_xmax3<=real_xmax2;
        real_ymax3<=real_ymax2;

        is_valid4<=is_valid3;
        category4<=category3;
        real_xmin4<=real_xmin3;
        real_ymin4<=real_ymin3;
        real_xmax4<=real_xmax3;
        real_ymax4<=real_ymax3;
    end
    else if(status==idle)
    begin
        is_valid0<=1'b0;
        category0<=1'b0;
        real_xmin0<=0;
        real_ymin0<=0;
        real_xmax0<=0;
        real_ymax0<=0;

        is_valid1<=1'b0;
        category1<=1'b0;
        real_xmin1<=0;
        real_ymin1<=0;
        real_xmax1<=0;
        real_ymax1<=0;

        is_valid2<=1'b0;
        category2<=1'b0;
        real_xmin2<=0;
        real_ymin2<=0;
        real_xmax2<=0;
        real_ymax2<=0;

        is_valid3<=1'b0;
        category3<=1'b0;
        real_xmin3<=0;
        real_ymin3<=0;
        real_xmax3<=0;
        real_ymax3<=0;

        is_valid4<=1'b0;
        category4<=1'b0;
        real_xmin4<=0;
        real_ymin4<=0;
        real_xmax4<=0;
        real_ymax4<=0; 
    end
    else
    begin
        is_valid0<=is_valid0;
        category0<=category0;
        real_xmin0<=real_xmin0;
        real_ymin0<=real_ymin0;
        real_xmax0<=real_xmax0;
        real_ymax0<=real_ymax0;

        is_valid1<=is_valid1;
        category1<=category1;
        real_xmin1<=real_xmin1;
        real_ymin1<=real_ymin1;
        real_xmax1<=real_xmax1;
        real_ymax1<=real_ymax1;

        is_valid2<=is_valid2;
        category2<=category2;
        real_xmin2<=real_xmin2;
        real_ymin2<=real_ymin2;
        real_xmax2<=real_xmax2;
        real_ymax2<=real_ymax2;

        is_valid3<=is_valid3;
        category3<=category3;
        real_xmin3<=real_xmin3;
        real_ymin3<=real_ymin3;
        real_xmax3<=real_xmax3;
        real_ymax3<=real_ymax3;

        is_valid4<=is_valid4;
        category4<=category4;
        real_xmin4<=real_xmin4;
        real_ymin4<=real_ymin4;
        real_xmax4<=real_xmax4;
        real_ymax4<=real_ymax4;
    end
end

//DDR read address mapping
always@(*)
begin
    case(s_addr1)
        8'h20: final_result={27'b0,is_valid4,is_valid3,is_valid2,is_valid1,is_valid0};
        8'h24: final_result={27'b0,category4,category3,category2,category1,category0};
        8'h28: final_result={real_xmin0,real_ymin0};
        8'h2C: final_result={real_xmax0,real_ymax0};
        8'h30: final_result={real_xmin1,real_ymin1};
        8'h34: final_result={real_xmax1,real_ymax1};
        8'h38: final_result={real_xmin2,real_ymin2};
        8'h3C: final_result={real_xmax2,real_ymax2};
        8'h40: final_result={real_xmin3,real_ymin3};
        8'h44: final_result={real_xmax3,real_ymax3};
        8'h48: final_result={real_xmin4,real_ymin4};
        8'h4C: final_result={real_xmax4,real_ymax4};  
        default: final_result=32'b0;
    endcase
end
endmodule