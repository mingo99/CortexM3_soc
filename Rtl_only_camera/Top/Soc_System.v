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
    // GPIO
    inout       wire  [15:0]    GPIO,
    // KEY
    input       wire  [3:0]     col,
    output                      row,
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
    input       wire  [7:0]     CAMERA_DATA
);


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
                        .clk_10M            (clk),     
                        .clk_50M            (),     
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

assign  HADDRAC         =   32'b0;
assign  HTRANSAC        =   2'b0;
assign  HWRITEAC        =   1'b0;
assign  HSIZEAC         =   3'b0;
assign  HWDATAAC        =   32'b0;
assign  HBURSTAC        =   3'b0;
assign  HPROTAC         =   4'b0;
assign  HMASTERAC       =   2'b0;
assign  HMASTERLOCKAC   =   1'b0;
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

assign  HADDRRE         =   32'b0;
assign  HTRANSRE        =   2'b0;
assign  HWRITERE        =   1'b0;
assign  HSIZERE         =   3'b0;
assign  HWDATARE        =   32'b0;
assign  HBURSTRE        =   3'b0;
assign  HPROTRE         =   4'b0;
assign  HMASTERRE       =   2'b0;
assign  HMASTERLOCKRE   =   1'b0;

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
    .HRESETn                 (RSTn),
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
wire    [31:0]  HADDR_AHB_ITCM;
wire    [1:0]   HTRANS_AHB_ITCM;
wire            HWRITE_AHB_ITCM;
wire    [2:0]   HSIZE_AHB_ITCM;
wire    [31:0]  HWDATA_AHB_ITCM;
wire    [2:0]   HBURST_AHB_ITCM;
wire    [3:0]   HPROT_AHB_ITCM;
wire            HREADY_AHB_ITCM;
wire    [31:0]  HRDATA_AHB_ITCM;
wire    [1:0]   HRESP_AHB_ITCM;
wire            HREADYOUT_AHB_ITCM;
wire            HSEL_AHB_ITCM;
wire    [3:0]   HMASTER_AHB_ITCM;
wire            HMASTERLOCK_AHB_ITCM;

// DTCM BUS
wire    [31:0]  HADDR_AHB_DTCM;
wire    [1:0]   HTRANS_AHB_DTCM;
wire            HWRITE_AHB_DTCM;
wire    [2:0]   HSIZE_AHB_DTCM;
wire    [31:0]  HWDATA_AHB_DTCM;
wire    [2:0]   HBURST_AHB_DTCM;
wire    [3:0]   HPROT_AHB_DTCM;
wire            HREADY_AHB_DTCM;
wire    [31:0]  HRDATA_AHB_DTCM;
wire    [1:0]   HRESP_AHB_DTCM;
wire            HREADYOUT_AHB_DTCM;
wire            HSEL_AHB_DTCM;
wire    [3:0]   HMASTER_AHB_DTCM;
wire            HMASTERLOCK_AHB_DTCM;

// APBBRIDGE BUS
wire    [31:0]  HADDR_AHB_APB;
wire    [1:0]   HTRANS_AHB_APB;
wire            HWRITE_AHB_APB;
wire    [2:0]   HSIZE_AHB_APB;
wire    [31:0]  HWDATA_AHB_APB;
wire    [2:0]   HBURST_AHB_APB;
wire    [3:0]   HPROT_AHB_APB;
wire            HREADY_AHB_APB;
wire    [31:0]  HRDATA_AHB_APB;
wire    [1:0]   HRESP_AHB_APB;
wire            HREADYOUT_AHB_APB;
wire            HSEL_AHB_APB;
wire    [3:0]   HMASTER_AHB_APB;
wire            HMASTERLOCK_AHB_APB;

assign HRDATA_AHB_APB = 'b0;
assign HREADYOUT_AHB_APB = 'b0;
assign HRESP_AHB_APB = 'b0;

// AHBDDR BUS
wire    [31:0]  HADDR_AHB_DDR;
wire    [1:0]   HTRANS_AHB_DDR;
wire            HWRITE_AHB_DDR;
wire    [2:0]   HSIZE_AHB_DDR;
wire    [31:0]  HWDATA_AHB_DDR;
wire    [2:0]   HBURST_AHB_DDR;
wire    [3:0]   HPROT_AHB_DDR;
wire            HREADY_AHB_DDR;
wire    [31:0]  HRDATA_AHB_DDR;
wire    [1:0]   HRESP_AHB_DDR;
wire            HREADYOUT_AHB_DDR;
wire            HSEL_AHB_DDR;
wire    [3:0]   HMASTER_AHB_DDR;
wire            HMASTERLOCK_AHB_DDR;

assign HRDATA_AHB_DDR = 'b0;
assign HREADYOUT_AHB_DDR = 'b0;
assign HRESP_AHB_DDR = 'b0;

// DMAC BUS
wire    [31:0]  HADDR_AHB_DMAC;
wire    [1:0]   HTRANS_AHB_DMAC;
wire            HWRITE_AHB_DMAC;
wire    [2:0]   HSIZE_AHB_DMAC;
wire    [31:0]  HWDATA_AHB_DMAC;
wire    [2:0]   HBURST_AHB_DMAC;
wire    [3:0]   HPROT_AHB_DMAC;
wire            HREADY_AHB_DMAC;
wire    [31:0]  HRDATA_AHB_DMAC;
wire    [1:0]   HRESP_AHB_DMAC;
wire            HREADYOUT_AHB_DMAC;
wire            HSEL_AHB_DMAC;
wire    [3:0]   HMASTER_AHB_DMAC;
wire            HMASTERLOCK_AHB_DMAC;

// ACCC BUS
wire    [31:0]  HADDR_AHB_ACCC;
wire    [1:0]   HTRANS_AHB_ACCC;
wire            HWRITE_AHB_ACCC;
wire    [2:0]   HSIZE_AHB_ACCC;
wire    [31:0]  HWDATA_AHB_ACCC;
wire    [2:0]   HBURST_AHB_ACCC;
wire    [3:0]   HPROT_AHB_ACCC;
wire            HREADY_AHB_ACCC;
wire    [31:0]  HRDATA_AHB_ACCC;
wire    [1:0]   HRESP_AHB_ACCC;
wire            HREADYOUT_AHB_ACCC;
wire            HSEL_AHB_ACCC;
wire    [3:0]   HMASTER_AHB_ACCC;
wire            HMASTERLOCK_AHB_ACCC;

assign HRDATA_AHB_ACCC = 'b0;
assign HREADYOUT_AHB_ACCCHRDATA_AHB_ACCC = 'b0;
assign HRESP_AHB_ACCCHRDATA_AHB_ACCC = 'b0;

// RESIZER BUS
wire    [31:0]  HADDR_AHB_RESIZER;
wire    [1:0]   HTRANS_AHB_RESIZER;
wire            HWRITE_AHB_RESIZER;
wire    [2:0]   HSIZE_AHB_RESIZER;
wire    [31:0]  HWDATA_AHB_RESIZER;
wire    [2:0]   HBURST_AHB_RESIZER;
wire    [3:0]   HPROT_AHB_RESIZER;
wire            HREADY_AHB_RESIZER;
wire    [31:0]  HRDATA_AHB_RESIZER;
wire    [1:0]   HRESP_AHB_RESIZER;
wire            HREADYOUT_AHB_RESIZER;
wire            HSEL_AHB_RESIZER;
wire    [3:0]   HMASTER_AHB_RESIZER;
wire            HMASTERLOCK_AHB_RESIZER;

assign HRDATA_AHB_RESIZER = 'b0;
assign HREADYOUT_AHB_RESIZER = 'b0;
assign HRESP_AHB_RESIZER = 'b0;

// CAMERA
wire    [31:0]  HADDR_AHB_CAMERA;
wire    [1:0]   HTRANS_AHB_CAMERA;
wire            HWRITE_AHB_CAMERA;
wire    [2:0]   HSIZE_AHB_CAMERA;
wire    [31:0]  HWDATA_AHB_CAMERA;
wire    [2:0]   HBURST_AHB_CAMERA;
wire    [3:0]   HPROT_AHB_CAMERA;
wire            HREADY_AHB_CAMERA;
wire    [31:0]  HRDATA_AHB_CAMERA;
wire    [1:0]   HRESP_AHB_CAMERA;
wire            HREADYOUT_AHB_CAMERA;
wire            HSEL_AHB_CAMERA;
wire    [3:0]   HMASTER_AHB_CAMERA;
wire            HMASTERLOCK_AHB_CAMERA;

// LCD
wire    [31:0]  HADDR_AHB_LCD;
wire    [1:0]   HTRANS_AHB_LCD;
wire            HWRITE_AHB_LCD;
wire    [2:0]   HSIZE_AHB_LCD;
wire    [31:0]  HWDATA_AHB_LCD;
wire    [2:0]   HBURST_AHB_LCD;
wire    [3:0]   HPROT_AHB_LCD;
wire            HREADY_AHB_LCD;
wire    [31:0]  HRDATA_AHB_LCD;
wire    [1:0]   HRESP_AHB_LCD;
wire            HREADYOUT_AHB_LCD;
wire            HSEL_AHB_LCD;
wire    [3:0]   HMASTER_AHB_LCD;
wire            HMASTERLOCK_AHB_LCD;

//GPIO
wire    [31:0]  HADDR_AHB_GPIO;
wire    [1:0]   HTRANS_AHB_GPIO;
wire            HWRITE_AHB_GPIO;
wire    [2:0]   HSIZE_AHB_GPIO;
wire    [31:0]  HWDATA_AHB_GPIO;
wire    [2:0]   HBURST_AHB_GPIO;
wire    [3:0]   HPROT_AHB_GPIO;
wire            HREADY_AHB_GPIO;
wire    [31:0]  HRDATA_AHB_GPIO;
wire    [1:0]   HRESP_AHB_GPIO;
wire            HREADYOUT_AHB_GPIO;
wire            HSEL_AHB_GPIO;
wire    [3:0]   HMASTER_AHB_GPIO;
wire            HMASTERLOCK_AHB_GPIO;


AhbMtx    AHBMTX(
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
    .HSELM0                             (HSEL_AHB_ITCM),
    .HADDRM0                            (HADDR_AHB_ITCM),
    .HTRANSM0                           (HTRANS_AHB_ITCM),
    .HWRITEM0                           (HWRITE_AHB_ITCM),
    .HSIZEM0                            (HSIZE_AHB_ITCM),
    .HBURSTM0                           (HBURST_AHB_ITCM),
    .HPROTM0                            (HPROT_AHB_ITCM),
    .HMASTERM0                          (HMASTER_AHB_ITCM),
    .HWDATAM0                           (HWDATA_AHB_ITCM),
    .HMASTLOCKM0                        (HMASTERLOCK_AHB_ITCM),
    .HREADYMUXM0                        (HREADY_AHB_ITCM),
    .HRDATAM0                           (HRDATA_AHB_ITCM),
    .HREADYOUTM0                        (HREADYOUT_AHB_ITCM),
    .HRESPM0                            (HRESP_AHB_ITCM),
// DTCM MASTER_IF
    .HSELM1                             (HSEL_AHB_DTCM),
    .HADDRM1                            (HADDR_AHB_DTCM),
    .HTRANSM1                           (HTRANS_AHB_DTCM),
    .HWRITEM1                           (HWRITE_AHB_DTCM),
    .HSIZEM1                            (HSIZE_AHB_DTCM),
    .HBURSTM1                           (HBURST_AHB_DTCM),
    .HPROTM1                            (HPROT_AHB_DTCM),
    .HMASTERM1                          (HMASTER_AHB_DTCM),
    .HWDATAM1                           (HWDATA_AHB_DTCM),
    .HMASTLOCKM1                        (HMASTERLOCK_AHB_DTCM),
    .HREADYMUXM1                        (HREADY_AHB_DTCM),
    .HRDATAM1                           (HRDATA_AHB_DTCM),
    .HREADYOUTM1                        (HREADYOUT_AHB_DTCM),
    .HRESPM1                            (HRESP_AHB_DTCM),
// APB Bridge MASTER_IF
    .HSELM2                             (HSEL_AHB_APB),
    .HADDRM2                            (HADDR_AHB_APB),
    .HTRANSM2                           (HTRANS_AHB_APB),
    .HWRITEM2                           (HWRITE_AHB_APB),
    .HSIZEM2                            (HSIZE_AHB_APB),
    .HBURSTM2                           (HBURST_AHB_APB),
    .HPROTM2                            (HPROT_AHB_APB),
    .HMASTERM2                          (HMASTER_AHB_APB),
    .HWDATAM2                           (HWDATA_AHB_APB),
    .HMASTLOCKM2                        (HMASTERLOCK_AHB_APB),
    .HREADYMUXM2                        (HREADY_AHB_APB),
    .HRDATAM2                           (HRDATA_AHB_APB),
    .HREADYOUTM2                        (HREADYOUT_AHB_APB),
    .HRESPM2                            (HRESP_AHB_APB),
// DDR MASTER_IF
    .HSELM3                             (HSEL_AHB_DDR),
    .HADDRM3                            (HADDR_AHB_DDR),
    .HTRANSM3                           (HTRANS_AHB_DDR),
    .HWRITEM3                           (HWRITE_AHB_DDR),
    .HSIZEM3                            (HSIZE_AHB_DDR),
    .HBURSTM3                           (HBURST_AHB_DDR),
    .HPROTM3                            (HPROT_AHB_DDR),
    .HMASTERM3                          (HMASTER_AHB_DDR),
    .HWDATAM3                           (HWDATA_AHB_DDR),
    .HMASTLOCKM3                        (HMASTERLOCK_AHB_DDR),
    .HREADYMUXM3                        (HREADY_AHB_DDR),
    .HRDATAM3                           (HRDATA_AHB_DDR),
    .HREADYOUTM3                        (HREADYOUT_AHB_DDR),
    .HRESPM3                            (HRESP_AHB_DDR),
// DMAC MASTER_IF
    .HSELM4                             (HSEL_AHB_DMAC),
    .HADDRM4                            (HADDR_AHB_DMAC),
    .HTRANSM4                           (HTRANS_AHB_DMAC),
    .HWRITEM4                           (HWRITE_AHB_DMAC),
    .HSIZEM4                            (HSIZE_AHB_DMAC),
    .HBURSTM4                           (HBURST_AHB_DMAC),
    .HPROTM4                            (HPROT_AHB_DMAC),
    .HMASTERM4                          (HMASTER_AHB_DMAC),
    .HWDATAM4                           (HWDATA_AHB_DMAC),
    .HMASTLOCKM4                        (HMASTERLOCK_AHB_DMAC),
    .HREADYMUXM4                        (HREADY_AHB_DMAC),
    .HRDATAM4                           (HRDATA_AHB_DMAC),
    .HREADYOUTM4                        (HREADYOUT_AHB_DMAC),
    .HRESPM4                            (HRESP_AHB_DMAC),
// ACCC MASTER_IF
    .HSELM5                             (HSEL_AHB_ACCC),
    .HADDRM5                            (HADDR_AHB_ACCC),
    .HTRANSM5                           (HTRANS_AHB_ACCC),
    .HWRITEM5                           (HWRITE_AHB_ACCC),
    .HSIZEM5                            (HSIZE_AHB_ACCC),
    .HBURSTM5                           (HBURST_AHB_ACCC),
    .HPROTM5                            (HPROT_AHB_ACCC),
    .HMASTERM5                          (HMASTER_AHB_ACCC),
    .HWDATAM5                           (HWDATA_AHB_ACCC),
    .HMASTLOCKM5                        (HMASTERLOCK_AHB_ACCC),
    .HREADYMUXM5                        (HREADY_AHB_ACCC),
    .HRDATAM5                           (HRDATA_AHB_ACCC),
    .HREADYOUTM5                        (HREADYOUT_AHB_ACCC),
    .HRESPM5                            (HRESP_AHB_ACCC),
// RESIZER MASTER_IF
    .HSELM6                             (HSEL_AHB_RESIZER),
    .HADDRM6                            (HADDR_AHB_RESIZER),
    .HTRANSM6                           (HTRANS_AHB_RESIZER),
    .HWRITEM6                           (HWRITE_AHB_RESIZER),
    .HSIZEM6                            (HSIZE_AHB_RESIZER),
    .HBURSTM6                           (HBURST_AHB_RESIZER),
    .HPROTM6                            (HPROT_AHB_RESIZER),
    .HMASTERM6                          (HMASTER_AHB_RESIZER),
    .HWDATAM6                           (HWDATA_AHB_RESIZER),
    .HMASTLOCKM6                        (HMASTERLOCK_AHB_RESIZER),
    .HREADYMUXM6                        (HREADY_AHB_RESIZER),
    .HRDATAM6                           (HRDATA_AHB_RESIZER),
    .HREADYOUTM6                        (HREADYOUT_AHB_RESIZER),
    .HRESPM6                            (HRESP_AHB_RESIZER),
// AHB CAMERA MASTER_IF
    .HSELM7                             (HSEL_AHB_CAMERA),
    .HADDRM7                            (HADDR_AHB_CAMERA),
    .HTRANSM7                           (HTRANS_AHB_CAMERA),
    .HWRITEM7                           (HWRITE_AHB_CAMERA),
    .HSIZEM7                            (HSIZE_AHB_CAMERA),
    .HBURSTM7                           (HBURST_AHB_CAMERA),
    .HPROTM7                            (HPROT_AHB_CAMERA),
    .HMASTERM7                          (HMASTER_AHB_CAMERA),
    .HWDATAM7                           (HWDATA_AHB_CAMERA),
    .HMASTLOCKM7                        (HMASTERLOCK_AHB_CAMERA),
    .HREADYMUXM7                        (HREADY_AHB_CAMERA),
    .HRDATAM7                           (HRDATA_AHB_CAMERA),
    .HREADYOUTM7                        (HREADYOUT_AHB_CAMERA),
    .HRESPM7                            (HRESP_AHB_CAMERA),
// AHB LCD MASTER_IF
    .HSELM8                             (HSEL_AHB_LCD),
    .HADDRM8                            (HADDR_AHB_LCD),
    .HTRANSM8                           (HTRANS_AHB_LCD),
    .HWRITEM8                           (HWRITE_AHB_LCD),
    .HSIZEM8                            (HSIZE_AHB_LCD),
    .HBURSTM8                           (HBURST_AHB_LCD),
    .HPROTM8                            (HPROT_AHB_LCD),
    .HMASTERM8                          (HMASTER_AHB_LCD),
    .HWDATAM8                           (HWDATA_AHB_LCD),
    .HMASTLOCKM8                        (HMASTERLOCK_AHB_LCD),
    .HREADYMUXM8                        (HREADY_AHB_LCD),
    .HRDATAM8                           (HRDATA_AHB_LCD),
    .HREADYOUTM8                        (HREADYOUT_AHB_LCD),
    .HRESPM8                            (HRESP_AHB_LCD),
// AHB GPIO MASTER_IF
    .HSELM9                             (HSEL_AHB_GPIO),
    .HADDRM9                            (HADDR_AHB_GPIO),
    .HTRANSM9                           (HTRANS_AHB_GPIO),
    .HWRITEM9                           (HWRITE_AHB_GPIO),
    .HSIZEM9                            (HSIZE_AHB_GPIO),
    .HBURSTM9                           (HBURST_AHB_GPIO),
    .HPROTM9                            (HPROT_AHB_GPIO),
    .HMASTERM9                          (HMASTER_AHB_GPIO),
    .HWDATAM9                           (HWDATA_AHB_GPIO),
    .HMASTLOCKM9                        (HMASTERLOCK_AHB_GPIO),
    .HREADYMUXM9                        (HREADY_AHB_GPIO),
    .HRDATAM9                           (HRDATA_AHB_GPIO),
    .HREADYOUTM9                        (HREADYOUT_AHB_GPIO),
    .HRESPM9                            (HRESP_AHB_GPIO),

    .SCANENABLE                         (1'b0),
    .SCANINHCLK                         (1'b0),
    .SCANOUTHCLK                        ()
);

//------------------------------------------------------------------------------
// AHB ITCM
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
    .HSEL                               (HSEL_AHB_ITCM),
    .HREADY                             (HREADY_AHB_ITCM),
    .HTRANS                             (HTRANS_AHB_ITCM),
    .HSIZE                              (HSIZE_AHB_ITCM),
    .HWRITE                             (HWRITE_AHB_ITCM),
    .HADDR                              (HADDR_AHB_ITCM[15:0]),
    .HWDATA                             (HWDATA_AHB_ITCM),
    .HREADYOUT                          (HREADYOUT_AHB_ITCM),
    .HRESP                              (HRESP_AHB_ITCM[0]),
    .HRDATA                             (HRDATA_AHB_ITCM),
    .SRAMRDATA                          (ITCMRDATA),
    .SRAMADDR                           (ITCMADDR),
    .SRAMWEN                            (ITCMWRITE),
    .SRAMWDATA                          (ITCMWDATA),
    .SRAMCS                             (ITCMCS)
);
assign  HRESP_AHB_ITCM[1]    =   1'b0;

cmsdk_fpga_sram #(
    .AW                                 (13)
)   ITCM    (
    .CLK                                (clk),
    .ADDR                               (ITCMADDR),
    .WDATA                              (ITCMWDATA),
    .WREN                               (ITCMWRITE),
    .CS                                 (ITCMCS),
    .RDATA                              (ITCMRDATA)
);

//------------------------------------------------------------------------------
// AHB DTCM
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
    .HSEL                               (HSEL_AHB_DTCM),
    .HREADY                             (HREADY_AHB_DTCM),
    .HTRANS                             (HTRANS_AHB_DTCM),
    .HSIZE                              (HSIZE_AHB_DTCM),
    .HWRITE                             (HWRITE_AHB_DTCM),
    .HADDR                              (HADDR_AHB_DTCM[15:0]),
    .HWDATA                             (HWDATA_AHB_DTCM),
    .HREADYOUT                          (HREADYOUT_AHB_DTCM),
    .HRESP                              (HRESP_AHB_DTCM[0]),
    .HRDATA                             (HRDATA_AHB_DTCM),
    .SRAMRDATA                          (DTCMRDATA),
    .SRAMADDR                           (DTCMADDR),
    .SRAMWEN                            (DTCMWRITE),
    .SRAMWDATA                          (DTCMWDATA),
    .SRAMCS                             (DTCMCS)
);
assign  HRESP_AHB_DTCM[1]    =   1'b0;

cmsdk_fpga_sram #(
    .AW                                 (13)
)   DTCM    (
    .CLK                                (clk),
    .ADDR                               (DTCMADDR[12:0]),
    .WDATA                              (DTCMWDATA),
    .WREN                               (DTCMWRITE),
    .CS                                 (DTCMCS),
    .RDATA                              (DTCMRDATA)
);

//------------------------------------------------------------------------------
// AHB DMAC
//------------------------------------------------------------------------------

DMAC  DMAC (
    .HCLK                    (clk),
    .HRESETn                 (cpuresetn),
    .HSEL                    (HSEL_AHB_DMAC),
    .HADDR                   (HADDR_AHB_DMAC),
    .HTRANS                  (HTRANS_AHB_DMAC),
    .HSIZE                   (HSIZE_AHB_DMAC),
    .HPROT                   (HPROT_AHB_DMAC),
    .HWRITE                  (HWRITE_AHB_DMAC),
    .HWDATA                  (HWDATA_AHB_DMAC),
    .HREADY                  (HREADY_AHB_DMAC),
    .HREADYOUT               (HREADYOUT_AHB_DMAC),
    .HRDATA                  (HRDATA_AHB_DMAC),
    .HRESP                   (HRESP_AHB_DMAC),

    .SLEEPing                (SLEEPing),
    .DMAstart                (DMAstart),
    .DMAsrc                  (DMAsrc),
    .DMAdst                  (DMAdst),
    .DMAsize                 (DMAsize),
    .DMAlen                  (DMAlen)
);

//------------------------------------------------------------------------------
// AHB  ACC
//------------------------------------------------------------------------------

wire  ACCConvDoneINT;
wire  ACCNoFaceINT;
wire  ACCReadResultsINT;

assign ACCConvDoneINT = 1'b0;
assign ACCNoFaceINT = 1'b0;
assign ACCReadResultsINT = 1'b0;

//------------------------------------------------------------------------------
// AHB  RESIZER
//------------------------------------------------------------------------------

wire resizer_INT;
assign resizer_INT = 1'b0;

//------------------------------------------------------------------------------
// AHB CAMERA
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
    .HSEL                    (HSEL_AHB_CAMERA),
    .HADDR                   (HADDR_AHB_CAMERA),
    .HTRANS                  (HTRANS_AHB_CAMERA),
    .HSIZE                   (HSIZE_AHB_CAMERA),
    .HPROT                   (HPROT_AHB_CAMERA),
    .HWRITE                  (HWRITE_AHB_CAMERA),
    .HWDATA                  (HWDATA_AHB_CAMERA),
    .HREADY                  (HREADY_AHB_CAMERA),
    .HREADYOUT               (HREADYOUT_AHB_CAMERA),
    .HRDATA                  (HRDATA_AHB_CAMERA),
    .HRESP                   (HRESP_AHB_CAMERA),

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
);

//------------------------------------------------------------------------------
// AHB LCD
//------------------------------------------------------------------------------

ahb_lcd  AHB_LCD (
    .HCLK                    (clk),
    .HRESETn                 (cpuresetn),
    .HSEL                    (HSEL_AHB_LCD),
    .HADDR                   (HADDR_AHB_LCD),
    .HTRANS                  (HTRANS_AHB_LCD),
    .HSIZE                   (HSIZE_AHB_LCD),
    .HPROT                   (HPROT_AHB_LCD),
    .HWRITE                  (HWRITE_AHB_LCD),
    .HWDATA                  (HWDATA_AHB_LCD),
    .HREADY                  (HREADY_AHB_LCD),
    .HREADYOUT               (HREADYOUT_AHB_LCD),
    .HRDATA                  (HRDATA_AHB_LCD),
    .HRESP                   (HRESP_AHB_LCD[0]),
    .LCD_CS                  (LCD_CS),
    .LCD_RS                  (LCD_RS),
    .LCD_WR                  (LCD_WR),
    .LCD_RD                  (LCD_RD),
    .LCD_RST                 (LCD_RST),
    .LCD_DATA                (LCD_DATA),
    .LCD_BL_CTR              (LCD_BL_CTR)
);
assign  HRESP_AHB_LCD[1]    =   1'b0;

//------------------------------------------------------------------------------
// AHB GPIO
//------------------------------------------------------------------------------

wire    [15:0]  GPIODIR;
wire    [15:0]  GPIORDATA;
wire    [15:0]  GPIOWDATA;

ahb_to_gpio #(
    .GPIO_WIDTH              (16)
) AHB_to_GPIO (
    .HCLK                    (clk),
    .HRESETn                 (cpuresetn),
    .HSEL                    (HSEL_AHB_GPIO),
    .HADDR                   (HADDR_AHB_GPIO),
    .HTRANS                  (HTRANS_AHB_GPIO),
    .HSIZE                   (HSIZE_AHB_GPIO),
    .HPROT                   (HPROT_AHB_GPIO),
    .HWRITE                  (HWRITE_AHB_GPIO),
    .HWDATA                  (HWDATA_AHB_GPIO),
    .HREADY                  (HREADY_AHB_GPIO),  
    .HREADYOUT               (HREADYOUT_AHB_GPIO),
    .HRDATA                  (HRDATA_AHB_GPIO),
    .HRESP                   (HRESP_AHB_GPIO),
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
// INTERRUPT 
//------------------------------------------------------------------------------

wire [2:0] uart_INT = 'b0;
wire [2:0] acc_INT  = {ACCReadResultsINT,ACCNoFaceINT,ACCConvDoneINT};

assign  IRQ    =   {228'b0, resizer_INT, acc_INT, DMA_Event, uart_INT, key_INT};

endmodule