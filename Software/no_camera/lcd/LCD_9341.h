#ifndef _LCD_9341_H
#define _LCD_9341_H


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

//  PEN COLOR
#define WHITE         	 0xFFFF
#define BLACK         	 0x0000	  
#define BLUE         	 0x001F  
#define BRED             0XF81F
#define GRED 			 0XFFE0
#define GBLUE			 0X07FF
#define RED           	 0xF800
#define MAGENTA       	 0xF81F
#define GREEN         	 0x07E0
#define CYAN          	 0x7FFF
#define YELLOW        	 0xFFE0
#define BROWN 			 0XBC40 
#define BRRED 			 0XFC07 
#define GRAY  			 0X8430 

//LCD DEF
typedef struct {
    volatile uint32_t LCD_CS; // 0x40050000
    volatile uint32_t LCD_RS; // 0x40050004
    volatile uint32_t LCD_WR; // 0x40050008
    volatile uint32_t LCD_RD; // 0x4005000C
    volatile uint32_t LCD_RST;// 0x40050010
    volatile uint32_t LCD_BL_CTR;// 0x40050014
    volatile uint32_t LCD_DATA[16];// 0x40050018-0x40050054
}LCDType;

#define LCD_BASE 0x40050000
#define LCD ((LCDType *)LCD_BASE)

//  BASIC SIGNAL SET AND CLEAR
#define LCD_CS_SET         (LCD->LCD_CS        = 1) 	 
#define LCD_RS_SET         (LCD->LCD_RS        = 1) 
#define LCD_WR_SET         (LCD->LCD_WR        = 1) 
#define LCD_RD_SET         (LCD->LCD_RD        = 1) 
#define LCD_RST_SET        (LCD->LCD_RST       = 1)
#define LCD_BL_CTR_SET     (LCD->LCD_BL_CTR    = 1)

#define LCD_CS_CLR         (LCD->LCD_CS        = 0) 	 
#define LCD_RS_CLR         (LCD->LCD_RS        = 0) 
#define LCD_WR_CLR         (LCD->LCD_WR        = 0) 
#define LCD_RD_CLR         (LCD->LCD_RD        = 0) 
#define LCD_RST_CLR        (LCD->LCD_RST       = 0)
#define LCD_BL_CTR_CLR     (LCD->LCD_BL_CTR    = 0)

//  FUCTIONS DECLARATION
void MakeData( uint16_t data );
void LCD_WR_REG( uint16_t data );
void LCD_WR_DATA( uint16_t data );
void LCD_SetCursor( uint16_t Xpos, uint16_t Ypos );
void LCD_Scan_Dir(uint8_t dir);
void LCD_Init(uint8_t dir);
void LCD_Fast_DrawPoint(uint16_t x,uint16_t y,uint16_t Color);
void LCD_Draw_Window(uint16_t Xmin, uint16_t Ymin, uint16_t Xmax, uint16_t Ymax, uint16_t Color);
void LCD_Full_Color(uint16_t Color);
uint16_t LCD_ReadReg(uint16_t LCD_Reg);
uint16_t LCD_RD_DATA(void);
uint16_t ReadData();
#endif