module Resizer #(
    parameter                   CameraAddr  = 32'h00000000,
    parameter                   ACCInAddr   = 32'h40770000 )( 
    //General
    input     wire              clk, //HCLK
    input     wire              rstn, //HRESETn

    //Resizer Master Port
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

    //Resizer Slave Port
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

    //Interrupt Request
    output    wire              ResizeDone
);

/*--------------------------------------------------------------
                    Resizer Slave Port
--------------------------------------------------------------*/
wire write_en;
assign write_en = HSELS & HTRANSS[1] & HWRITES & HREADYS;

reg write_en1;
reg [3:0] s_addr1;
always@(posedge clk or negedge rstn)
begin
    if(~rstn) 
    begin
        write_en1 <= 1'b0;
        s_addr1 <= 4'b0;
    end
    else
    begin
        write_en1 <= write_en;
        s_addr1 <= HADDRS[3:0];
    end
end

reg Start; // Start signal for Resizer, hardware auto-reset
always@(posedge clk or negedge rstn)
begin
    if(~rstn) Start <= 1'b0;
    else if(write_en1 & (s_addr1 == 4'b0000)) Start <= HWDATAS[0];
    else if(Start) Start <= 1'b0;
    else Start <= Start;
end


/*--------------------------------------------------------------
                        Global FSM
--------------------------------------------------------------*/
localparam IDLE   = 2'b00;
localparam FETCH  = 2'b01;
localparam CALCU  = 2'b10;
localparam RETURN = 2'b11;

reg [1:0] StateG;
wire [1:0] NxtStateG;
always@(posedge clk or negedge rstn)
begin
    if(~rstn) StateG <= 2'b0;
    else StateG <= NxtStateG;
end

assign  NxtStateG = (StateG == IDLE)   & Start      ? FETCH  : (
                    (StateG == FETCH)  & FetchDone  ? CALCU  : (
                    (StateG == CALCU)  & CalcuDone  ? RETURN : (
                    (StateG == RETURN) & ResizeDone ? IDLE   : (
                    (StateG == RETURN) & ReturnDone ? FETCH  : StateG))));


/*--------------------------------------------------------------
                        Fetch FSM

//FetchState Specification
//000: Sent addr of F(i,j)
//001: Sent addr of F(i,j+1)
//010: Sent addr of F(i+1,j)
//011: Sent addr of F(i+1,j+1)
//100: Wait for F(i+1,j+1) to come out
--------------------------------------------------------------*/
reg  [2:0] FetchState;
wire [2:0] NxtFetchState;
always@(posedge clk or negedge rstn)
begin
    if(~rstn) FetchState <= 3'b0;
    else if(StateG == FETCH) FetchState <= NxtFetchState;
    else FetchState <= 3'b0;
end

assign  NxtFetchState = (FetchState == 3'b000) & HREADYOUTM ? 3'b001 : (
                        (FetchState == 3'b001) & HREADYOUTM ? 3'b010 : (
                        (FetchState == 3'b010) & HREADYOUTM ? 3'b011 : (
                        (FetchState == 3'b011) & HREADYOUTM ? 3'b100 : (
                        (FetchState == 3'b100) & HREADYOUTM ? 3'b000 : FetchState))));

wire FetchDone;
assign FetchDone = (FetchState == 3'b100) & HREADYOUTM;


/*--------------------------------------------------------------
                        Calcu FSM
--------------------------------------------------------------*/
reg  CalcuState;
wire NxtCalcuState;
always@(posedge clk or negedge rstn)
begin
    if(~rstn) CalcuState <= 1'b0;
    else if(StateG == CALCU) CalcuState <= NxtCalcuState;
    else CalcuState <= 1'b0;
end

assign NxtCalcuState = (~ CalcuState) ? 1'b1 : 1'b0;

wire CalcuDone;
assign CalcuDone = CalcuState;


/*--------------------------------------------------------------
                        Return FSM

//ReturnState Specification
//00: Sent addr of R(DstI,DstJ)
//01: Sent addr of G(DstI,DstJ)
//10: Sent addr of B(DstI,DstJ)
//11: Wait for B(DstI,DstJ) to set down
--------------------------------------------------------------*/
reg  [1:0] ReturnState;
wire [1:0] NxtReturnState;
always@(posedge clk or negedge rstn)
begin
    if(~rstn) ReturnState <= 2'b0;
    else if(StateG == RETURN) ReturnState <= NxtReturnState;
    else ReturnState <= 2'b0;
end

assign NxtReturnState = (ReturnState == 2'b00) & HREADYOUTM ? 2'b01 : (
                        (ReturnState == 2'b01) & HREADYOUTM ? 2'b10 : (
                        (ReturnState == 2'b10) & HREADYOUTM ? 2'b11 : (
                        (ReturnState == 2'b11) & HREADYOUTM ? 2'b00 : ReturnState)));

wire ReturnDone;
assign ReturnDone = (ReturnState == 2'b11) & HREADYOUTM;


/*--------------------------------------------------------------
                        Col & Row Counter
--------------------------------------------------------------*/
reg [8:0] DstRow,DstCol;
wire DstColfull;
assign DstColfull = (DstCol == 259);
assign ResizeDone = (DstRow == 259) & DstColfull & ReturnDone; 

always@(posedge clk or negedge rstn)
begin
    if(~rstn) DstRow <= 9'b0;
    else if(ResizeDone) DstRow <= 9'b0;
    else if(ReturnDone)
    begin
        if(DstColfull) DstRow <= DstRow + 1'b1;
        else DstRow <= DstRow;
    end
    else DstRow <= DstRow;
end

always@(posedge clk or negedge rstn)
begin
    if(~rstn) DstCol <= 9'b0;
    else if(ResizeDone) DstCol <= 9'b0;
    else if(ReturnDone)
    begin
        if(DstColfull) DstCol <= 9'b0;
        else DstCol <= DstCol + 1'b1;
    end
    else DstCol <= DstCol;
end


/*--------------------------------------------------------------
                        Index ROM

//Store the values of i,j of every pixel on dst_image
//i,j is the index of src_image
//The data on the same line of dst_image share the same i
//The data on the same column of dst_image share the same j
--------------------------------------------------------------*/
wire [7:0] SrcI;
wire [8:0] SrcJ;

ROM_8bit_260 SRCI(.a(DstRow),.spo(SrcI));
ROM_9bit_260 SRCJ(.a(DstCol),.spo(SrcJ));

wire [7:0] SrcI_plus1;
wire [8:0] SrcJ_plus1;
assign SrcI_plus1 = SrcI + 1'b1;
assign SrcJ_plus1 = SrcJ + 1'b1;

wire [7:0] SrcIdx0;
wire [8:0] SrcIdx1;

assign SrcIdx1 = FetchState[0] ? SrcJ_plus1 : SrcJ;
assign SrcIdx0 = (SrcI == 239) ? SrcI       : (
                 FetchState[1] ? SrcI_plus1 : SrcI);


wire [16:0] CameraRAMAddr;
assign CameraRAMAddr = SrcIdx0 * 320 + SrcIdx1;


/*--------------------------------------------------------------
                        Pixels Registers

//Store the value of F(0,0)~F(1,1) that come out from CameraRAM
//They are all in form of RGB565,so first we should devide each
//of them into three channels,each channel is 8bit
--------------------------------------------------------------*/
reg [7:0] R00,R01,R10,R11;
reg [7:0] G00,G01,G10,G11;
reg [7:0] B00,B01,B10,B11;
always@(posedge clk or negedge rstn)
begin
    if(~rstn)
    begin
        R00 <= 8'b0;
        G00 <= 8'b0;
        B00 <= 8'b0;
    end
    else if((FetchState == 1) & HREADYOUTM)
    begin
        R00 <= HRDATAM[15:11] << 3;
        G00 <= HRDATAM[10:5]  << 2;
        B00 <= HRDATAM[4:0]   << 3;
    end
    else 
    begin
        R00 <= R00;
        G00 <= G00;
        B00 <= B00;        
    end
end

always@(posedge clk or negedge rstn)
begin
    if(~rstn)
    begin
        R01 <= 8'b0;
        G01 <= 8'b0;
        B01 <= 8'b0;
    end
    else if((FetchState == 2) & HREADYOUTM)
    begin
        R01 <= HRDATAM[15:11] << 3;
        G01 <= HRDATAM[10:5]  << 2;
        B01 <= HRDATAM[4:0]   << 3;
    end
    else 
    begin
        R01 <= R01;
        G01 <= G01;
        B01 <= B01;        
    end
end

always@(posedge clk or negedge rstn)
begin
    if(~rstn)
    begin
        R10 <= 8'b0;
        G10 <= 8'b0;
        B10 <= 8'b0;
    end
    else if((FetchState == 3) & HREADYOUTM)
    begin
        R10 <= HRDATAM[15:11] << 3;
        G10 <= HRDATAM[10:5]  << 2;
        B10 <= HRDATAM[4:0]   << 3;
    end
    else 
    begin
        R10 <= R10;
        G10 <= G10;
        B10 <= B10;        
    end
end

always@(posedge clk or negedge rstn)
begin
    if(~rstn)
    begin
        R11 <= 8'b0;
        G11 <= 8'b0;
        B11 <= 8'b0;
    end
    else if((FetchState == 4) & HREADYOUTM)
    begin
        R11 <= HRDATAM[15:11] << 3;
        G11 <= HRDATAM[10:5]  << 2;
        B11 <= HRDATAM[4:0]   << 3;
    end
    else 
    begin
        R11 <= R11;
        G11 <= G11;
        B11 <= B11;        
    end
end

/*--------------------------------------------------------------
                        UV ROM

//Store the value of U,V on src_image
//Use U,V to generate (1-U),(1-V) and 4 weights
--------------------------------------------------------------*/
wire [7:0] U,V,CU,CV;
UROM UROM(.clk(clk),.a(DstCol),.qspo(U));
VROM VROM(.clk(clk),.a(DstRow),.qspo(V));

assign CU = (U == 0) ? 8'hFF : (~ U) + 1'b1;
assign CV = (V == 0) ? 8'hFF : (~ V) + 1'b1;

wire [15:0] W00,W01,W10,W11;
mult_8_8_16 GENERATE_W00(.CLK(clk),.A(CV),.B(CU),.P(W00));
mult_8_8_16 GENERATE_W01(.CLK(clk),.A(CV),.B(U), .P(W01));
mult_8_8_16 GENERATE_W10(.CLK(clk),.A(V), .B(CU),.P(W10));
mult_8_8_16 GENERATE_W11(.CLK(clk),.A(V), .B(U), .P(W11));

wire [15:0] RSUM,GSUM,BSUM;
CalcuArray RCalcu( 
    //Weights
    .W00(W00),
    .W01(W01),
    .W10(W10),
    .W11(W11),    

    //DATA
    .D00(R00),
    .D01(R01),
    .D10(R10),
    .D11(R11),

    //OUTPUT
    .SUM(RSUM)    
);

CalcuArray GCalcu( 
    //Weights
    .W00(W00),
    .W01(W01),
    .W10(W10),
    .W11(W11),    

    //DATA
    .D00(G00),
    .D01(G01),
    .D10(G10),
    .D11(G11),

    //OUTPUT
    .SUM(GSUM)    
);

CalcuArray BCalcu( 
    //Weights
    .W00(W00),
    .W01(W01),
    .W10(W10),
    .W11(W11),    

    //DATA
    .D00(B00),
    .D01(B01),
    .D10(B10),
    .D11(B11),

    //OUTPUT
    .SUM(BSUM)    
);

/*--------------------------------------------------------------
                        AHB Signals
--------------------------------------------------------------*/
assign HSELM = 1'b1;

assign HSIZEM = 3'b010; 

assign HBURSTM = 3'b0; //single trans

assign HPROTM = 4'b0011;

assign HMASTERM = 4'b0;

assign HREADYM = HREADYOUTM; 

assign HREADYOUTS = 1'b1;

assign HRDATAS = {31'b0, (s_addr1 == 4'b0000) ? Start : 1'b0};

assign HRESPS = 2'b00;


assign HTRANSM[0] = 1'b0;
assign HTRANSM[1] = (StateG == FETCH) ? ~FetchState[2] : (
                    (StateG == RETURN) ? ~ (ReturnState[1] & ReturnState[0]) : 1'b0);

assign HWRITEM = HTRANSM[1] & (StateG == RETURN);

assign HWDATAM[31:16] = 16'b0;
assign HWDATAM[15:0] = ~(StateG == RETURN)     ? 16'b0 : (
                        (ReturnState == 2'b01) ? RSUM  : (
                        (ReturnState == 2'b10) ? GSUM  : (
                        (ReturnState == 2'b11) ? BSUM  : 16'b0)));

wire [31:0] DstbRAddr,DstbAddr;
assign DstbRAddr = (DstRow + 1'b1) * 262 + (DstCol + 1'b1);

assign DstbAddr  = (ReturnState == 2'b00) ? DstbRAddr          : (
                   (ReturnState == 2'b01) ? DstbRAddr + 68644  : (
                   (ReturnState == 2'b10) ? DstbRAddr + 137288 : 32'b0)); 

wire [31:0] FetchAddr,ReturnAddr;
assign HADDRM = (StateG == FETCH)  ? FetchAddr  : (
                (StateG == RETURN) ? ReturnAddr : 32'b0);

assign FetchAddr  = CameraAddr + (CameraRAMAddr << 2);
assign ReturnAddr = ACCInAddr  + (DstbAddr      << 2);

endmodule