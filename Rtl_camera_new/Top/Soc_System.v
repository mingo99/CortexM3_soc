`timescale 1ns / 1ps
module CortexM3_Soc #(
    parameter                   SimPresent = 0
)(
    // Clock&Reset
    input       wire            CLK50M,
    input       wire            RSTn,
    output      wire            RST_LED,
    // SWD
    inout       wire            SWDIO,
    input       wire            SWCLK,
    // UART
    output      wire            TXD,
    input       wire            RXD,
    output      wire            TXDLED,
    // GPIO
    inout       wire  [15:0]    GPIO,
    // KEY
    input       wire  [3:0]     col,
    output                      row,
    // Digtal tube
    output      wire  [7:0]     seg,
    output      wire  [5:0]     dig,
    // LCD
    output      wire            LCD_CS,
    output      wire            LCD_RS,
    output      wire            LCD_WR,
    output      wire            LCD_RD,
    output      wire            LCD_RST,
    output      wire  [15:0]    LCD_DATA,
    output      wire            LCD_BL_CTR,
    // CAMERA
    output      wire            CAMERA_PWDN,
    output      wire            CAMERA_RST,
    output      wire            CAMERA_SCL,
    inout       wire            CAMERA_SDA,
    input       wire            CAMERA_PCLK,
    input       wire            CAMERA_VSYNC,
    input       wire            CAMERA_HREF,
    input       wire  [7:0]     CAMERA_DATA,
    //output      wire            datavalid_test,
    // DDR
    output      wire  [14:0]    ddr3_addr,
    output      wire  [2:0]     ddr3_ba,
    output      wire            ddr3_cas_n,
    output      wire            ddr3_ck_n,
    output      wire            ddr3_ck_p,
    output      wire            ddr3_cke,
    output      wire            ddr3_ras_n,
    output      wire            ddr3_reset_n,
    output      wire            ddr3_we_n,
    output      wire            init_calib_complete,
    output      wire            ddr3_cs_n,
    output      wire  [3:0]     ddr3_dm,
    output      wire            ddr3_odt,
    inout       wire  [31:0]    ddr3_dq,
    inout       wire  [3:0]     ddr3_dqs_n,
    inout       wire  [3:0]     ddr3_dqs_p
);

assign  TXDLED = ~TXD;
assign  RST_LED = RSTn ? 1'b1 : 1'b0;

//------------------------------------------------------------------------------
// BUFG
//------------------------------------------------------------------------------

wire            clk;
wire            swck;
wire            pclk;
wire            clk_ddr;

generate 
        if(SimPresent) begin : SimClock

                assign swck = SWCLK;
                assign clk  = CLK50M;
                assign pclk = CAMERA_PCLK;
        
        end else begin : SynClock

                BUFG sw_clk(
                    .I                  (SWCLK),
                    .O                  (swck)
                );

                BUFG camera_clk(
                    .I                  (CAMERA_PCLK),
                    .O                  (pclk)
                );
                
                PLL Global_CLK_PLL(
                    .clk_in             (CLK50M),
                    .resetn             (RSTn), 
                    .clk_10M            (),     
                    .clk_50M            (clk),     
                    .locked             ()      
                );     

        end    
endgenerate         


//------------------------------------------------------------------------------
// DEBUG IOBUF 
//------------------------------------------------------------------------------

wire            SWDO;
wire            SWDOEN;
wire            SWDI;

generate
    if(SimPresent) begin : SimIOBuf

        assign SWDI = SWDIO;
        assign SWDIO = (SWDOEN) ?  SWDO : 1'bz;

    end 
    else begin : SynIOBuf

        IOBUF SWIOBUF(
        .O                  (SWDI),//Bufferoutput
        .IO                 (SWDIO),//Bufferinoutport(connectdirectlytotop-levelport)
        .I                  (SWDO),//Bufferinput
        .T                  (~SWDOEN)//3-stateenableinput,high=input,low=output
        );        
    
    end
endgenerate

//------------------------------------------------------------------------------
// RESET
//------------------------------------------------------------------------------

wire            SYSRESETREQ;
reg             cpuresetn;

always @(posedge clk or negedge RSTn)begin
    if (~RSTn) 
        cpuresetn <= 1'b0;
    else if (SYSRESETREQ) 
        cpuresetn <= 1'b0;
    else 
        cpuresetn <= 1'b1;
end

wire        SLEEPing;

//------------------------------------------------------------------------------
// DEBUG CONFIG
//------------------------------------------------------------------------------

wire            CDBGPWRUPREQ;
reg             CDBGPWRUPACK;

always @(posedge clk or negedge RSTn)begin
    if (~RSTn) 
        CDBGPWRUPACK <= 1'b0;
    else 
        CDBGPWRUPACK <= CDBGPWRUPREQ;
end

//------------------------------------------------------------------------------
// INTERRUPT 
//------------------------------------------------------------------------------
wire    [239:0] IRQ;

//------------------------------------------------------------------------------
// KeyBoard 
//------------------------------------------------------------------------------
wire    [3:0]   key_INT;

KeyBoard KeyBoard_IRQ(
        .HCLK                   (clk),
        .HRESETn                (RSTn),
        .col                    (col),
        .row                    (row),
        .key_interrupt          (key_INT)
);

//------------------------------------------------------------------------------
// CORE BUS
//------------------------------------------------------------------------------

// CPU I-Code 
wire    [31:0]  HADDRI;
wire    [1:0]   HTRANSI;
wire    [2:0]   HSIZEI;
wire    [2:0]   HBURSTI;
wire    [3:0]   HPROTI;
wire    [31:0]  HRDATAI;
wire            HREADYI;
wire    [1:0]   HRESPI;

// CPU D-Code 
wire    [31:0]  HADDRD;
wire    [1:0]   HTRANSD;
wire    [2:0]   HSIZED;
wire    [2:0]   HBURSTD;
wire    [3:0]   HPROTD;
wire    [31:0]  HWDATAD;
wire            HWRITED;
wire    [31:0]  HRDATAD;
wire            HREADYD;
wire    [1:0]   HRESPD;
wire    [1:0]   HMASTERD;

// CPU System bus 
wire    [31:0]  HADDRS;
wire    [1:0]   HTRANSS;
wire            HWRITES;
wire    [2:0]   HSIZES;
wire    [31:0]  HWDATAS;
wire    [2:0]   HBURSTS;
wire    [3:0]   HPROTS;
wire            HREADYS;
wire    [31:0]  HRDATAS;
wire    [1:0]   HRESPS;
wire    [1:0]   HMASTERS;
wire            HMASTERLOCKS;

//------------------------------------------------------------------------------
// DMA BUS
//------------------------------------------------------------------------------

wire    [31:0]  HADDRDM;
wire    [1:0]   HTRANSDM;
wire            HWRITEDM;
wire    [2:0]   HSIZEDM;
wire    [31:0]  HWDATADM;
wire    [2:0]   HBURSTDM;
wire    [3:0]   HPROTDM;
wire            HREADYDM;
wire    [31:0]  HRDATADM;
wire    [1:0]   HRESPDM;
wire    [1:0]   HMASTERDM;
wire            HMASTERLOCKDM;

//assign  HADDRDM         =   32'b0;
//assign  HTRANSDM        =   2'b0;
//assign  HWRITEDM        =   1'b0;
//assign  HSIZEDM         =   3'b0;
//assign  HWDATADM        =   32'b0;
//assign  HBURSTDM        =   3'b0;
//assign  HPROTDM         =   4'b0;
//assign  HMASTERDM       =   2'b0;
//assign  HMASTERLOCKDM   =   1'b0;
//------------------------------------------------------------------------------
// ACC BUS
//------------------------------------------------------------------------------
wire    [31:0]  HADDRAC;
wire    [1:0]   HTRANSAC;
wire            HWRITEAC;
wire    [2:0]   HSIZEAC;
wire    [31:0]  HWDATAAC;
wire    [2:0]   HBURSTAC;
wire    [3:0]   HPROTAC;
wire            HREADYAC;
wire    [31:0]  HRDATAAC;
wire    [1:0]   HRESPAC;
wire    [1:0]   HMASTERAC;
wire            HMASTERLOCKAC;
//------------------------------------------------------------------------------
// RESIZER BUS
//------------------------------------------------------------------------------
wire    [31:0]  HADDRRE;
wire    [1:0]   HTRANSRE;
wire            HWRITERE;
wire    [2:0]   HSIZERE;
wire    [31:0]  HWDATARE;
wire    [2:0]   HBURSTRE;
wire    [3:0]   HPROTRE;
wire            HREADYRE;
wire    [31:0]  HRDATARE;
wire    [1:0]   HRESPRE;
wire    [1:0]   HMASTERRE;
wire            HMASTERLOCKRE;

//------------------------------------------------------------------------------
// Instantiate Cortex-M3 processor 
//------------------------------------------------------------------------------

cortexm3ds_logic CortexM3_Core(
    // PMU
    .ISOLATEn                           (1'b1),
    .RETAINn                            (1'b1),

    // RESETS
    .PORESETn                           (RSTn),
    .SYSRESETn                          (cpuresetn),
    .SYSRESETREQ                        (SYSRESETREQ),
    .RSTBYPASS                          (1'b0),
    .CGBYPASS                           (1'b0),
    .SE                                 (1'b0),

    // CLOCKS
    .FCLK                               (clk),
    .HCLK                               (clk),
    .TRACECLKIN                         (1'b0),

    // SYSTICK
    .STCLK                              (1'b0),
    .STCALIB                            (26'b0),
    .AUXFAULT                           (32'b0),

    // CONFIG - SYSTEM
    .BIGEND                             (1'b0),
    .DNOTITRANS                         (1'b1),
    
    // SWJDAP
    .nTRST                              (1'b1),
    .SWDITMS                            (SWDI),
    .SWCLKTCK                           (swck),
    .TDI                                (1'b0),
    .CDBGPWRUPACK                       (CDBGPWRUPACK),
    .CDBGPWRUPREQ                       (CDBGPWRUPREQ),
    .SWDO                               (SWDO),
    .SWDOEN                             (SWDOEN),

    // IRQS
    .INTISR                             (IRQ),
    .INTNMI                             (1'b0),
    
    // I-CODE BUS
    .HREADYI                            (HREADYI),
    .HRDATAI                            (HRDATAI),
    .HRESPI                             (HRESPI),
    .IFLUSH                             (1'b0),
    .HADDRI                             (HADDRI),
    .HTRANSI                            (HTRANSI),
    .HSIZEI                             (HSIZEI),
    .HBURSTI                            (HBURSTI),
    .HPROTI                             (HPROTI),

    // D-CODE BUS
    .HREADYD                            (HREADYD),
    .HRDATAD                            (HRDATAD),
    .HRESPD                             (HRESPD),
    .EXRESPD                            (1'b0),
    .HADDRD                             (HADDRD),
    .HTRANSD                            (HTRANSD),
    .HSIZED                             (HSIZED),
    .HBURSTD                            (HBURSTD),
    .HPROTD                             (HPROTD),
    .HWDATAD                            (HWDATAD),
    .HWRITED                            (HWRITED),
    .HMASTERD                           (HMASTERD),

    // SYSTEM BUS
    .HREADYS                            (HREADYS),
    .HRDATAS                            (HRDATAS),
    .HRESPS                             (HRESPS),
    .EXRESPS                            (1'b0),
    .HADDRS                             (HADDRS),
    .HTRANSS                            (HTRANSS),
    .HSIZES                             (HSIZES),
    .HBURSTS                            (HBURSTS),
    .HPROTS                             (HPROTS),
    .HWDATAS                            (HWDATAS),
    .HWRITES                            (HWRITES),
    .HMASTERS                           (HMASTERS),
    .HMASTLOCKS                         (HMASTERLOCKS),

    // SLEEP
    .RXEV                               (1'b0),
    .SLEEPHOLDREQn                      (1'b1),
    .SLEEPING                           (SLEEPing),
    
    // EXTERNAL DEBUG REQUEST
    .EDBGRQ                             (1'b0),
    .DBGRESTART                         (1'b0),
    
    // DAP HMASTER OVERRIDE
    .FIXMASTERTYPE                      (1'b0),

    // WIC
    .WICENREQ                           (1'b0),

    // TIMESTAMP INTERFACE
    .TSVALUEB                           (48'b0),

    // CONFIG - DEBUG
    .DBGEN                              (1'b1),
    .NIDEN                              (1'b1),
    .MPUDISABLE                         (1'b0)
);


//------------------------------------------------------------------------------
// AHB DMA
//------------------------------------------------------------------------------

wire            DMAstart;
wire    [31:0]  DMAsrc;
wire    [31:0]  DMAdst;
wire    [2:0]   DMAsize;
wire    [31:0]  DMAlen;
wire            DMA_Event;            

DMA  DMA (
    .HCLK                    (clk),
    .HRESETn                 (cpuresetn),
    .HRDATAD                 (HRDATADM),
    .HREADYD                 (HREADYDM),
    .HRESPD                  (HRESPDM),
    .HADDRD                  (HADDRDM),
    .HTRANSD                 (HTRANSDM),
    .HSIZED                  (HSIZEDM),
    .HBURSTD                 (HBURSTDM),
    .HPROTD                  (HPROTDM),
    .HWRITED                 (HWRITEDM),
    .HWDATAD                 (HWDATADM),

    .DMAstart                (DMAstart),
    .DMAsrc                  (DMAsrc),
    .DMAdst                  (DMAdst),
    .DMAsize                 (DMAsize),
    .DMAlen                  (DMAlen),
    .DMAdone                 (DMA_Event)
);


//------------------------------------------------------------------------------
// AHB L1 BUS MATRIX
//------------------------------------------------------------------------------

// ITCM BUS
wire    [31:0]  HADDR_AHBL1_ITCM;
wire    [1:0]   HTRANS_AHBL1_ITCM;
wire            HWRITE_AHBL1_ITCM;
wire    [2:0]   HSIZE_AHBL1_ITCM;
wire    [31:0]  HWDATA_AHBL1_ITCM;
wire    [2:0]   HBURST_AHBL1_ITCM;
wire    [3:0]   HPROT_AHBL1_ITCM;
wire            HREADY_AHBL1_ITCM;
wire    [31:0]  HRDATA_AHBL1_ITCM;
wire    [1:0]   HRESP_AHBL1_ITCM;
wire            HREADYOUT_AHBL1_ITCM;
wire            HSEL_AHBL1_ITCM;
wire    [3:0]   HMASTER_AHBL1_ITCM;
wire            HMASTERLOCK_AHBL1_ITCM;

// DTCM BUS
wire    [31:0]  HADDR_AHBL1_DTCM;
wire    [1:0]   HTRANS_AHBL1_DTCM;
wire            HWRITE_AHBL1_DTCM;
wire    [2:0]   HSIZE_AHBL1_DTCM;
wire    [31:0]  HWDATA_AHBL1_DTCM;
wire    [2:0]   HBURST_AHBL1_DTCM;
wire    [3:0]   HPROT_AHBL1_DTCM;
wire            HREADY_AHBL1_DTCM;
wire    [31:0]  HRDATA_AHBL1_DTCM;
wire    [1:0]   HRESP_AHBL1_DTCM;
wire            HREADYOUT_AHBL1_DTCM;
wire            HSEL_AHBL1_DTCM;
wire    [3:0]   HMASTER_AHBL1_DTCM;
wire            HMASTERLOCK_AHBL1_DTCM;

// AHBSYNCBRIDGE BUS
wire    [31:0]  HADDR_AHBL1_AHBSync;
wire    [1:0]   HTRANS_AHBL1_AHBSync;
wire            HWRITE_AHBL1_AHBSync;
wire    [2:0]   HSIZE_AHBL1_AHBSync;
wire    [31:0]  HWDATA_AHBL1_AHBSync;
wire    [2:0]   HBURST_AHBL1_AHBSync;
wire    [3:0]   HPROT_AHBL1_AHBSync;
wire            HREADY_AHBL1_AHBSync;
wire    [31:0]  HRDATA_AHBL1_AHBSync;
wire    [1:0]   HRESP_AHBL1_AHBSync;
wire            HREADYOUT_AHBL1_AHBSync;
wire            HSEL_AHBL1_AHBSync;
wire    [3:0]   HMASTER_AHBL1_AHBSync;
wire            HMASTERLOCK_AHBL1_AHBSync;

// APBBRIDGE BUS
wire    [31:0]  HADDR_AHBL1_APB;
wire    [1:0]   HTRANS_AHBL1_APB;
wire            HWRITE_AHBL1_APB;
wire    [2:0]   HSIZE_AHBL1_APB;
wire    [31:0]  HWDATA_AHBL1_APB;
wire    [2:0]   HBURST_AHBL1_APB;
wire    [3:0]   HPROT_AHBL1_APB;
wire            HREADY_AHBL1_APB;
wire    [31:0]  HRDATA_AHBL1_APB;
wire    [1:0]   HRESP_AHBL1_APB;
wire            HREADYOUT_AHBL1_APB;
wire            HSEL_AHBL1_APB;
wire    [3:0]   HMASTER_AHBL1_APB;
wire            HMASTERLOCK_AHBL1_APB;

// AHBDDR BUS
wire    [31:0]  HADDR_AHBL1_DDR;
wire    [1:0]   HTRANS_AHBL1_DDR;
wire            HWRITE_AHBL1_DDR;
wire    [2:0]   HSIZE_AHBL1_DDR;
wire    [31:0]  HWDATA_AHBL1_DDR;
wire    [2:0]   HBURST_AHBL1_DDR;
wire    [3:0]   HPROT_AHBL1_DDR;
wire            HREADY_AHBL1_DDR;
wire    [31:0]  HRDATA_AHBL1_DDR;
wire    [1:0]   HRESP_AHBL1_DDR;
wire            HREADYOUT_AHBL1_DDR;
wire            HSEL_AHBL1_DDR;
wire    [3:0]   HMASTER_AHBL1_DDR;
wire            HMASTERLOCK_AHBL1_DDR;

// AHBASYNCBRIDGE BUS
//wire    [31:0]  HADDR_AHBL1_AHBAsync;
//wire    [1:0]   HTRANS_AHBL1_AHBAsync;
//wire            HWRITE_AHBL1_AHBAsync;
//wire    [2:0]   HSIZE_AHBL1_AHBAsync;
//wire    [31:0]  HWDATA_AHBL1_AHBAsync;
//wire    [2:0]   HBURST_AHBL1_AHBAsync;
//wire    [3:0]   HPROT_AHBL1_AHBAsync;
//wire            HREADY_AHBL1_AHBAsync;
//wire    [31:0]  HRDATA_AHBL1_AHBAsync;
//wire    [1:0]   HRESP_AHBL1_AHBAsync;
//wire            HREADYOUT_AHBL1_AHBAsync;
//wire            HSEL_AHBL1_AHBAsync;
//wire    [3:0]   HMASTER_AHBL1_AHBAsync;
//wire            HMASTERLOCK_AHBL1_AHBAsync;

// DMAC BUS
wire    [31:0]  HADDR_AHBL1_DMAC;
wire    [1:0]   HTRANS_AHBL1_DMAC;
wire            HWRITE_AHBL1_DMAC;
wire    [2:0]   HSIZE_AHBL1_DMAC;
wire    [31:0]  HWDATA_AHBL1_DMAC;
wire    [2:0]   HBURST_AHBL1_DMAC;
wire    [3:0]   HPROT_AHBL1_DMAC;
wire            HREADY_AHBL1_DMAC;
wire    [31:0]  HRDATA_AHBL1_DMAC;
wire    [1:0]   HRESP_AHBL1_DMAC;
wire            HREADYOUT_AHBL1_DMAC;
wire            HSEL_AHBL1_DMAC;
wire    [3:0]   HMASTER_AHBL1_DMAC;
wire            HMASTERLOCK_AHBL1_DMAC;

// ACCC BUS
wire    [31:0]  HADDR_AHBL1_ACCC;
wire    [1:0]   HTRANS_AHBL1_ACCC;
wire            HWRITE_AHBL1_ACCC;
wire    [2:0]   HSIZE_AHBL1_ACCC;
wire    [31:0]  HWDATA_AHBL1_ACCC;
wire    [2:0]   HBURST_AHBL1_ACCC;
wire    [3:0]   HPROT_AHBL1_ACCC;
wire            HREADY_AHBL1_ACCC;
wire    [31:0]  HRDATA_AHBL1_ACCC;
wire    [1:0]   HRESP_AHBL1_ACCC;
wire            HREADYOUT_AHBL1_ACCC;
wire            HSEL_AHBL1_ACCC;
wire    [3:0]   HMASTER_AHBL1_ACCC;
wire            HMASTERLOCK_AHBL1_ACCC;

// RESIZER BUS
wire    [31:0]  HADDR_AHBL1_RESIZER;
wire    [1:0]   HTRANS_AHBL1_RESIZER;
wire            HWRITE_AHBL1_RESIZER;
wire    [2:0]   HSIZE_AHBL1_RESIZER;
wire    [31:0]  HWDATA_AHBL1_RESIZER;
wire    [2:0]   HBURST_AHBL1_RESIZER;
wire    [3:0]   HPROT_AHBL1_RESIZER;
wire            HREADY_AHBL1_RESIZER;
wire    [31:0]  HRDATA_AHBL1_RESIZER;
wire    [1:0]   HRESP_AHBL1_RESIZER;
wire            HREADYOUT_AHBL1_RESIZER;
wire            HSEL_AHBL1_RESIZER;
wire    [3:0]   HMASTER_AHBL1_RESIZER;
wire            HMASTERLOCK_AHBL1_RESIZER;

AhbMtx_L1    AHBMTXL1(
    .HCLK                               (clk),
    .HRESETn                            (cpuresetn),

    .REMAP                              (4'b0),
// ICODE BUS
    .HSELS0                             (1'b1),
    .HADDRS0                            (HADDRI),
    .HTRANSS0                           (HTRANSI),
    .HWRITES0                           (1'b0),
    .HSIZES0                            (HSIZEI),
    .HBURSTS0                           (HBURSTI),
    .HPROTS0                            (HPROTI),
    .HMASTERS0                          (4'b0),
    .HWDATAS0                           (32'b0),
    .HMASTLOCKS0                        (1'b0),
    .HREADYS0                           (HREADYI),
    .HRDATAS0                           (HRDATAI),
    .HREADYOUTS0                        (HREADYI),
    .HRESPS0                            (HRESPI),
// DCODE BUS
    .HSELS1                             (1'b1),
    .HADDRS1                            (HADDRD),
    .HTRANSS1                           (HTRANSD),
    .HWRITES1                           (HWRITED),
    .HSIZES1                            (HSIZED),
    .HBURSTS1                           (HBURSTD),
    .HPROTS1                            (HPROTD),
    .HMASTERS1                          ({2'b0,HMASTERD}),
    .HWDATAS1                           (HWDATAD),
    .HMASTLOCKS1                        (1'b0),
    .HREADYS1                           (HREADYD),
    .HREADYOUTS1                        (HREADYD),
    .HRESPS1                            (HRESPD),
    .HRDATAS1                           (HRDATAD),
// SYSTEM BUS
    .HSELS2                             (1'b1),
    .HADDRS2                            (HADDRS),
    .HTRANSS2                           (HTRANSS),
    .HWRITES2                           (HWRITES),
    .HSIZES2                            (HSIZES),
    .HBURSTS2                           (HBURSTS),
    .HPROTS2                            (HPROTS),
    .HMASTERS2                          ({2'b0,HMASTERS}),
    .HWDATAS2                           (HWDATAS),
    .HMASTLOCKS2                        (HMASTERLOCKS),
    .HREADYS2                           (HREADYS),
    .HREADYOUTS2                        (HREADYS),
    .HRESPS2                            (HRESPS),
    .HRDATAS2                           (HRDATAS),    
// DMA SLAVE_IF
    .HSELS3                             (1'b1),
    .HADDRS3                            (HADDRDM),
    .HTRANSS3                           (HTRANSDM),
    .HWRITES3                           (HWRITEDM),
    .HSIZES3                            (HSIZEDM),
    .HBURSTS3                           (HBURSTDM),
    .HPROTS3                            (HPROTDM),
    .HMASTERS3                          ({2'b0,HMASTERDM}),
    .HWDATAS3                           (HWDATADM),
    .HMASTLOCKS3                        (HMASTERLOCKDM),
    .HREADYS3                           (HREADYDM),
    .HREADYOUTS3                        (HREADYDM),
    .HRESPS3                            (HRESPDM),
    .HRDATAS3                           (HRDATADM),
// ACC SLAVE_IF
    .HSELS4                             (1'b1),
    .HADDRS4                            (HADDRAC),
    .HTRANSS4                           (HTRANSAC),
    .HWRITES4                           (HWRITEAC),
    .HSIZES4                            (HSIZEAC),
    .HBURSTS4                           (HBURSTAC),
    .HPROTS4                            (HPROTAC),
    .HMASTERS4                          ({2'b0,HMASTERAC}),
    .HWDATAS4                           (HWDATAAC),
    .HMASTLOCKS4                        (HMASTERLOCKAC),
    .HREADYS4                           (HREADYAC),
    .HREADYOUTS4                        (HREADYAC),
    .HRESPS4                            (HRESPAC),
    .HRDATAS4                           (HRDATAAC),
// RESIZER SLAVE_IF
    .HSELS5                             (1'b1),
    .HADDRS5                            (HADDRRE),
    .HTRANSS5                           (HTRANSRE),
    .HWRITES5                           (HWRITERE),
    .HSIZES5                            (HSIZERE),
    .HBURSTS5                           (HBURSTRE),
    .HPROTS5                            (HPROTRE),
    .HMASTERS5                          ({2'b0,HMASTERRE}),
    .HWDATAS5                           (HWDATARE),
    .HMASTLOCKS5                        (HMASTERLOCKRE),
    .HREADYS5                           (HREADYRE),
    .HREADYOUTS5                        (HREADYRE),
    .HRESPS5                            (HRESPRE),
    .HRDATAS5                           (HRDATARE),

// ITCM MASTER_IF
    .HSELM0                             (HSEL_AHBL1_ITCM),
    .HADDRM0                            (HADDR_AHBL1_ITCM),
    .HTRANSM0                           (HTRANS_AHBL1_ITCM),
    .HWRITEM0                           (HWRITE_AHBL1_ITCM),
    .HSIZEM0                            (HSIZE_AHBL1_ITCM),
    .HBURSTM0                           (HBURST_AHBL1_ITCM),
    .HPROTM0                            (HPROT_AHBL1_ITCM),
    .HMASTERM0                          (HMASTER_AHBL1_ITCM),
    .HWDATAM0                           (HWDATA_AHBL1_ITCM),
    .HMASTLOCKM0                        (HMASTERLOCK_AHBL1_ITCM),
    .HREADYMUXM0                        (HREADY_AHBL1_ITCM),
    .HRDATAM0                           (HRDATA_AHBL1_ITCM),
    .HREADYOUTM0                        (HREADYOUT_AHBL1_ITCM),
    .HRESPM0                            (HRESP_AHBL1_ITCM),
// DTCM MASTER_IF
    .HSELM1                             (HSEL_AHBL1_DTCM),
    .HADDRM1                            (HADDR_AHBL1_DTCM),
    .HTRANSM1                           (HTRANS_AHBL1_DTCM),
    .HWRITEM1                           (HWRITE_AHBL1_DTCM),
    .HSIZEM1                            (HSIZE_AHBL1_DTCM),
    .HBURSTM1                           (HBURST_AHBL1_DTCM),
    .HPROTM1                            (HPROT_AHBL1_DTCM),
    .HMASTERM1                          (HMASTER_AHBL1_DTCM),
    .HWDATAM1                           (HWDATA_AHBL1_DTCM),
    .HMASTLOCKM1                        (HMASTERLOCK_AHBL1_DTCM),
    .HREADYMUXM1                        (HREADY_AHBL1_DTCM),
    .HRDATAM1                           (HRDATA_AHBL1_DTCM),
    .HREADYOUTM1                        (HREADYOUT_AHBL1_DTCM),
    .HRESPM1                            (HRESP_AHBL1_DTCM),
// APB Bridge MASTER_IF
    .HSELM2                             (HSEL_AHBL1_APB),
    .HADDRM2                            (HADDR_AHBL1_APB),
    .HTRANSM2                           (HTRANS_AHBL1_APB),
    .HWRITEM2                           (HWRITE_AHBL1_APB),
    .HSIZEM2                            (HSIZE_AHBL1_APB),
    .HBURSTM2                           (HBURST_AHBL1_APB),
    .HPROTM2                            (HPROT_AHBL1_APB),
    .HMASTERM2                          (HMASTER_AHBL1_APB),
    .HWDATAM2                           (HWDATA_AHBL1_APB),
    .HMASTLOCKM2                        (HMASTERLOCK_AHBL1_APB),
    .HREADYMUXM2                        (HREADY_AHBL1_APB),
    .HRDATAM2                           (HRDATA_AHBL1_APB),
    .HREADYOUTM2                        (HREADYOUT_AHBL1_APB),
    .HRESPM2                            (HRESP_AHBL1_APB),
// AHB SyncBridge MASTER_IF
    .HSELM3                             (HSEL_AHBL1_AHBSync),
    .HADDRM3                            (HADDR_AHBL1_AHBSync),
    .HTRANSM3                           (HTRANS_AHBL1_AHBSync),
    .HWRITEM3                           (HWRITE_AHBL1_AHBSync),
    .HSIZEM3                            (HSIZE_AHBL1_AHBSync),
    .HBURSTM3                           (HBURST_AHBL1_AHBSync),
    .HPROTM3                            (HPROT_AHBL1_AHBSync),
    .HMASTERM3                          (HMASTER_AHBL1_AHBSync),
    .HWDATAM3                           (HWDATA_AHBL1_AHBSync),
    .HMASTLOCKM3                        (HMASTERLOCK_AHBL1_AHBSync),
    .HREADYMUXM3                        (HREADY_AHBL1_AHBSync),
    .HRDATAM3                           (HRDATA_AHBL1_AHBSync),
    .HREADYOUTM3                        (HREADYOUT_AHBL1_AHBSync),
    .HRESPM3                            (HRESP_AHBL1_AHBSync),
// DDR MASTER_IF
    .HSELM4                             (HSEL_AHBL1_DDR),
    .HADDRM4                            (HADDR_AHBL1_DDR),
    .HTRANSM4                           (HTRANS_AHBL1_DDR),
    .HWRITEM4                           (HWRITE_AHBL1_DDR),
    .HSIZEM4                            (HSIZE_AHBL1_DDR),
    .HBURSTM4                           (HBURST_AHBL1_DDR),
    .HPROTM4                            (HPROT_AHBL1_DDR),
    .HMASTERM4                          (HMASTER_AHBL1_DDR),
    .HWDATAM4                           (HWDATA_AHBL1_DDR),
    .HMASTLOCKM4                        (HMASTERLOCK_AHBL1_DDR),
    .HREADYMUXM4                        (HREADY_AHBL1_DDR),
    .HRDATAM4                           (HRDATA_AHBL1_DDR),
    .HREADYOUTM4                        (HREADYOUT_AHBL1_DDR),
    .HRESPM4                            (HRESP_AHBL1_DDR),
// AHB AsyncBridge MASTER_IF
    //.HSELM4                             (HSEL_AHBL1_AHBAsync),
    //.HADDRM4                            (HADDR_AHBL1_AHBAsync),
    //.HTRANSM4                           (HTRANS_AHBL1_AHBAsync),
    //.HWRITEM4                           (HWRITE_AHBL1_AHBAsync),
    //.HSIZEM4                            (HSIZE_AHBL1_AHBAsync),
    //.HBURSTM4                           (HBURST_AHBL1_AHBAsync),
    //.HPROTM4                            (HPROT_AHBL1_AHBAsync),
    //.HMASTERM4                          (HMASTER_AHBL1_AHBAsync),
    //.HWDATAM4                           (HWDATA_AHBL1_AHBAsync),
    //.HMASTLOCKM4                        (HMASTERLOCK_AHBL1_AHBAsync),
    //.HREADYMUXM4                        (HREADY_AHBL1_AHBAsync),
    //.HRDATAM4                           (HRDATA_AHBL1_AHBAsync),
    //.HREADYOUTM4                        (HREADYOUT_AHBL1_AHBAsync),
    //.HRESPM4                            (HRESP_AHBL1_AHBAsync),
// DMAC MASTER_IF
    .HSELM5                             (HSEL_AHBL1_DMAC),
    .HADDRM5                            (HADDR_AHBL1_DMAC),
    .HTRANSM5                           (HTRANS_AHBL1_DMAC),
    .HWRITEM5                           (HWRITE_AHBL1_DMAC),
    .HSIZEM5                            (HSIZE_AHBL1_DMAC),
    .HBURSTM5                           (HBURST_AHBL1_DMAC),
    .HPROTM5                            (HPROT_AHBL1_DMAC),
    .HMASTERM5                          (HMASTER_AHBL1_DMAC),
    .HWDATAM5                           (HWDATA_AHBL1_DMAC),
    .HMASTLOCKM5                        (HMASTERLOCK_AHBL1_DMAC),
    .HREADYMUXM5                        (HREADY_AHBL1_DMAC),
    .HRDATAM5                           (HRDATA_AHBL1_DMAC),
    .HREADYOUTM5                        (HREADYOUT_AHBL1_DMAC),
    .HRESPM5                            (HRESP_AHBL1_DMAC),
// ACCC MASTER_IF
    .HSELM6                             (HSEL_AHBL1_ACCC),
    .HADDRM6                            (HADDR_AHBL1_ACCC),
    .HTRANSM6                           (HTRANS_AHBL1_ACCC),
    .HWRITEM6                           (HWRITE_AHBL1_ACCC),
    .HSIZEM6                            (HSIZE_AHBL1_ACCC),
    .HBURSTM6                           (HBURST_AHBL1_ACCC),
    .HPROTM6                            (HPROT_AHBL1_ACCC),
    .HMASTERM6                          (HMASTER_AHBL1_ACCC),
    .HWDATAM6                           (HWDATA_AHBL1_ACCC),
    .HMASTLOCKM6                        (HMASTERLOCK_AHBL1_ACCC),
    .HREADYMUXM6                        (HREADY_AHBL1_ACCC),
    .HRDATAM6                           (HRDATA_AHBL1_ACCC),
    .HREADYOUTM6                        (HREADYOUT_AHBL1_ACCC),
    .HRESPM6                            (HRESP_AHBL1_ACCC),
// RESIZER MASTER_IF
    .HSELM7                             (HSEL_AHBL1_RESIZER),
    .HADDRM7                            (HADDR_AHBL1_RESIZER),
    .HTRANSM7                           (HTRANS_AHBL1_RESIZER),
    .HWRITEM7                           (HWRITE_AHBL1_RESIZER),
    .HSIZEM7                            (HSIZE_AHBL1_RESIZER),
    .HBURSTM7                           (HBURST_AHBL1_RESIZER),
    .HPROTM7                            (HPROT_AHBL1_RESIZER),
    .HMASTERM7                          (HMASTER_AHBL1_RESIZER),
    .HWDATAM7                           (HWDATA_AHBL1_RESIZER),
    .HMASTLOCKM7                        (HMASTERLOCK_AHBL1_RESIZER),
    .HREADYMUXM7                        (HREADY_AHBL1_RESIZER),
    .HRDATAM7                           (HRDATA_AHBL1_RESIZER),
    .HREADYOUTM7                        (HREADYOUT_AHBL1_RESIZER),
    .HRESPM7                            (HRESP_AHBL1_RESIZER),

    .SCANENABLE                         (1'b0),
    .SCANINHCLK                         (1'b0),
    .SCANOUTHCLK                        ()
);

//------------------------------------------------------------------------------
// AHBL1 ITCM
//------------------------------------------------------------------------------

wire    [13:0]  ITCMADDR;
wire    [31:0]  ITCMRDATA,ITCMWDATA;
wire    [3:0]   ITCMWRITE;
wire            ITCMCS;

cmsdk_ahb_to_sram #(
    .AW                                 (16)
)   AHB_to_ITCM (
    .HCLK                               (clk),
    .HRESETn                            (cpuresetn),
    .HSEL                               (HSEL_AHBL1_ITCM),
    .HREADY                             (HREADY_AHBL1_ITCM),
    .HTRANS                             (HTRANS_AHBL1_ITCM),
    .HSIZE                              (HSIZE_AHBL1_ITCM),
    .HWRITE                             (HWRITE_AHBL1_ITCM),
    .HADDR                              (HADDR_AHBL1_ITCM[15:0]),
    .HWDATA                             (HWDATA_AHBL1_ITCM),
    .HREADYOUT                          (HREADYOUT_AHBL1_ITCM),
    .HRESP                              (HRESP_AHBL1_ITCM[0]),
    .HRDATA                             (HRDATA_AHBL1_ITCM),
    .SRAMRDATA                          (ITCMRDATA),
    .SRAMADDR                           (ITCMADDR),
    .SRAMWEN                            (ITCMWRITE),
    .SRAMWDATA                          (ITCMWDATA),
    .SRAMCS                             (ITCMCS)
);
assign  HRESP_AHBL1_ITCM[1]    =   1'b0;

cmsdk_fpga_sram #(
    .AW                                 (14)
)   ITCM    (
    .CLK                                (clk),
    .ADDR                               (ITCMADDR),
    .WDATA                              (ITCMWDATA),
    .WREN                               (ITCMWRITE),
    .CS                                 (ITCMCS),
    .RDATA                              (ITCMRDATA)
);

//------------------------------------------------------------------------------
// AHBL1 DTCM
//------------------------------------------------------------------------------

wire    [13:0]  DTCMADDR;
wire    [31:0]  DTCMRDATA,DTCMWDATA;
wire    [3:0]   DTCMWRITE;
wire            DTCMCS;

cmsdk_ahb_to_sram #(
    .AW                                 (16)
)   AHB_to_DTCM (
    .HCLK                               (clk),
    .HRESETn                            (cpuresetn),
    .HSEL                               (HSEL_AHBL1_DTCM),
    .HREADY                             (HREADY_AHBL1_DTCM),
    .HTRANS                             (HTRANS_AHBL1_DTCM),
    .HSIZE                              (HSIZE_AHBL1_DTCM),
    .HWRITE                             (HWRITE_AHBL1_DTCM),
    .HADDR                              (HADDR_AHBL1_DTCM[15:0]),
    .HWDATA                             (HWDATA_AHBL1_DTCM),
    .HREADYOUT                          (HREADYOUT_AHBL1_DTCM),
    .HRESP                              (HRESP_AHBL1_DTCM[0]),
    .HRDATA                             (HRDATA_AHBL1_DTCM),
    .SRAMRDATA                          (DTCMRDATA),
    .SRAMADDR                           (DTCMADDR),
    .SRAMWEN                            (DTCMWRITE),
    .SRAMWDATA                          (DTCMWDATA),
    .SRAMCS                             (DTCMCS)
);
assign  HRESP_AHBL1_DTCM[1]    =   1'b0;

cmsdk_fpga_sram #(
    .AW                                 (14)
)   DTCM    (
    .CLK                                (clk),
    .ADDR                               (DTCMADDR),
    .WDATA                              (DTCMWDATA),
    .WREN                               (DTCMWRITE),
    .CS                                 (DTCMCS),
    .RDATA                              (DTCMRDATA)
);

//------------------------------------------------------------------------------
// AHBL1 DDR
//------------------------------------------------------------------------------

DDR  DDR (
    .clk                     (clk),

    .HCLK                    (clk),
    .HRESETn                 (cpuresetn),
    .HSEL                    (HSEL_AHBL1_DDR),
    .HADDR                   (HADDR_AHBL1_DDR),
    .HPROT                   (HPROT_AHBL1_DDR),
    .HTRANS                  (HTRANS_AHBL1_DDR),
    .HSIZE                   (HSIZE_AHBL1_DDR),
    .HWRITE                  (HWRITE_AHBL1_DDR),
    .HBURST                  (HBURST_AHBL1_DDR),
    .HWDATA                  (HWDATA_AHBL1_DDR),
    .HREADY                  (HREADY_AHBL1_DDR),
    .HREADYOUT               (HREADYOUT_AHBL1_DDR),
    .HRDATA                  (HRDATA_AHBL1_DDR),
    .HRESP                   (HRESP_AHBL1_DDR[0]),

    .ddr3_addr               (ddr3_addr),
    .ddr3_ba                 (ddr3_ba),
    .ddr3_cas_n              (ddr3_cas_n),
    .ddr3_ck_n               (ddr3_ck_n),
    .ddr3_ck_p               (ddr3_ck_p),
    .ddr3_cke                (ddr3_cke),
    .ddr3_ras_n              (ddr3_ras_n),
    .ddr3_reset_n            (ddr3_reset_n),
    .ddr3_we_n               (ddr3_we_n),
    .init_calib_complete     (init_calib_complete),
    .ddr3_cs_n               (ddr3_cs_n),
    .ddr3_dm                 (ddr3_dm),
    .ddr3_odt                (ddr3_odt),
    .ddr3_dq                 (ddr3_dq),
    .ddr3_dqs_n              (ddr3_dqs_n),
    .ddr3_dqs_p              (ddr3_dqs_p)
);
assign  HRESP_AHBL1_DDR[1]  =   1'b0;

//------------------------------------------------------------------------------
// AHBL1 DMAC
//------------------------------------------------------------------------------

DMAC  DMAC (
    .HCLK                    (clk),
    .HRESETn                 (cpuresetn),
    .HSEL                    (HSEL_AHBL1_DMAC),
    .HADDR                   (HADDR_AHBL1_DMAC),
    .HTRANS                  (HTRANS_AHBL1_DMAC),
    .HSIZE                   (HSIZE_AHBL1_DMAC),
    .HPROT                   (HPROT_AHBL1_DMAC),
    .HWRITE                  (HWRITE_AHBL1_DMAC),
    .HWDATA                  (HWDATA_AHBL1_DMAC),
    .HREADY                  (HREADY_AHBL1_DMAC),
    .HREADYOUT               (HREADYOUT_AHBL1_DMAC),
    .HRDATA                  (HRDATA_AHBL1_DMAC),
    .HRESP                   (HRESP_AHBL1_DMAC),
   
    .SLEEPing                (SLEEPing),
    .DMAstart                (DMAstart),
    .DMAsrc                  (DMAsrc),
    .DMAdst                  (DMAdst),
    .DMAsize                 (DMAsize),
    .DMAlen                  (DMAlen)
);

//------------------------------------------------------------------------------
// AHBL1  ACC
//------------------------------------------------------------------------------

wire  ACCConvDoneINT;
wire  ACCNoFaceINT;
wire  ACCReadResultsINT;

ACC ACC (
    .clk                     (clk),
    //.clk_ila                 (CLK50M),
    .rstn                    (cpuresetn),  
//ACC MASTER
    .HSELM                   (),
    .HADDRM                  (HADDRAC),
    .HTRANSM                 (HTRANSAC),
    .HWRITEM                 (HWRITEAC),
    .HSIZEM                  (HSIZEAC),
    .HBURSTM                 (HBURSTAC),
    .HPROTM                  (HPROTAC),
    .HWDATAM                 (HWDATAAC),
    .HMASTERM                (HMASTERAC),
    .HREADYM                 (),
    .HRDATAM                 (HRDATAAC),
    .HREADYOUTM              (HREADYAC),
//ACCC SLAVE
    .HADDRS                  (HADDR_AHBL1_ACCC),
    .HTRANSS                 (HTRANS_AHBL1_ACCC),
    .HWRITES                 (HWRITE_AHBL1_ACCC),
    .HWDATAS                 (HWDATA_AHBL1_ACCC),
    .HREADYS                 (HREADY_AHBL1_ACCC),
    .HSELS                   (HSEL_AHBL1_ACCC),
    .HRDATAS                 (HRDATA_AHBL1_ACCC),
    .HRESPS                  (HRESP_AHBL1_ACCC[0]),
    .HREADYOUTS              (HREADYOUT_AHBL1_ACCC),
//Interrupt&Debug
    .conv_done               (ACCConvDoneINT),
    .no_face_detected        (ACCNoFaceINT),
    .you_can_rd_result       (ACCReadResultsINT),
    .conv_status             (),
    .pool_status             (),
    .nms_status              ()
);
assign  HRESP_AHBL1_ACCC[1]    =   1'b0;

//------------------------------------------------------------------------------
// AHBL1  RESIZER
//------------------------------------------------------------------------------

wire resizer_INT;

Resizer #(
    .CameraAddr (32'h4040AA00)
)   IMG_Resizer (
    .clk                     (clk),
    .rstn                    (cpuresetn),
    .HSELS                   (HSEL_AHBL1_RESIZER),
    .HADDRS                  (HADDR_AHBL1_RESIZER),
    .HTRANSS                 (HTRANS_AHBL1_RESIZER),
    .HWRITES                 (HWRITE_AHBL1_RESIZER),
    .HWDATAS                 (HWDATA_AHBL1_RESIZER),
    .HREADYS                 (HREADY_AHBL1_RESIZER),
    .HRDATAS                 (HRDATA_AHBL1_RESIZER),
    .HRESPS                  (HRESP_AHBL1_RESIZER[0]),
    .HREADYOUTS              (HREADYOUT_AHBL1_RESIZER),

    .HSELM                   (),
    .HADDRM                  (HADDRRE),
    .HTRANSM                 (HTRANSRE),
    .HWRITEM                 (HWRITERE),
    .HSIZEM                  (HSIZERE),
    .HBURSTM                 (HBURSTRE),
    .HPROTM                  (HPROTRE),
    .HWDATAM                 (HWDATARE),
    .HMASTERM                (HMASTERRE),
    .HREADYM                 (),
    .HRDATAM                 (HRDATARE),
    .HREADYOUTM              (HREADYRE),

    .ResizeDone              (resizer_INT)
);
assign  HRESP_AHBL1_RESIZER[1]    =   1'b0;

//------------------------------------------------------------------------------
// AHBL1 AHB_TO_AHB_SYNC_BRIDGE
//------------------------------------------------------------------------------

wire    [31:0]  HADDR_AHBL2M;
wire    [1:0]   HTRANS_AHBL2M;
wire    [2:0]   HSIZE_AHBL2M;
wire            HWRITE_AHBL2M;
wire    [3:0]   HPROT_AHBL2M;
wire    [1:0]   HMASTER_AHBL2M;
wire            HMASTERLOCK_AHBL2M;
wire    [31:0]  HWDATA_AHBL2M;
wire    [2:0]   HBURST_AHBL2M;
wire            HREADY_AHBL2M;
wire    [1:0]   HRESP_AHBL2M;
wire    [31:0]  HRDATA_AHBL2M;

cmsdk_ahb_to_ahb_sync #(
    .AW                                 (32),
    .DW                                 (32),
    .MW                                 (2),
    .BURST                              (1)
)   AHBSyncBridge   (
    .HCLK                               (clk),
    .HRESETn                            (cpuresetn),
    .HSELS                              (HSEL_AHBL1_AHBSync),
    .HADDRS                             (HADDR_AHBL1_AHBSync),
    .HTRANSS                            (HTRANS_AHBL1_AHBSync),
    .HSIZES                             (HSIZE_AHBL1_AHBSync),
    .HWRITES                            (HWRITE_AHBL1_AHBSync),
    .HREADYS                            (HREADY_AHBL1_AHBSync),
    .HPROTS                             (HPROT_AHBL1_AHBSync),
    .HMASTERS                           (HMASTER_AHBL1_AHBSync[1:0]),
    .HMASTLOCKS                         (HMASTERLOCK_AHBL1_AHBSync),
    .HWDATAS                            (HWDATA_AHBL1_AHBSync),
    .HBURSTS                            (HBURST_AHBL1_AHBSync),
    .HREADYOUTS                         (HREADYOUT_AHBL1_AHBSync),
    .HRESPS                             (HRESP_AHBL1_AHBSync[0]),
    .HRDATAS                            (HRDATA_AHBL1_AHBSync),
    .HADDRM                             (HADDR_AHBL2M),
    .HTRANSM                            (HTRANS_AHBL2M),
    .HSIZEM                             (HSIZE_AHBL2M),
    .HWRITEM                            (HWRITE_AHBL2M),
    .HPROTM                             (HPROT_AHBL2M),
    .HMASTERM                           (HMASTER_AHBL2M),
    .HMASTLOCKM                         (HMASTERLOCK_AHBL2M),
    .HWDATAM                            (HWDATA_AHBL2M),
    .HBURSTM                            (HBURST_AHBL2M),
    .HREADYM                            (HREADY_AHBL2M),
    .HRESPM                             (HRESP_AHBL2M[0]),
    .HRDATAM                            (HRDATA_AHBL2M)
);
assign  HRESP_AHBL1_AHBSync[1]    =   1'b0;

//------------------------------------------------------------------------------
// AHB L2 BUS MATRIX
//------------------------------------------------------------------------------

// CAMERA
wire    [31:0]  HADDR_AHBL2_CAMERA;
wire    [1:0]   HTRANS_AHBL2_CAMERA;
wire            HWRITE_AHBL2_CAMERA;
wire    [2:0]   HSIZE_AHBL2_CAMERA;
wire    [31:0]  HWDATA_AHBL2_CAMERA;
wire    [2:0]   HBURST_AHBL2_CAMERA;
wire    [3:0]   HPROT_AHBL2_CAMERA;
wire            HREADY_AHBL2_CAMERA;
wire    [31:0]  HRDATA_AHBL2_CAMERA;
wire    [1:0]   HRESP_AHBL2_CAMERA;
wire            HREADYOUT_AHBL2_CAMERA;
wire            HSEL_AHBL2_CAMERA;
wire    [3:0]   HMASTER_AHBL2_CAMERA;
wire            HMASTERLOCK_AHBL2_CAMERA;

// LCD
wire    [31:0]  HADDR_AHBL2_LCD;
wire    [1:0]   HTRANS_AHBL2_LCD;
wire            HWRITE_AHBL2_LCD;
wire    [2:0]   HSIZE_AHBL2_LCD;
wire    [31:0]  HWDATA_AHBL2_LCD;
wire    [2:0]   HBURST_AHBL2_LCD;
wire    [3:0]   HPROT_AHBL2_LCD;
wire            HREADY_AHBL2_LCD;
wire    [31:0]  HRDATA_AHBL2_LCD;
wire    [1:0]   HRESP_AHBL2_LCD;
wire            HREADYOUT_AHBL2_LCD;
wire            HSEL_AHBL2_LCD;
wire    [3:0]   HMASTER_AHBL2_LCD;
wire            HMASTERLOCK_AHBL2_LCD;

//GPIO
wire    [31:0]  HADDR_AHBL2_GPIO;
wire    [1:0]   HTRANS_AHBL2_GPIO;
wire            HWRITE_AHBL2_GPIO;
wire    [2:0]   HSIZE_AHBL2_GPIO;
wire    [31:0]  HWDATA_AHBL2_GPIO;
wire    [2:0]   HBURST_AHBL2_GPIO;
wire    [3:0]   HPROT_AHBL2_GPIO;
wire            HREADY_AHBL2_GPIO;
wire    [31:0]  HRDATA_AHBL2_GPIO;
wire    [1:0]   HRESP_AHBL2_GPIO;
wire            HREADYOUT_AHBL2_GPIO;
wire            HSEL_AHBL2_GPIO;
wire    [3:0]   HMASTER_AHBL2_GPIO;
wire            HMASTERLOCK_AHBL2_GPIO;

AhbMtx_L2    AHBMTXL2(
    .HCLK                               (clk),
    .HRESETn                            (cpuresetn),

    .REMAP                              (4'b0),
// AHB_SYNC_BRIDGE 
    .HSELS0                             (1'b1),
    .HADDRS0                            (HADDR_AHBL2M),
    .HTRANSS0                           (HTRANS_AHBL2M),
    .HWRITES0                           (HWRITE_AHBL2M),
    .HSIZES0                            (HSIZE_AHBL2M),
    .HBURSTS0                           (HBURST_AHBL2M),
    .HPROTS0                            (HPROT_AHBL2M),
    .HMASTERS0                          (HMASTER_AHBL2M),
    .HWDATAS0                           (HWDATA_AHBL2M),
    .HMASTLOCKS0                        (HMASTERLOCK_AHBL2M),
    .HREADYS0                           (HREADY_AHBL2M),
    .HRDATAS0                           (HRDATA_AHBL2M),
    .HREADYOUTS0                        (HREADY_AHBL2M),
    .HRESPS0                            (HRESP_AHBL2M),
// CAMERA MASTER_IF
    .HSELM0                             (HSEL_AHBL2_CAMERA),
    .HADDRM0                            (HADDR_AHBL2_CAMERA),
    .HTRANSM0                           (HTRANS_AHBL2_CAMERA),
    .HWRITEM0                           (HWRITE_AHBL2_CAMERA),
    .HSIZEM0                            (HSIZE_AHBL2_CAMERA),
    .HBURSTM0                           (HBURST_AHBL2_CAMERA),
    .HPROTM0                            (HPROT_AHBL2_CAMERA),
    .HMASTERM0                          (HMASTER_AHBL2_CAMERA),
    .HWDATAM0                           (HWDATA_AHBL2_CAMERA),
    .HMASTLOCKM0                        (HMASTERLOCK_AHBL2_CAMERA),
    .HREADYMUXM0                        (HREADY_AHBL2_CAMERA),
    .HRDATAM0                           (HRDATA_AHBL2_CAMERA),
    .HREADYOUTM0                        (HREADYOUT_AHBL2_CAMERA),
    .HRESPM0                            (HRESP_AHBL2_CAMERA),
// LCD MASTER_IF
    .HSELM1                             (HSEL_AHBL2_LCD),
    .HADDRM1                            (HADDR_AHBL2_LCD),
    .HTRANSM1                           (HTRANS_AHBL2_LCD),
    .HWRITEM1                           (HWRITE_AHBL2_LCD),
    .HSIZEM1                            (HSIZE_AHBL2_LCD),
    .HBURSTM1                           (HBURST_AHBL2_LCD),
    .HPROTM1                            (HPROT_AHBL2_LCD),
    .HMASTERM1                          (HMASTER_AHBL2_LCD),
    .HWDATAM1                           (HWDATA_AHBL2_LCD),
    .HMASTLOCKM1                        (HMASTERLOCK_AHBL2_LCD),
    .HREADYMUXM1                        (HREADY_AHBL2_LCD),
    .HRDATAM1                           (HRDATA_AHBL2_LCD),
    .HREADYOUTM1                        (HREADYOUT_AHBL2_LCD),
    .HRESPM1                            (HRESP_AHBL2_LCD),
// GPIO MASTER_IF
    .HSELM2                             (HSEL_AHBL2_GPIO),
    .HADDRM2                            (HADDR_AHBL2_GPIO),
    .HTRANSM2                           (HTRANS_AHBL2_GPIO),
    .HWRITEM2                           (HWRITE_AHBL2_GPIO),
    .HSIZEM2                            (HSIZE_AHBL2_GPIO),
    .HBURSTM2                           (HBURST_AHBL2_GPIO),
    .HPROTM2                            (HPROT_AHBL2_GPIO),
    .HMASTERM2                          (HMASTER_AHBL2_GPIO),
    .HWDATAM2                           (HWDATA_AHBL2_GPIO),
    .HMASTLOCKM2                        (HMASTERLOCK_AHBL2_GPIO),
    .HREADYMUXM2                        (HREADY_AHBL2_GPIO),
    .HRDATAM2                           (HRDATA_AHBL2_GPIO),
    .HREADYOUTM2                        (HREADYOUT_AHBL2_GPIO),
    .HRESPM2                            (HRESP_AHBL2_GPIO),

    .SCANENABLE                         (1'b0),
    .SCANINHCLK                         (1'b0),
    .SCANOUTHCLK                        ()
);

//------------------------------------------------------------------------------
// AHBL2 CAMERA
//------------------------------------------------------------------------------

wire    [15:0]    Camera_ADDR;
wire    [31:0]    Camera_RDATA;
wire              Camera_VALID;
wire              Camera_READY;

ahb_to_camera #(
    .SimPresent              ( SimPresent )
) AHB_to_CAMERA (
    .HCLK                    (clk),
    .HRESETn                 (cpuresetn),
    .HSEL                    (HSEL_AHBL2_CAMERA),
    .HADDR                   (HADDR_AHBL2_CAMERA),
    .HTRANS                  (HTRANS_AHBL2_CAMERA),
    .HSIZE                   (HSIZE_AHBL2_CAMERA),
    .HPROT                   (HPROT_AHBL2_CAMERA),
    .HWRITE                  (HWRITE_AHBL2_CAMERA),
    .HWDATA                  (HWDATA_AHBL2_CAMERA),
    .HREADY                  (HREADY_AHBL2_CAMERA),
    .HREADYOUT               (HREADYOUT_AHBL2_CAMERA),
    .HRDATA                  (HRDATA_AHBL2_CAMERA),
    .HRESP                   (HRESP_AHBL2_CAMERA),

    .PWDN                    (CAMERA_PWDN),
    .RST                     (CAMERA_RST),
    .CAMERA_SCL              (CAMERA_SCL),
    .CAMERA_SDA              (CAMERA_SDA),
    .ADDR                    (Camera_ADDR),
    .RDATA                   (Camera_RDATA),
    .DATA_READY              (Camera_READY),
    .DATA_VALID              (Camera_VALID)
);

camera CAMEARA (
    .HCLK                    (clk),
    .PCLK                    (pclk),
    .HRESETn                 (cpuresetn),
    .DATA_VALID              (Camera_VALID),
    .DATA_READY              (Camera_READY),
    .DualRAM_RADDR           (Camera_ADDR),
    .DualRAM_RDATA           (Camera_RDATA),
    .Camera_idata            (CAMERA_DATA),
    .VSYNC                   (CAMERA_VSYNC),
    .HREF                    (CAMERA_HREF)
    //.datavalid_test          (datavalid_test)  
);

//------------------------------------------------------------------------------
// AHBL2  LCD
//------------------------------------------------------------------------------

ahb_lcd  AHB_LCD (
    .HCLK                    (clk),
    .HRESETn                 (cpuresetn),
    .HSEL                    (HSEL_AHBL2_LCD),
    .HADDR                   (HADDR_AHBL2_LCD),
    .HTRANS                  (HTRANS_AHBL2_LCD),
    .HSIZE                   (HSIZE_AHBL2_LCD),
    .HPROT                   (HPROT_AHBL2_LCD),
    .HWRITE                  (HWRITE_AHBL2_LCD),
    .HWDATA                  (HWDATA_AHBL2_LCD),
    .HREADY                  (HREADY_AHBL2_LCD),
    .HREADYOUT               (HREADYOUT_AHBL2_LCD),
    .HRDATA                  (HRDATA_AHBL2_LCD),
    .HRESP                   (HRESP_AHBL2_LCD[0]),
    .LCD_CS                  (LCD_CS),
    .LCD_RS                  (LCD_RS),
    .LCD_WR                  (LCD_WR),
    .LCD_RD                  (LCD_RD),
    .LCD_RST                 (LCD_RST),
    .LCD_DATA                (LCD_DATA),
    .LCD_BL_CTR              (LCD_BL_CTR)
);
assign  HRESP_AHBL2_LCD[1]    =   1'b0;

//------------------------------------------------------------------------------
// AHBL2 GPIO
//------------------------------------------------------------------------------

wire    [15:0]  GPIODIR;
wire    [15:0]  GPIORDATA;
wire    [15:0]  GPIOWDATA;

ahb_to_gpio #(
    .GPIO_WIDTH              (16)
) AHB_to_GPIO (
    .HCLK                    (clk),
    .HRESETn                 (cpuresetn),
    .HSEL                    (HSEL_AHBL2_GPIO),
    .HADDR                   (HADDR_AHBL2_GPIO),
    .HTRANS                  (HTRANS_AHBL2_GPIO),
    .HSIZE                   (HSIZE_AHBL2_GPIO),
    .HPROT                   (HPROT_AHBL2_GPIO),
    .HWRITE                  (HWRITE_AHBL2_GPIO),
    .HWDATA                  (HWDATA_AHBL2_GPIO),
    .HREADY                  (HREADY_AHBL2_GPIO),  
    .HREADYOUT               (HREADYOUT_AHBL2_GPIO),
    .HRDATA                  (HRDATA_AHBL2_GPIO),
    .HRESP                   (HRESP_AHBL2_GPIO),
    .DIR                     (GPIODIR),
    .WDATA                   (GPIOWDATA),
    .RDATA                   (GPIORDATA)
);

gpio #(
    .GPIO_WIDTH                     (16),
    .SimPresent                     (SimPresent)
) GPIO (
    .DIR                            (GPIODIR),
    .RDATA                          (GPIORDATA),
    .WDATA                          (GPIOWDATA),
    .GPIO                           (GPIO)
);

//------------------------------------------------------------------------------
// AHBL1 AHB_TO_APB_BRIDGE
//------------------------------------------------------------------------------

wire    [15:0]  PADDR;    
wire            PENABLE;  
wire            PWRITE;   
wire    [3:0]   PSTRB;    
wire    [2:0]   PPROT;    
wire    [31:0]  PWDATA;   
wire            PSEL;     
wire            APBACTIVE;                  
wire    [31:0]  PRDATA;   
wire            PREADY;  
wire            PSLVERR; 

cmsdk_ahb_to_apb #(
    .ADDRWIDTH                          (16),
    .REGISTER_RDATA                     (1),
    .REGISTER_WDATA                     (1)
)    APBBridge  (
    .HCLK                               (clk),
    .HRESETn                            (cpuresetn),
    .PCLKEN                             (1'b1),
    .HSEL                               (HSEL_AHBL1_APB),
    .HADDR                              (HADDR_AHBL1_APB[15:0]),
    .HTRANS                             (HTRANS_AHBL1_APB),
    .HSIZE                              (HSIZE_AHBL1_APB),
    .HPROT                              (HPROT_AHBL1_APB),
    .HWRITE                             (HWRITE_AHBL1_APB),
    .HREADY                             (HREADY_AHBL1_APB),
    .HWDATA                             (HWDATA_AHBL1_APB),
    .HREADYOUT                          (HREADYOUT_AHBL1_APB),
    .HRDATA                             (HRDATA_AHBL1_APB),
    .HRESP                              (HRESP_AHBL1_APB[0]),        
    .PADDR                              (PADDR),
    .PENABLE                            (PENABLE),
    .PWRITE                             (PWRITE),
    .PSTRB                              (PSTRB),
    .PPROT                              (PPROT),
    .PWDATA                             (PWDATA),
    .PSEL                               (PSEL),
    .APBACTIVE                          (APBACTIVE),
    .PRDATA                             (PRDATA),
    .PREADY                             (PREADY),
    .PSLVERR                            (PSLVERR)                      
);
assign  HRESP_AHBL1_APB[1]    =   1'b0;

//------------------------------------------------------------------------------
// APB SLAVE MUX
//------------------------------------------------------------------------------

// UART
wire            PSEL_APB_UART;
wire            PREADY_APB_UART;
wire    [31:0]  PRDATA_APB_UART;
wire            PSLVERR_APB_UART;

// TIMER
wire            PSEL_APB_TIMER;
wire            PREADY_APB_TIMER;
wire    [31:0]  PRDATA_APB_TIMER;
wire            PSLVERR_APB_TIMER;

cmsdk_apb_slave_mux #(
    .PORT0_ENABLE                       (1),
    .PORT1_ENABLE                       (1),
    .PORT2_ENABLE                       (0),
    .PORT3_ENABLE                       (0),
    .PORT4_ENABLE                       (0),
    .PORT5_ENABLE                       (0),
    .PORT6_ENABLE                       (0),
    .PORT7_ENABLE                       (0),
    .PORT8_ENABLE                       (0),
    .PORT9_ENABLE                       (0),
    .PORT10_ENABLE                      (0),
    .PORT11_ENABLE                      (0),
    .PORT12_ENABLE                      (0),
    .PORT13_ENABLE                      (0),
    .PORT14_ENABLE                      (0),
    .PORT15_ENABLE                      (0)
)   APBSystem   (
    .DECODE4BIT                         (PADDR[15:12]),
    .PSEL                               (PSEL),

    .PSEL0                              (PSEL_APB_UART),
    .PREADY0                            (PREADY_APB_UART),
    .PRDATA0                            (PRDATA_APB_UART),
    .PSLVERR0                           (PSLVERR_APB_UART),
    
    .PSEL1                              (PSEL_APB_TIMER),
    .PREADY1                            (PREADY_APB_TIMER),
    .PRDATA1                            (PRDATA_APB_TIMER),
    .PSLVERR1                           (PSLVERR_APB_TIMER),

    .PSEL2                              (),
    .PREADY2                            (1'b1),
    .PRDATA2                            (32'b0),
    .PSLVERR2                           (1'b0),

    .PSEL3                              (),
    .PREADY3                            (1'b1),
    .PRDATA3                            (32'b0),
    .PSLVERR3                           (1'b0),

    .PSEL4                              (),
    .PREADY4                            (1'b1),
    .PRDATA4                            (32'b0),
    .PSLVERR4                           (1'b0),

    .PSEL5                              (),
    .PREADY5                            (1'b1),
    .PRDATA5                            (32'b0),
    .PSLVERR5                           (1'b0),

    .PSEL6                              (),
    .PREADY6                            (1'b1),
    .PRDATA6                            (32'b0),
    .PSLVERR6                           (1'b0),

    .PSEL7                              (),
    .PREADY7                            (1'b1),
    .PRDATA7                            (32'b0),
    .PSLVERR7                           (1'b0),

    .PSEL8                              (),
    .PREADY8                            (1'b1),
    .PRDATA8                            (32'b0),
    .PSLVERR8                           (1'b0),

    .PSEL9                              (),
    .PREADY9                            (1'b1),
    .PRDATA9                            (32'b0),
    .PSLVERR9                           (1'b0),

    .PSEL10                             (),
    .PREADY10                           (1'b1),
    .PRDATA10                           (32'b0),
    .PSLVERR10                          (1'b0),

    .PSEL11                             (),
    .PREADY11                           (1'b1),
    .PRDATA11                           (32'b0),
    .PSLVERR11                          (1'b0),

    .PSEL12                             (),
    .PREADY12                           (1'b1),
    .PRDATA12                           (32'b0),
    .PSLVERR12                          (1'b0),
    
    .PSEL13                             (),
    .PREADY13                           (1'b1),
    .PRDATA13                           (32'b0),
    .PSLVERR13                          (1'b0),

    .PSEL14                             (),
    .PREADY14                           (1'b1),
    .PRDATA14                           (32'b0),
    .PSLVERR14                          (1'b0),

    .PSEL15                             (),
    .PREADY15                           (1'b1),
    .PRDATA15                           (32'b0),
    .PSLVERR15                          (1'b0),

    .PREADY                             (PREADY),
    .PRDATA                             (PRDATA),
    .PSLVERR                            (PSLVERR)

);

//------------------------------------------------------------------------------
// APB UART
//------------------------------------------------------------------------------

wire            TXINT;
wire            RXINT;
wire            TXOVRINT;
wire            RXOVRINT;
wire            UARTINT;      

cmsdk_apb_uart UART(
    .PCLK                               (clk),
    .PCLKG                              (clk),
    .PRESETn                            (cpuresetn),
    .PSEL                               (PSEL_APB_UART),
    .PADDR                              (PADDR[11:2]),
    .PENABLE                            (PENABLE), 
    .PWRITE                             (PWRITE),
    .PWDATA                             (PWDATA),
    .ECOREVNUM                          (4'b0),
    .PRDATA                             (PRDATA_APB_UART),
    .PREADY                             (PREADY_APB_UART),
    .PSLVERR                            (PSLVERR_APB_UART),
    .RXD                                (RXD),
    .TXD                                (TXD),
    .TXEN                               (),
    .BAUDTICK                           (),
    .TXINT                              (TXINT),
    .RXINT                              (RXINT),
    .TXOVRINT                           (TXOVRINT),
    .RXOVRINT                           (RXOVRINT),
    .UARTINT                            (UARTINT)
);

//------------------------------------------------------------------------------
// APB TIMER
//------------------------------------------------------------------------------

apb_timer  TIMER(
    .PCLK                    (clk),
    .PRESETn                 (cpuresetn),
    .PSEL                    (PSEL_APB_TIMER),
    .PADDR                   (PADDR[11:2]),
    .PENABLE                 (PENABLE),
    .PWRITE                  (PWRITE),
    .PWDATA                  (PWDATA),
    .PRDATA                  (PRDATA_APB_TIMER),
    .PREADY                  (PREADY_APB_TIMER),
    .PSLVERR                 (PSLVERR_APB_TIMER),
    .seg                     (seg),
    .dig                     (dig)
);

//------------------------------------------------------------------------------
// INTERRUPT 
//------------------------------------------------------------------------------

wire    [2:0]   uart_INT    =   {TXOVRINT|RXOVRINT,TXINT,RXINT};
wire    [2:0]   acc_INT     =   {ACCReadResultsINT,ACCNoFaceINT,ACCConvDoneINT};

assign  IRQ    =   {228'b0, resizer_INT, acc_INT, DMA_Event, uart_INT, key_INT};

endmodule