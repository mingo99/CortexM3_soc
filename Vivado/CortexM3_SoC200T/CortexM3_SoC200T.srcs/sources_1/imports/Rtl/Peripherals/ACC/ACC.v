//! Layer 3 applies inaverage buffer windows
module ACC(
    //General
    input     wire              clk, //HCLK
    input     wire              rstn, //HRESETn

    //ACC Master Port
    output    wire              HSELM,
    output    wire    [31:0]    HADDRM,
    output    wire    [1:0]     HTRANSM,
    output    wire              HWRITEM,
    output    wire    [2:0]     HSIZEM,
    output    wire    [2:0]     HBURSTM,
    output    wire    [3:0]     HPROTM,
    output    wire    [31:0]    HWDATAM,
    output    wire    [3:0]     HMASTERM,
    output    wire              HREADYM,
    input     wire    [31:0]    HRDATAM,
    input     wire              HREADYOUTM,
    // input     wire              HRESPM, 

    //ACC Slave Port
    input     wire    [31:0]    HADDRS,
    input     wire    [1:0]     HTRANSS, 
    input     wire              HWRITES,
    // input     wire    [2:0]     HSIZES,
    input     wire    [31:0]    HWDATAS,   
    // input     wire    [2:0]     HBURSTS,
    // input     wire    [3:0]     HPROTS,
    input     wire              HREADYS,
    output    wire    [31:0]    HRDATAS,
    output    wire              HRESPS,
    output    wire              HREADYOUTS,
    input     wire              HSELS,
    // input     wire              HMASTLOCKS,
    // input     wire    [3:0]     HMASTERS

    //!Interrupt Request
    output    wire              no_face_detected,
    output    wire              you_can_rd_result,
    output    wire              conv_done, 

    //Debug
    output    wire     [1:0]    conv_status,
    output    wire     [3:0]    pool_status,
    output    wire     [2:0]    nms_status
);


//************************************ General ************************************//
//conv_status  
parameter idle          = 2'b00;
parameter wr_fb         = 2'b01;
parameter wr_w          = 2'b10;
parameter calcu         = 2'b11;

//pool_status
parameter done          = 4'b0001;
parameter pool          = 4'b0010;
parameter back          = 4'b0100; 
parameter pre_back      = 4'b1000; 

//master port output signal
assign HSELM = 1'b1;

assign HADDRM = gnr_cfg[30] ? n_rt_addr : c_rt_addr;

assign HTRANSM = {(gnr_cfg[30] ? n_trans : c_trans),1'b0};

assign HSIZEM = 3'b010; 

assign HBURSTM = 3'b0; //single trans

assign HPROTM = 4'b0011;

assign HWDATAM = {16'b0,conv_out_bus};

assign HMASTERM = 4'b0;

assign HREADYM = HREADYOUTM; 

//slave port output signal
reg [31:0] rd_data;
always@(*)
begin
    case(s_addr1)
        8'h00: rd_data = gnr_cfg;
        8'h04: rd_data = c_side_info;
        8'h08: rd_data = c_f_base_addr;
        8'h0C: rd_data = c_w_base_addr;
        8'h10: rd_data = c_b_base_addr;
        8'h14: rd_data = c_pb_base_addr;
        8'h18: rd_data = c_brom_base_addr;
        8'h1C: rd_data = {27'b0,gnr_ctrl};
        default: rd_data = final_result;
    endcase
end
assign HRDATAS = rd_data;

assign HRESPS = 2'b00;
assign HREADYOUTS = 1'b1;

//bits in general ctrl register
wire conv_start,conv_cnt_en,conv_flag,nms_start,rd_box_done;
assign conv_start=gnr_ctrl[0];
assign conv_cnt_en=gnr_ctrl[1];
assign conv_flag=gnr_ctrl[2];
assign nms_start=gnr_ctrl[3];
assign rd_box_done=gnr_ctrl[4];


//************************************ Input Signal Delay ************************************//
wire write_en;
assign write_en = HSELS & HTRANSS[1] & HWRITES & HREADYS;

reg write_en1;
reg [7:0] s_addr1;
always@(posedge clk or negedge rstn)
begin
    if(~rstn) 
    begin
        write_en1<=1'b0;
        s_addr1<=8'b0;
    end
    else
    begin
        write_en1<=write_en;
        s_addr1<=HADDRS[7:0];
    end
end


//************************************ Conv & Pool ************************************//
wire cnt16,cnt6;
// wire [1:0] conv_status;
// wire [3:0] pool_status;
wire [3:0] cnt4; //!to add pool_status
wire [5:0] cnt11,cnt12,cnt13,cnt14,cnt15;
wire [6:0] cnt5;     

wire Nif_fir,Nif_full;
assign Nif_fir=(p_Nif==0);
assign Nif_full=(p_Nif==Nif-1'b1);

wire [1:0] pool_style;
assign pool_style = multi_win[0] ? 2'b00 : 2'b11; //???

wire [1:0] spec_win; //?????
assign spec_win = {p_nh[0], p_nw[0]};

wire [3:0] pad_style,multi_pad_style; 

assign  pad_style = (pool_status==pre_back)      ?   4'hf             : (
                    (multi_win[1]|multi_win[0])  ?   multi_pad_style  : (
                    is_out_pad                   ?   4'hf             : 4'h0));

wire spec; //???
assign spec = (multi_win == 2'b10);

//??????????????????????????????????????????????????????????????????
assign multi_pad_style[0] = spec ?  spec_win[1] : (p_nh==n-1'b1); 
assign multi_pad_style[1] = spec ?  spec_win[0] : (p_nw==n-1'b1);
assign multi_pad_style[2] = spec ? ~spec_win[1] : (p_nh==0);
assign multi_pad_style[3] = spec ? ~spec_win[0] : (p_nw==0);
//??????????????????????????????????????????????????????????????????

wire [10:0] b_base_addr;
assign b_base_addr = p_k ? c_brom_base_addr[30:20] : c_brom_base_addr[10:0];

wire [5:0] delta_Nof,delta_x;
wire [15:0] conv_out_bus;
wire conv_cnt_plus,is_pool,double_back,bottom;
wire c_trans;

wire conv_done2;
assign conv_done = p_k_full & conv_done2;
conv2 conv_pool(
    //general ports
    .clk                     (clk),
    .rstn                    (rstn),
    .start                   (conv_start), //only when conv_start is high,can conv_status transfer to the next wr_fb status
    .ready                   (HREADYOUTM), 
    .in_bus                  (HRDATAM[15:0]),
    .out_bus                 (conv_out_bus), 

    //batch info
    .delta_Nof               (delta_Nof), //how many Nof are processed once(max 63)
    .delta_x                 (delta_x), //buffer window side length
    .Nif_fir                 (Nif_fir), //processing the first Nif
    .Nif_full                (Nif_full), //processing the last Nif
    .is_pool                 (is_pool), //is conv followed by pool?
    .double_back             (double_back), //return results both before and after pooling?
    .bottom                  (bottom), //it is the bottom conv?
    .pool_style              (pool_style), //indicates the padding method while pooling when the side is an odd.
    .pad_style               (pad_style), //indicates the padding methond while returning output.
    .b_base_addr             (b_base_addr),

    .spec                    (spec),
    .spec_win                (spec_win),

    //wr_fb cnt
    .cnt14                   (cnt14), //0~delta_x-1
    .cnt15                   (cnt15), //0~delta_x-1
    .cnt16                   (cnt16), //0~1

    //wr_w cnt
    .cnt4                    (cnt4), //0~8
    .cnt5                    (cnt5), //0~delta_Nof
    .cnt6                    (cnt6), //0~1

    //back/pre back cnt
    .cnt11                   (cnt11), //0~cnt11_max
    .cnt12                   (cnt12), //0~cnt12_max
    .cnt13                   (cnt13), //0~delta_Nof

    //general status 
    .status                  (conv_status),
    .pool_status             (pool_status),

    //other output
    .conv_work               (conv_cnt_plus), //indicates that on the next posedge conv_status transfers from idle to wr_fb
    .trans                   (c_trans),
    .write                   (HWRITEM),
    .conv_done2              (conv_done2) //interrupt signal to CPU
    );


//!**** NMS  ****!//
wire n_trans;
wire [31:0] final_result,n_rt_addr;
nms nms(
    //General ports
    .clk                     (clk),
    .rstn                    (rstn),
    .start                   (nms_start),
    .ready                   (HREADYOUTM), // HREADYOUTM from DDR
    .rd                      (n_trans), // related to HTRANSM, when to rd data from DDR
    .await_done              (rd_box_done), //after CPU reading result, give me this signal

    //Bus
    .in_bus                  (HRDATAM[15:0]),
    .s_addr1                 (s_addr1), // delayed HADDRS[7:0] of ACC
    .n_rt_addr               (n_rt_addr), // HADDRM to DDRs
    .final_result            (final_result), // HRDATAS of ACC

    //Status
    .status                  (nms_status),

    //Interrupt request
    .no_face_detected        (no_face_detected), //! interrupt request: tell CPU no face detected
    .you_can_rd_result       (you_can_rd_result) //! interrupt request: tell CPU to occupy bus and read results 
);


//************************************ General Registers ************************************//
reg  [31:0]  gnr_cfg; //? configuration info when conv_pool or NMS or other 
reg  [4:0]   gnr_ctrl; //? control info such as counter enable 
reg  [31:0]  c_side_info; //input side x and output side y
reg  [31:0]  c_f_base_addr; // DDR base addr when wr_fb when conv_pool
reg  [31:0]  c_w_base_addr; // DDR base addr when wr_w when conv_pool
reg  [31:0]  c_b_base_addr; // DDR base addr when back when conv_pool
reg  [31:0]  c_pb_base_addr; // DDR base addr when pre_back when conv_pool
reg  [31:0]  c_brom_base_addr; // bias ROM base addr when conv_pool

////////////////////////////////////////////////////////////////////////////////////////////////

always@(posedge clk or negedge rstn) //gnr_cfg reg,software change only
begin
    if(~rstn)                               gnr_cfg<=32'b0;
    else if(write_en1&(s_addr1==8'h00))     gnr_cfg<=HWDATAS;
    else                                    gnr_cfg<=gnr_cfg;
end

////////////////////////////////////////////////////////////////////////////////////////////////

always@(posedge clk or negedge rstn) //c_side_info reg,software change only
begin
    if(~rstn)                               c_side_info<=32'b0;
    else if(write_en1&(s_addr1==8'h04))     c_side_info<=HWDATAS;
    else                                    c_side_info<=c_side_info;
end

////////////////////////////////////////////////////////////////////////////////////////////////

always@(posedge clk or negedge rstn) //c_f_base_addr reg,software chage only
begin
    if(~rstn)                               c_f_base_addr<=32'b0;
    else if(write_en1&(s_addr1==8'h08))     c_f_base_addr<=HWDATAS;
    else                                    c_f_base_addr<=c_f_base_addr;
end

////////////////////////////////////////////////////////////////////////////////////////////////

always@(posedge clk or negedge rstn) //c_w_base_addr reg,software change only
begin
    if(~rstn)                               c_w_base_addr<=32'b0;
    else if(write_en1&(s_addr1==8'h0C))     c_w_base_addr<=HWDATAS;
    else                                    c_w_base_addr<=c_w_base_addr;
end

////////////////////////////////////////////////////////////////////////////////////////////////

always@(posedge clk or negedge rstn) //c_b_base_addr reg,software change only
begin
    if(~rstn)                               c_b_base_addr<=32'b0;
    else if(write_en1&(s_addr1==8'h10))     c_b_base_addr<=HWDATAS;
    else                                    c_b_base_addr<=c_b_base_addr;
end

////////////////////////////////////////////////////////////////////////////////////////////////

always@(posedge clk or negedge rstn) //c_pb_base_addr reg,software change only
begin
    if(~rstn)                               c_pb_base_addr<=32'b0;
    else if(write_en1&(s_addr1==8'h14))     c_pb_base_addr<=HWDATAS;
    else                                    c_pb_base_addr<=c_pb_base_addr;
end

////////////////////////////////////////////////////////////////////////////////////////////////

always@(posedge clk or negedge rstn) //c_brom_base_addr reg,software change only
begin
    if(~rstn)                               c_brom_base_addr<=32'b0;
    else if(write_en1&(s_addr1==8'h18))     c_brom_base_addr<=HWDATAS;
    else                                    c_brom_base_addr<=c_brom_base_addr;
end

////////////////////////////////////////////////////////////////////////////////////////////////

always@(posedge clk or negedge rstn) //conv_start in gnr_ctrl reg,reset by hardware automatically
begin
    if(~rstn)                               gnr_ctrl[0]<=1'b0;
    else if(write_en1&(s_addr1==8'h1C))     gnr_ctrl[0]<=HWDATAS[0];
    else if(p_k_full)                       gnr_ctrl[0]<=1'b0;
    else                                    gnr_ctrl[0]<=gnr_ctrl[0];
end

always@(posedge clk or negedge rstn) //conv_cnt_en,software change only
begin
    if(~rstn)                               gnr_ctrl[1]<=1'b0;
    else if(write_en1&(s_addr1==8'h1C))     gnr_ctrl[1]<=HWDATAS[1];
    else                                    gnr_ctrl[1]<=gnr_ctrl[1];
end

always@(posedge clk or negedge rstn) //conv_flag,set by hardware automatically
//! after the first transformation from idle to wr_fb,the flag is set
begin
    if(~rstn)                               gnr_ctrl[2]<=1'b0;
    else if(write_en1&(s_addr1==8'h1C))     gnr_ctrl[2]<=HWDATAS[2];
    else if(conv_cnt_plus)                  gnr_ctrl[2]<=1'b1;
    else                                    gnr_ctrl[2]<=gnr_ctrl[2];
end

always@(posedge clk or negedge rstn) //nms_start,reset by hardware automatically
begin
    if(~rstn)                               gnr_ctrl[3]<=1'b0;
    else if(write_en1&(s_addr1==8'h1C))     gnr_ctrl[3]<=HWDATAS[3];
    else if(gnr_ctrl[3])                    gnr_ctrl[3]<=1'b0;
    else                                    gnr_ctrl[3]<=gnr_ctrl[3];
end

always@(posedge clk or negedge rstn) //rd_box_done,reset by hardware automatically
begin
    if(~rstn)                               gnr_ctrl[4]<=1'b0;
    else if(write_en1&(s_addr1==8'h1C))     gnr_ctrl[4]<=HWDATAS[4];
    else if(gnr_ctrl[4])                    gnr_ctrl[4]<=1'b0;
    else                                    gnr_ctrl[4]<=gnr_ctrl[4];
end

////////////////////////////////////////////////////////////////////////////////////////////////

//? configur info when conv and pool ?//
wire  [6:0]  Nif;
wire  [3:0]  n;
wire         k,is_out_pad;
wire  [8:0]  x,pre_y;
wire  [7:0]  y;
wire  [1:0]  multi_win;

assign is_pool     = gnr_cfg     [29]; //is conv followed by pooling?
assign k           = gnr_cfg     [28]; //number of passes
assign n           = gnr_cfg     [27:24]; //input feature map side includes n delta_x
assign is_out_pad  = gnr_cfg     [23]; //is final output pad?
assign multi_win   = gnr_cfg     [22:21]; //! 01:L1 10:L3 11:L2 00:single win
assign bottom      = gnr_cfg     [20]; //it is the bottom conv?
assign double_back = gnr_cfg     [19]; //return results both before and after pooling? 
assign delta_x     = gnr_cfg     [18:13]; //delta_x
assign delta_Nof   = gnr_cfg     [12:7]; //number of output channels that are processed once
assign Nif         = gnr_cfg     [6:0]; //number of input channels

assign y           = c_side_info [22:15]; //output side len(after pooling and padding)
assign pre_y       = c_side_info [14:9]; //pre output side len
assign x           = c_side_info [8:0]; //input side len



//*********************************** Conv & Pool Counter ************************************//
reg  [6:0]  p_Nif; //present processing Nif
reg  [3:0]  p_nw,p_nh; //present processing buffer window
reg         p_k; //present processing pass

wire p_Nif_full,p_nw_full,p_nh_full,p_k_full;
assign p_Nif_full=Nif_full; 

//????????????????????????????????????????????????????????????????????????
assign p_nw_full = spec ? p_Nif_full&p_nw[0] : p_Nif_full&(p_nw==n-1'b1);
assign p_nh_full = spec ? p_nw_full&p_nh[0]  : p_nw_full&(p_nh==n-1'b1);
//????????????????????????????????????????????????????????????????????????

assign p_k_full=p_nh_full&(p_k==k);

wire [6:0] nxt_p_Nif;
wire [3:0] nxt_p_nw,nxt_p_nh;
wire nxt_p_k;
always@(posedge clk or negedge rstn)
begin
    if(~rstn)
    begin
        p_Nif<=7'b0; p_nw<=4'b0; p_nh<=4'b0; p_k<=1'b0;
    end
    else
    begin
        p_Nif<=nxt_p_Nif; p_nw<=nxt_p_nw; p_nh<=nxt_p_nh; p_k<=nxt_p_k;
    end
end

assign nxt_p_Nif =  (~conv_cnt_en)    ? 7'b0          : (
                    (~conv_cnt_plus)  ? p_Nif         : (
                    p_Nif_full        ? 7'b0          : (
                    conv_flag         ? p_Nif+2'b10   : p_Nif))); //! to prevent p_Nif from plusing 1 at the beginning

assign nxt_p_nw  =  (~conv_cnt_en)    ? 4'b0          : (
                    (~conv_cnt_plus)  ? p_nw          : (
                    p_nw_full         ? 4'b0          : (
                    p_Nif_full        ? p_nw+1'b1     : p_nw)));

assign nxt_p_nh  =  (~conv_cnt_en)    ? 4'b0          : (
                    (~conv_cnt_plus)  ? p_nh          : (
                    p_nh_full         ? 4'b0          : (
                    p_nw_full         ? p_nh+1'b1     : p_nh)));        

assign  nxt_p_k  =  (~conv_cnt_en)    ? 1'b0          : (
                    (~conv_cnt_plus)  ? p_k           : (
                    p_k_full          ? 1'b0          : (
                    p_nh_full         ? p_k+1'b1      : p_k)));   


//************************************ DDR Conv_Pool Address Generator ************************************//
//? devide the DDR into 6 blocks: W,M0,M1,B0,B1,R, W has 28 sub-blocks and R has 10 sub-blocks
//? each of these blocks has a base_addr,every transport has a start_addr
//? start_addr is based on base_addr,rt_addr(real time) is based on start_addr
//? to tell this addr from addr in other states of ACC,add c on the head of the addr name

//????????????????????????????????????
wire [31:0] spec_back_w,spec_back_h;
assign spec_back_w = spec_win[0] ? 17 : 0;

assign spec_back_h = spec_win[1] ? 595 : 0;


wire [31:0] spec_wr_w,spec_wr_h;
assign spec_wr_w = spec_win[0] ? 32 : 0;

assign spec_wr_h = spec_win[1] ? 2144 : 0;


wire [31:0] back_inc;
assign back_inc  =  (multi_win==2'b00) ? 32'b0 : (
                    (multi_win[0]) ? ((p_nw==4'b0) ? 32'b0 : p_nw*13+1'b1)+((p_nh==0) ? 32'b0 : y*(p_nh*13+1'b1)) : (
                    spec ? spec_back_w + spec_back_h : 32'b0));

wire [31:0] wr_fb_inc;
assign wr_fb_inc = spec_wr_w + spec_wr_h;
//????????????????????????????????????

wire [31:0] c_f_start_addr,c_w_start_addr,c_b_start_addr,c_pb_start_addr;
assign c_f_start_addr  = c_f_base_addr + (spec ? ((wr_fb_inc + 4489*p_Nif)<<2) : (x*(p_Nif*x+p_nh*(delta_x-2'b10))+p_nw*(delta_x-2'b10))<<2); //????
assign c_w_start_addr  = c_w_base_addr + ((p_Nif*9+(p_k ? 576*(Nif+1) : 0))<<2);
assign c_b_start_addr  = c_b_base_addr + (((p_k ? ((y*y)<<6) : 0) + back_inc)<<2);
assign c_pb_start_addr = c_pb_base_addr + ((p_k ? ((pre_y*pre_y)<<6) : 0)<<2);


wire [31:0] c_rt_addr;
assign  c_rt_addr = (conv_status==wr_fb) ? c_f_start_addr + ((x*((cnt16 ? x : 0)+cnt15)+cnt14)<<2) : (
                    (conv_status==wr_w) ? c_w_start_addr + (((cnt6 ? 9 : 0)+cnt5*9*(Nif+1)+cnt4)<<2) : (
                    (pool_status==back) ? c_b_start_addr + (((bottom ? cnt13 : cnt13*y*y)+cnt12*(bottom ? (delta_Nof+1'b1)*y : y)+(bottom ? cnt11*(delta_Nof+1'b1) : cnt11))<<2) : (
                    (pool_status==pre_back) ? c_pb_start_addr + ((pre_y*(cnt13*pre_y+cnt12)+cnt11)<<2) : 32'b0 )));
endmodule