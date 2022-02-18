#include <stdint.h>

/*
 * ==========================================================================
 * ---------- Interrupt Number Definition -----------------------------------
 * ==========================================================================
 */

typedef enum IRQn
{
/******  Cortex-M3 Processor Exceptions Numbers ***************************************************/
    NonMaskableInt_IRQn           = -14,    /*!<  2 Cortex-M3 Non Maskable Interrupt                 */
    HardFault_IRQn                = -13,    /*!<  3 Cortex-M3 Hard Fault Interrupt                   */
    MemoryManagement_IRQn         = -12,    /*!<  4 Cortex-M3 Memory Management Interrupt            */
    BusFault_IRQn                 = -11,    /*!<  5 Cortex-M3 Bus Fault Interrupt                    */
    UsageFault_IRQn               = -10,    /*!<  6 Cortex-M3 Usage Fault Interrupt                  */
    SVCall_IRQn                   = -5,     /*!< 11 Cortex-M3 SV Call Interrupt                      */
    DebugMonitor_IRQn             = -4,     /*!< 12 Cortex-M3 Debug Monitor Interrupt                */
    PendSV_IRQn                   = -2,     /*!< 14 Cortex-M3 Pend SV Interrupt                      */
    SysTick_IRQn                  = -1,     /*!< 15 Cortex-M3 System Tick Interrupt                  */

/******  CM3DS_MPS2 Specific Interrupt Numbers ****************************************************/
    KEY0_IRQn                     = 0,
    KEY1_IRQn                     = 1,
    KEY2_IRQn                     = 2,
    KEY3_IRQn                     = 3,      /* Key Interrupt                                         */  

    UARTTX_IRQn                   = 4,      /* UART TX Interrupt                                     */
    UARTRX_IRQn                   = 5,      /* UART RX Interrupt                                     */
    UARTOVR_IRQn                  = 6,      /* UART Over Interrupt                                   */

    DMAWakeup_IRQn                = 7,      /* DMA Wake Up Interrupt                                 */

    ACCConvDone_TRQn              = 8,      /* ACC ConvLayer Done Interrupt                          */ 
    ACCNoFace_IRQn                = 9,      /* ACC No Face Detected Interrupt                        */  
    ACCReadResults_IRQn           = 10,     /* ACC Can Read Results Interrupt                        */

    RESIZERDone_IRQn              = 11,     /* Resizer Works Done Interrupt                          */      

} IRQn_Type;

/*
 * ==========================================================================
 * ----------- Processor and Core Peripheral Section ------------------------
 * ==========================================================================
 */

/* Configuration of the Cortex-M3 Processor and Core Peripherals */
#define __CM3_REV                 0x0201    /*!< Core Revision r2p1                             */
#define __NVIC_PRIO_BITS          3         /*!< Number of Bits used for Priority Levels        */
#define __Vendor_SysTickConfig    0         /*!< Set to 1 if different SysTick Config is used   */
#define __MPU_PRESENT             1         /*!< MPU present or not                             */

#include "core_cm3.h"


/*------------- Direct Memory Access Controller(DMAC) -----------*/
typedef struct{
    __IO    uint32_t    DMA_SRC;              /*!< Offset: 0x50030000 Source Base Address Register          */
    __IO    uint32_t    DMA_DST;              /*!< Offset: 0x50030004 Destination Base Address Register     */
    __IO    uint32_t    DMA_SIZE;             /*!< Offset: 0x50030008 Data Size Register                    */
    __IO    uint32_t    DMA_LEN;              /*!< Offset: 0x5003000C Data Length Register                  */      
} DMAC_TypeDef;


/*------------- Accelerator Controller(ACCC) -----------*/
typedef struct
{
    __IO    uint32_t    GENERALCFG;             /*!< Offset: 0x60030000 Coniguration Register                 */      
    __IO    uint32_t    SIDELENINFO;            /*!< Offset: 0x60030004 Feature Map Sidelenth Register        */              
    __IO    uint32_t    FMBASEADDR;             /*!< Offset: 0x60030008 Feature Map Base Addr Register        */      
    __IO    uint32_t    WBASEADDR;              /*!< Offset: 0x6003000C Weight Base Addr Register             */      
    __IO    uint32_t    WBBASEADDR;             /*!< Offset: 0x60030010 Write Back Base Addr Register         */      
    __IO    uint32_t    PWBBASEADDR;            /*!< Offset: 0x60030014 Pre Write Back Base Addr Register     */      
    __IO    uint32_t    BIASBASEADDR;           /*!< Offset: 0x60030018 Bias Base Addr Register               */
    __IO    uint32_t    GENERALCTRL;            /*!< Offset: 0x6003001C Control Register                      */
    __I     uint32_t    ISVALID;                /*!< Offset: 0x60030020 Whether Results is Valid Register     */     
    __I     uint32_t    CATEGORY;               /*!< Offset: 0x60030024 Mask Wear Information Register        */    
    __I     uint32_t    FACECOORD[5][2];        /*!< Offset: 0x60030028 Face Box Position Register            */
                                                /*Every Row: {xmin,ymin},{xmax,ymax} -> RESULTS[][0,1]        */
} ACCC_TypeDef;
// ACC Face Information
struct FACE
{
    uint8_t  mask;
    uint32_t coord[4];
};


/*------------- Image Resizer -----------*/
typedef struct
{
    __IO    uint32_t    Resizer_Start;          /*!< Offset: 0x60090000 Resizer Start Signal Register            */
} RESIZER_TypeDef;


/*------------- Double Date Rate Memory(DDR) -----------*/
typedef struct 
{
    __IO    uint32_t    WEIGHT0_27[1010304];    /*!< Offset: 0x40030000 Weight Register   */  
} DDR_TypeDef;


/*-------------Image Data------------*/
typedef struct 
{
    __IO    uint32_t    IMAGESRC[4][76800];     /*!< Offset: 0x4040aa00  */
    // __IO    uint32_t    IMAGESRC_2[76800];   /*!< Offset: 0x40455a00 */      
    // __IO    uint32_t    IMAGESRC_3[76800];   /*!< Offset: 0x404a0a00 */
    // __IO    uint32_t    IMAGESRC_4[76800];   /*!< Offset: 0x404eba00 */
            uint32_t    reserved_ddr[583040];
    __IO    uint32_t    IMAGEDST_R[262][262];   /*!< Offset: 0x40536a00 */
    __IO    uint32_t    IMAGEDST_G[262][262];   /*!< Offset: 0x40579a90 */
    __IO    uint32_t    IMAGEDST_B[262][262];   /*!< Offset: 0x405bcb20 */
    __IO    uint32_t    IMAGEDST_A[262][262];   /*!< Offset: 0x405ffbb0 - 0x40642c40*/

  //layer 0
  //     uint32_t reserved_ddr[308464]; 
    __IO    uint32_t    IMAGESCALE[274576];/*!< Offset: 0x40770000 Image Register    */

  //layer 2/8/18
  //      uint32_t    reserved[1164816]; 
  //__IO  uint32_t    FeatureMap[287296];
  //__IO  uint32_t    FeatureMap[23104];
  //__IO  uint32_t    FeatureMap[6272];
  
  //layer 3/13/23
  //      uint32_t    reserved[1452112]; 
  //__IO  uint32_t    FeatureMap[78400];
  //__IO  uint32_t    FeatureMap[15488];
  //__IO  uint32_t    FeatureMap[1600];

  //layer 14/16
  //      uint32_t    reserved[2987392]; 
  //__IO  uint32_t    FeatureMap[15488];

  //layer 15/17
  //      uint32_t    reserved[3065792]; 
  //__IO  uint32_t    FeatureMap[7744];
  //__IO  uint32_t    FeatureMap[6272];

  //nms
  //      uint32_t    reserved[4035968];
  //__IO  uint32_t    Cls[11944];
  //__IO  uint32_t    Loc[23888];
}IMAGE_TypeDef;
// IMAGE RGB Channel
struct RGB
{
    uint32_t    rgb[3];
};
#define R_CHAN  (0xF800)
#define G_CHAN  (0x07E0)
#define B_CHAN  (0x001F)
#define R_POS   (11)
#define G_POS   (5)
#define B_POS   (0)


/*-------------Camera------------*/
typedef struct{
    __IO    uint16_t    CAMERA_VALUE[240][320];       /*!< Offset: 0x60040000 Camera Value Ram                    */
            uint32_t    reserved_camera[512];         /*!< Offset: 0x60065800 Reserved                            */
    __IO    uint32_t    CAMERA_RST;                   /*!< Offset: 0x60066000 Camera Reset Register               */
    __IO    uint32_t    CAMERA_PWDN;                  /*!< Offset: 0x60066004 Camera PowerDown Register           */
    __IO    uint32_t    CAMERA_SCL;                   /*!< Offset: 0x60066008 Camera SCL Register                 */
    __IO    uint32_t    CAMERA_SDAO;                  /*!< Offset: 0x6006600C Camera SDA Write Register           */
    __IO    uint32_t    CAMERA_SDAI;                  /*!< Offset: 0x60066010 Camera SDA Read Register            */
    __IO    uint32_t    CAMERA_SDAOEN;                /*!< Offset: 0x60066014 Camera SDA Write Enable Register    */
    __IO    uint32_t    CAMERA_DATA_STATE;            /*!< Offset: 0x60066018 Camera Data State Register          */
  //__IO uint32_t CAMERA_DATA_LEN;              /*!< Offset: 0x6006601C Camera Data Length Register       */
}CAMERA_TypeDef;
 

/*-------------Liquid Crystal Display(LCD)------------*/
typedef struct {
    __IO    uint32_t    LCD_CS;                       /*!< Offset: 0x000     (R/W) */     
    __IO    uint32_t    LCD_RS; 
    __IO    uint32_t    LCD_WR; 
    __IO    uint32_t    LCD_RD; 
    __IO    uint32_t    LCD_RST;
    __IO    uint32_t    LCD_BL_CTR;
    __IO    uint32_t    LCD_DATA[16];
    __IO    uint32_t    LCD_DMA;                      /*!< Offset: 0x05C     (R/W) */
}LCD_TypeDef;

// PROPERTIES OF 9341
#define WRAM_CMD   0x2C // WRITE RAM COMMAND
#define SetX_CMD   0x2A // SET X POSITION COMMAND
#define SetY_CMD   0x2B // SET Y POSITION COMMAND 
#define SetDir_CMD 0x36 // SET DIRECTION COMMAND
#define Width      320 // IMAFE WIDTH
#define Height     240 // IMAGE HEIGHT
// SCAN DIRECTIONS
#define L2R_U2D  0 // LEFT TO RIGHT, UP TO DOWN
#define L2R_D2U  1 // LEFT TO RIGHT, DOWN TO UP
#define R2L_U2D  2 // RIGHT TO LEFT, UP TO DOWN
#define R2L_D2U  3 // RIGHT TO LEFT, DOWN TO UP
#define U2D_L2R  4 // UP TO DOWN, LEFT TO RIGHT
#define U2D_R2L  5 // UP TO DOWN, RIGHT TO LEFT
#define D2U_L2R  6 // DOWN TO UP, LEFT TO RIGHT
#define D2U_R2L  7 // DOWN TO UP, RIGHT TO LEFT
// PEN COLOR
#define WHITE         	    0xFFFF
#define BLACK         	    0x0000	  
#define BLUE         	    0x001F  
#define BRED                0XF81F
#define GRED 			    0XFFE0
#define GBLUE			    0X07FF
#define RED           	    0xF800
#define MAGENTA       	    0xF81F
#define GREEN         	    0x07E0
#define CYAN          	    0x7FFF
#define YELLOW        	    0xFFE0
#define BROWN 			    0XBC40 
#define BRRED 			    0XFC07 
#define GRAY  			    0X8430 
// BASIC SIGNAL SET  
#define LCD_CS_SET         (LCD->LCD_CS        = 1) 	 
#define LCD_RS_SET         (LCD->LCD_RS        = 1) 
#define LCD_WR_SET         (LCD->LCD_WR        = 1) 
#define LCD_RD_SET         (LCD->LCD_RD        = 1) 
#define LCD_RST_SET        (LCD->LCD_RST       = 1)
#define LCD_BL_CTR_SET     (LCD->LCD_BL_CTR    = 1)
#define LCD_DMA_SET        (LCD->LCD_DMA       = 1)
// BASIC SIGNAL CLEAR
#define LCD_CS_CLR         (LCD->LCD_CS        = 0) 	 
#define LCD_RS_CLR         (LCD->LCD_RS        = 0) 
#define LCD_WR_CLR         (LCD->LCD_WR        = 0) 
#define LCD_RD_CLR         (LCD->LCD_RD        = 0) 
#define LCD_RST_CLR        (LCD->LCD_RST       = 0)
#define LCD_BL_CTR_CLR     (LCD->LCD_BL_CTR    = 0)
#define LCD_DMA_CLR        (LCD->LCD_DMA       = 0)


/*-------------General-purpose input/output(GPIO)------------*/
typedef struct{
    __IO    uint32_t    GPIO_RDATA;
    __IO    uint32_t    GPIO_DIR;
    __IO    uint32_t    GPIO_WDATA;
}GPIO_TypeDef;


/*-------------Universal Asynchronous Receiver/Transmitter(UART)------------*/
typedef struct
{
    __IO    uint32_t    DATA;          /*!< Offset: 0x000 Data Register    (R/W) */
    __IO    uint32_t    STATE;         /*!< Offset: 0x004 Status Register  (R/W) */
    __IO    uint32_t    CTRL;          /*!< Offset: 0x008 Control Register (R/W) */
    union {
        __I uint32_t    INTSTATUS;    /*!< Offset: 0x00C Interrupt Status Register (R/ ) */
        __O uint32_t    INTCLEAR;     /*!< Offset: 0x00C Interrupt Clear Register ( /W)  */
    };
    __IO    uint32_t    BAUDDIV;       /*!< Offset: 0x010 Baudrate Divider Register (R/W) */

} UART_TypeDef;

// UART DATA Register Definitions 
#define  UART_DATA_Pos               0                                            /*!<  UART_DATA_Pos: DATA Position */
#define  UART_DATA_Msk               (0xFFul <<  UART_DATA_Pos)               /*!<  UART DATA: DATA Mask */
#define  UART_STATE_RXOR_Pos         3                                            /*!<  UART STATE: RXOR Position */
#define  UART_STATE_RXOR_Msk         (0x1ul <<  UART_STATE_RXOR_Pos)         /*!<  UART STATE: RXOR Mask */
#define  UART_STATE_TXOR_Pos         2                                            /*!<  UART STATE: TXOR Position */
#define  UART_STATE_TXOR_Msk         (0x1ul <<  UART_STATE_TXOR_Pos)         /*!<  UART STATE: TXOR Mask */
#define  UART_STATE_RXBF_Pos         1                                            /*!<  UART STATE: RXBF Position */
#define  UART_STATE_RXBF_Msk         (0x1ul <<  UART_STATE_RXBF_Pos)         /*!<  UART STATE: RXBF Mask */
#define  UART_STATE_TXBF_Pos         0                                            /*!<  UART STATE: TXBF Position */
#define  UART_STATE_TXBF_Msk         (0x1ul <<  UART_STATE_TXBF_Pos )        /*!<  UART STATE: TXBF Mask */
#define  UART_CTRL_HSTM_Pos          6                                            /*!<  UART CTRL: HSTM Position */
#define  UART_CTRL_HSTM_Msk          (0x01ul <<  UART_CTRL_HSTM_Pos)         /*!<  UART CTRL: HSTM Mask */
#define  UART_CTRL_RXORIRQEN_Pos     5                                            /*!<  UART CTRL: RXORIRQEN Position */
#define  UART_CTRL_RXORIRQEN_Msk     (0x01ul <<  UART_CTRL_RXORIRQEN_Pos)    /*!<  UART CTRL: RXORIRQEN Mask */
#define  UART_CTRL_TXORIRQEN_Pos     4                                            /*!<  UART CTRL: TXORIRQEN Position */
#define  UART_CTRL_TXORIRQEN_Msk     (0x01ul <<  UART_CTRL_TXORIRQEN_Pos)    /*!<  UART CTRL: TXORIRQEN Mask */
#define  UART_CTRL_RXIRQEN_Pos       3                                            /*!<  UART CTRL: RXIRQEN Position */
#define  UART_CTRL_RXIRQEN_Msk       (0x01ul <<  UART_CTRL_RXIRQEN_Pos)      /*!<  UART CTRL: RXIRQEN Mask */
#define  UART_CTRL_TXIRQEN_Pos       2                                            /*!<  UART CTRL: TXIRQEN Position */
#define  UART_CTRL_TXIRQEN_Msk       (0x01ul <<  UART_CTRL_TXIRQEN_Pos)      /*!<  UART CTRL: TXIRQEN Mask */
#define  UART_CTRL_RXEN_Pos          1                                            /*!<  UART CTRL: RXEN Position */
#define  UART_CTRL_RXEN_Msk          (0x01ul <<  UART_CTRL_RXEN_Pos)         /*!<  UART CTRL: RXEN Mask */
#define  UART_CTRL_TXEN_Pos          0                                            /*!<  UART CTRL: TXEN Position */
#define  UART_CTRL_TXEN_Msk          (0x01ul <<  UART_CTRL_TXEN_Pos)         /*!<  UART CTRL: TXEN Mask */
#define  UART_INTSTATUS_RXORIRQ_Pos  3                                            /*!<  UART CTRL: RXORIRQ Position */
#define  UART_CTRL_RXORIRQ_Msk       (0x01ul <<  UART_INTSTATUS_RXORIRQ_Pos) /*!<  UART CTRL: RXORIRQ Mask */
#define  UART_CTRL_TXORIRQ_Pos       2                                            /*!<  UART CTRL: TXORIRQ Position */
#define  UART_CTRL_TXORIRQ_Msk       (0x01ul <<  UART_CTRL_TXORIRQ_Pos)      /*!<  UART CTRL: TXORIRQ Mask */
#define  UART_CTRL_RXIRQ_Pos         1                                            /*!<  UART CTRL: RXIRQ Position */
#define  UART_CTRL_RXIRQ_Msk         (0x01ul <<  UART_CTRL_RXIRQ_Pos)        /*!<  UART CTRL: RXIRQ Mask */
#define  UART_CTRL_TXIRQ_Pos         0                                            /*!<  UART CTRL: TXIRQ Position */
#define  UART_CTRL_TXIRQ_Msk         (0x01ul <<  UART_CTRL_TXIRQ_Pos)        /*!<  UART CTRL: TXIRQ Mask */
#define  UART_BAUDDIV_Pos            0                                            /*!<  UART BAUDDIV: BAUDDIV Position */
#define  UART_BAUDDIV_Msk            (0xFFFFFul <<  UART_BAUDDIV_Pos)        /*!<  UART BAUDDIV: BAUDDIV Mask */


/*-------------Timer------------*/
typedef struct{
  __IO uint32_t TIMER_RST;
  __IO uint32_t TIMER_EN;
  __IO uint32_t TIMER_SHOW_EN;
}TIMER_TypeDef;



/******************************************************************************/
/*                         Peripheral memory map                              */
/******************************************************************************/
/* Peripheral and SRAM base address */
#define ITCM_BASE         (0x00000000UL)
#define DTCM_BASE         (0x20000000UL)
#define APB_BASE          (0x40000000UL)
#define AHB_BASE          (0x60040000UL)
#define DDR_BASE          (0x40030000UL)
#define DMAC_BASE         (0x50030000UL)
#define ACCC_BASE         (0x60030000UL)
#define RESIZER_BASE      (0x60090000UL)

/* AHBL2 Peripherals */ 
#define CAMERA_BASE       (AHB_BASE)
//#define CAMERA_BASE       (0x4040AA00UL)
#define LCD_BASE          (AHB_BASE + 0x30000UL)
#define GPIO_BASE         (AHB_BASE + 0x31000UL)

/* APB Peripherals */ 
#define UART_BASE         (APB_BASE)
#define TIMER_BASE        (APB_BASE + 0x1000UL)

/* Image Data Memory */
#define IMAGE_BASE        (DDR_BASE + 0x3DAA00UL)   


/******************************************************************************/
/*                         Peripheral declaration                             */
/******************************************************************************/
#define DMAC              ((DMAC_TypeDef    *)  DMAC_BASE   )
#define ACCC              ((ACCC_TypeDef    *)  ACCC_BASE   )
#define DDR               ((DDR_TypeDef     *)  DDR_BASE    )
#define RESIZER           ((RESIZER_TypeDef *)  RESIZER_BASE)

#define CAMERA            ((CAMERA_TypeDef  *)  CAMERA_BASE )
#define LCD               ((LCD_TypeDef     *)  LCD_BASE    )
#define GPIO              ((GPIO_TypeDef    *)  GPIO_BASE   )

#define UART              ((UART_TypeDef    *)  UART_BASE   )
#define TIMER             ((TIMER_TypeDef   *)  TIMER_BASE  )

#define IMAGE             ((IMAGE_TypeDef   *)  IMAGE_BASE  )


/******************************************************************************/
/*                     Global Variable Declarations                           */
/******************************************************************************/
extern uint8_t key3_flag;
extern uint8_t key2_flag;
extern uint8_t key1_flag;
extern uint8_t key0_flag;
extern uint8_t layer_cnt;
extern uint8_t accdone_flag;
extern uint8_t noface;


/******************************************************************************/
/*                     Driver Function Declarations                           */
/******************************************************************************/

/**************************************SYSTICK*******************************************/
extern void Delay(uint32_t time);
extern void Set_SysTick_CTRL(uint32_t ctrl);
extern void Set_SysTick_LOAD(uint32_t load);
extern uint32_t Read_SysTick_VALUE(void);
extern void Set_SysTick_VALUE(uint32_t value);
extern void Set_SysTick_CALIB(uint32_t calib);
extern uint32_t SysTick_Init(void);
extern uint8_t SysTick_Stop(uint32_t *duration_t,uint32_t start_t);


/****************************ACC*******************************/
extern void ACC_GetWeight(void);
extern void ACC_GetImage(void);
extern void ACC_GetFeatureMap(void);
extern void ACC_RegConfig(uint8_t Layer);
extern void ACC_ClrCtrl(void);
extern void ACC_ConvEnable(void);
extern void ACC_NmsEnable(void);
extern void ACC_ImageInit(void);
extern void ACC_RegInit(void);
extern void ACC_Start(void);
extern uint8_t ACC_GetIsvalid(uint8_t FaceNum);
extern struct FACE ACC_ReadResults(uint8_t FaceNum);
extern void ACC_NmsReturn(void);
// Test For ACC
extern void ACC_Init_Test(void);
extern void test_img(void);
extern void test_nms(void);


/****************************DMA*******************************/
extern void DMA(uint32_t src,uint32_t dst,uint8_t size,uint32_t len);
extern void DMA_Image(uint8_t ImageNum);


/****************************KEY*******************************/
extern void Key_Init(void);


/***************************CAMERA*****************************/
extern void Set_CAMERA_SDA_W(void);
extern void Set_CAMERA_SDA_R(void);
extern void Set_CAMERA_SCL(void);
extern void Clr_CAMERA_SCL(void);
extern void Set_CAMERA_RST(void);
extern void Clr_CAMERA_RST(void);
extern void Set_CAMERA_PWDN(void);
extern void Clr_CAMERA_PWDN(void);
extern void Set_CAMERA_SDA(void);
extern uint32_t Read_CAMERA_SDA(void);
extern void Clr_CAMERA_SDA(void);
extern uint32_t Read_CAMERA_DATA_STATE(void);
extern void Set_CAMERA_DATA_STATE(uint32_t state);
extern uint8_t CAMERA_Read_Byte(void);
extern uint8_t CAMERA_Read_Reg(uint16_t reg);
extern void CAMERA_NA(void);
extern void CAMERA_Start(void);
extern void CAMERA_Stop(void);
extern void CAMERA_Waite(void);
extern void CAMERA_Write_Byte(uint8_t data);
extern void CAMERA_Command(uint8_t addr_h,uint8_t addr_l,uint8_t data);
extern void CAMERA_Data(uint8_t data);
extern void CAMERA_Init(void);
extern void CAMERA_Initial(void);
extern void CAMERA_ImageCap(void);
// Image Process
extern void IMAGE_ClrRGBAValue(void);
extern struct RGB IMAGE_GetRGBValue(uint8_t num, uint32_t row, uint32_t col);
extern void IMAGE_DstRGBValue(struct RGB value, uint32_t row, uint32_t col);
extern struct RGB IMAGE_FPNQ(struct RGB value);
extern void IMAGE_ScalePixel(uint8_t num, uint32_t DstRow, uint32_t DstCol, uint32_t SrcHeight, uint32_t SrcWidth, float ScaleH, float ScaleW);
extern void IMAGE_ScaleImage(uint8_t num, uint32_t SrcHeight, uint32_t SrcWidth, uint32_t DstHeight, uint32_t DstWidth);
extern void IMAGE_Process(uint8_t num);
extern void Resizer_Start(void);


/****************************LCD*******************************/
extern void MakeData(uint16_t data);
extern void LCD_WR_REG(uint16_t data);
extern void LCD_WR_DATA(uint16_t data);
extern void LCD_SetCursor(uint16_t Xpos, uint16_t Ypos);
extern void LCD_Scan_Dir(uint8_t dir);
extern void LCD_Init(uint8_t dir);
extern void LCD_Fast_DrawPoint(uint16_t x,uint16_t y,uint16_t Color);
extern void LCD_Draw_Window(uint16_t Xmin, uint16_t Ymin, uint16_t Xmax, uint16_t Ymax, uint16_t Color);
extern void LCD_Thick_Window(uint16_t Xmin, uint16_t Ymin, uint16_t Xmax, uint16_t Ymax, uint16_t Color);
extern void LCD_Draw_FaceBox(void);
extern void LCD_Full_Color(uint16_t Color);
extern uint16_t LCD_ReadReg(uint16_t LCD_Reg);
extern uint16_t LCD_RD_DATA(void);
extern uint16_t ReadData(void);
extern void LCD_PrepareDMA(void);
extern void LCD_QuitDMA(void);
extern void LCD_DMA(uint32_t SrcAddr, uint8_t Size, uint32_t Len);
extern void LCD_Display(uint8_t num);
// extern void LCD_Display(void);

/****************************GPIO*******************************/
extern void Set_GPIO_Dir(uint16_t dir);
extern uint16_t Read_GPIO_Input(void);
extern uint16_t Read_GPIO_Output(void);
extern uint16_t Read_GPIO_Dir(void);
extern void Set_GPIO_Value(uint16_t value);
extern void LED_LightUp(uint8_t num);
extern void LED_ShutDown(uint8_t num);
extern uint8_t Read_Switch(uint8_t num);

/****************************UART*******************************/

extern uint32_t  uart_Init( UART_TypeDef * uart, uint32_t divider, uint32_t tx_en,
                            uint32_t rx_en, uint32_t tx_irq_en, uint32_t rx_irq_en, uint32_t tx_ovrirq_en, uint32_t rx_ovrirq_en);
extern uint32_t  uart_GetRxBufferFull( UART_TypeDef * uart);         /*Returns whether the UART RX Buffer is Full.                 */
extern uint32_t  uart_GetTxBufferFull( UART_TypeDef * uart);         /*Returns whether the UART TX Buffer is Full.                 */
extern void  uart_SendChar( UART_TypeDef * uart, char txchar);       /*Sends a character to the UART TX Buffer.                    */
extern char  uart_ReceiveChar( UART_TypeDef * uart);                 /*Receives a character from the UART RX Buffer.               */
extern uint32_t  uart_GetOverrunStatus( UART_TypeDef * uart);        /* Returns UART Overrun status.                               */
extern uint32_t  uart_ClearOverrunStatus( UART_TypeDef * uart);      /* Clears UART Overrun status Returns new UART Overrun status.*/
extern uint32_t  uart_GetBaudDivider( UART_TypeDef * uart);          /* Returns UART Baud rate Divider value.                      */
extern uint32_t  uart_GetTxIRQStatus( UART_TypeDef * uart);          /* Return UART TX Interrupt Status.                           */
extern uint32_t  uart_GetRxIRQStatus( UART_TypeDef * uart);          /* Return UART RX Interrupt Status.                           */
extern void  uart_ClearTxIRQ( UART_TypeDef * uart);                  /* Clear UART TX Interrupt request.                           */
extern void  uart_ClearRxIRQ( UART_TypeDef * uart);                  /*Clear UART RX Interrupt request.                            */

/****************************TIMER******************************/
extern void Timer_Reset(void);
extern void Timer_Start(void);
extern void Timer_Pause(void);
extern void Timer_Show_Enable(void);

/******************************************************************************/
/*                                System Initial                              */
/******************************************************************************/
extern uint32_t SystemFrequency;              /*!< System Clock Frequency (Core Clock)  */
extern uint32_t SystemCoreClock;              /*!< Processor Clock Frequency            */ 
extern void SystemInit (void);                /*!< Initialize the system                */
extern void SystemCoreClockUpdate (void);     /*!< Update SystemCoreClock variable      */
