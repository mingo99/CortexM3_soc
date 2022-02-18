#include "CortexM3.h"

//  WRITE DATA(INSTRUCTION DATA OR PURE DATA)
void MakeData( uint16_t data ) {
    LCD->LCD_DATA[0] = ( data >> 0 ) & 1 ;
    LCD->LCD_DATA[1] = ( data >> 1 ) & 1 ;
    LCD->LCD_DATA[2] = ( data >> 2 ) & 1 ;
    LCD->LCD_DATA[3] = ( data >> 3 ) & 1 ;
    LCD->LCD_DATA[4] = ( data >> 4 ) & 1 ;
    LCD->LCD_DATA[5] = ( data >> 5 ) & 1 ;
    LCD->LCD_DATA[6] = ( data >> 6 ) & 1 ;
    LCD->LCD_DATA[7] = ( data >> 7 ) & 1 ;
    LCD->LCD_DATA[8] = ( data >> 8 ) & 1 ;
    LCD->LCD_DATA[9] = ( data >> 9 ) & 1 ;
    LCD->LCD_DATA[10] = ( data >> 10 ) & 1;
    LCD->LCD_DATA[11] = ( data >> 11 ) & 1;
    LCD->LCD_DATA[12] = ( data >> 12 ) & 1;
    LCD->LCD_DATA[13] = ( data >> 13 ) & 1;
    LCD->LCD_DATA[14] = ( data >> 14 ) & 1;
    LCD->LCD_DATA[15] = ( data >> 15 ) & 1;
}

//  WRITE REG FUNCTION
void LCD_WR_REG( uint16_t data ) {
  	LCD_RS_CLR; 
 	LCD_CS_CLR; 
	Delay(1);
	MakeData( data );
	LCD_WR_CLR;
	Delay(1);
	LCD_WR_SET; 
 	LCD_CS_SET;         
}

//  WRITE DATA
void LCD_WR_DATA( uint16_t data ) {
  	LCD_RS_SET;
	LCD_CS_CLR;
	Delay(1);
	MakeData( data );
	LCD_WR_CLR;
	Delay(1);
	LCD_WR_SET;
	LCD_CS_SET;
}

//  LCD SET CURSOR POSTION
void LCD_SetCursor( uint16_t Xpos, uint16_t Ypos ) {
    LCD_WR_REG( SetX_CMD ); 
	LCD_WR_DATA( Xpos >> 8 );
    LCD_WR_DATA( Xpos & 0XFF ); 			 
	LCD_WR_REG( SetY_CMD ); 
	LCD_WR_DATA( Ypos >> 8 );
    LCD_WR_DATA( Ypos & 0XFF ); 
}

//  SET LCD SCANNING DIRECTION 
void LCD_Scan_Dir(uint8_t dir)
{
	//only for 9341
	uint16_t regval=0;

	switch(dir)
	{
		case L2R_U2D:
			regval|=(0<<7)|(0<<6)|(0<<5); 
			break;
		case L2R_D2U:
			regval|=(1<<7)|(0<<6)|(0<<5); 
			break;
		case R2L_U2D:
			regval|=(0<<7)|(1<<6)|(0<<5); 
			break;
		case R2L_D2U:
			regval|=(1<<7)|(1<<6)|(0<<5); 
			break;	 
		case U2D_L2R:
			regval|=(0<<7)|(0<<6)|(1<<5); 
			break;
		case U2D_R2L://´ÓÉÏµ½ÏÂ,´ÓÓÒµ½×ó
			regval|=(0<<7)|(1<<6)|(1<<5); 
			break;
		case D2U_L2R://´ÓÏÂµ½ÉÏ,´Ó×óµ½ÓÒ
			regval|=(1<<7)|(0<<6)|(1<<5); 
			break;
		case D2U_R2L://´ÓÏÂµ½ÉÏ,´ÓÓÒµ½×ó
			regval|=(1<<7)|(1<<6)|(1<<5); 
			break;	 
	}
	regval|=0X08;
	LCD_WR_REG( SetDir_CMD ); 
	LCD_WR_DATA( regval );

	LCD_WR_REG(SetX_CMD); 
	LCD_WR_DATA(0);LCD_WR_DATA(0);
	LCD_WR_DATA(319 >> 8);LCD_WR_DATA(319 & 0XFF);
	LCD_WR_REG(SetY_CMD); 
	LCD_WR_DATA(0);LCD_WR_DATA(0);
	LCD_WR_DATA(239 >> 8);LCD_WR_DATA(239 & 0XFF);
}     


void LCD_Init(uint8_t dir)
{ 	
	LCD_DMA_CLR; 
	LCD_RST_SET;
	Delay(100000);

	Delay(500000); // delay 50 ms 
	LCD_WR_REG(0X0000);
	LCD_WR_DATA(0X0001);
	Delay(500000); // delay 50 ms 

	uint16_t idx = LCD_ReadReg(0x0000);

	LCD_WR_REG(0xCF);  
	LCD_WR_DATA(0x00); 
	LCD_WR_DATA(0xC1); 
	LCD_WR_DATA(0X30); 
	LCD_WR_REG(0xED);  
	LCD_WR_DATA(0x64); 
	LCD_WR_DATA(0x03); 
	LCD_WR_DATA(0X12); 
	LCD_WR_DATA(0X81); 
	LCD_WR_REG(0xE8);  
	LCD_WR_DATA(0x85); 
	LCD_WR_DATA(0x10); 
	LCD_WR_DATA(0x7A); 
	LCD_WR_REG(0xCB);  
	LCD_WR_DATA(0x39); 
	LCD_WR_DATA(0x2C); 
	LCD_WR_DATA(0x00); 
	LCD_WR_DATA(0x34); 
	LCD_WR_DATA(0x02); 
	LCD_WR_REG(0xF7);  
	LCD_WR_DATA(0x20); 
	LCD_WR_REG(0xEA);  
	LCD_WR_DATA(0x00); 
	LCD_WR_DATA(0x00); 
	LCD_WR_REG(0xC0);    //Power control 
	LCD_WR_DATA(0x1B);   //VRH[5:0] 
	LCD_WR_REG(0xC1);    //Power control 
	LCD_WR_DATA(0x01);   //SAP[2:0];BT[3:0] 
	LCD_WR_REG(0xC5);    //VCM control 
	LCD_WR_DATA(0x30); 	 //3F
	LCD_WR_DATA(0x30); 	 //3C
	LCD_WR_REG(0xC7);    //VCM control2 
	LCD_WR_DATA(0XB7); 
	LCD_WR_REG(0x36);    // Memory Access Control 
	LCD_WR_DATA(0x48); 
	LCD_WR_REG(0x3A);   
	LCD_WR_DATA(0x55); 
	LCD_WR_REG(0xB1);   
	LCD_WR_DATA(0x00);   
	LCD_WR_DATA(0x1A); 
	LCD_WR_REG(0xB6);    // Display Function Control 
	LCD_WR_DATA(0x0A); 
	LCD_WR_DATA(0xA2); 
	LCD_WR_REG(0xF2);    // 3Gamma Function Disable 
	LCD_WR_DATA(0x00); 
	LCD_WR_REG(0x26);    //Gamma curve selected 
	LCD_WR_DATA(0x01); 
	LCD_WR_REG(0xE0);    //Set Gamma 
	LCD_WR_DATA(0x0F); 
	LCD_WR_DATA(0x2A); 
	LCD_WR_DATA(0x28); 
	LCD_WR_DATA(0x08); 
	LCD_WR_DATA(0x0E); 
	LCD_WR_DATA(0x08); 
	LCD_WR_DATA(0x54); 
	LCD_WR_DATA(0XA9); 
	LCD_WR_DATA(0x43); 
	LCD_WR_DATA(0x0A); 
	LCD_WR_DATA(0x0F); 
	LCD_WR_DATA(0x00); 
	LCD_WR_DATA(0x00); 
	LCD_WR_DATA(0x00); 
	LCD_WR_DATA(0x00); 		 
	LCD_WR_REG(0XE1);    //Set Gamma 
	LCD_WR_DATA(0x00); 
	LCD_WR_DATA(0x15); 
	LCD_WR_DATA(0x17); 
	LCD_WR_DATA(0x07); 
	LCD_WR_DATA(0x11); 
	LCD_WR_DATA(0x06); 
	LCD_WR_DATA(0x2B); 
	LCD_WR_DATA(0x56); 
	LCD_WR_DATA(0x3C); 
	LCD_WR_DATA(0x05); 
	LCD_WR_DATA(0x10); 
	LCD_WR_DATA(0x0F); 
	LCD_WR_DATA(0x3F); 
	LCD_WR_DATA(0x3F); 
	LCD_WR_DATA(0x0F); 
	LCD_WR_REG(0x2B); 
	LCD_WR_DATA(0x00);
	LCD_WR_DATA(0x00);
	LCD_WR_DATA(0x01);
	LCD_WR_DATA(0x3f);
	LCD_WR_REG(0x2A); 
	LCD_WR_DATA(0x00);
	LCD_WR_DATA(0x00);
	LCD_WR_DATA(0x00);
	LCD_WR_DATA(0xef);	 
	LCD_WR_REG(0x11); //Exit Sleep
	Delay(6000000);
	LCD_WR_REG(0x29); //display on	
	
	LCD_Scan_Dir(dir);		 	            // horizon or vertical
	LCD -> LCD_BL_CTR = 1;					// Back Light
	//LCD_Clear(WHITE);
}


// DRAW POINT
void LCD_Fast_DrawPoint(uint16_t x,uint16_t y,uint16_t Color)
{	   
	LCD_WR_REG(SetX_CMD); 
	LCD_WR_DATA(x>>8);LCD_WR_DATA(x&0XFF);  			 
	LCD_WR_REG(SetY_CMD); 
	LCD_WR_DATA(y>>8);LCD_WR_DATA(y&0XFF);
	LCD_RS_CLR;
	LCD_CS_CLR; 
	MakeData(WRAM_CMD); 
	LCD_WR_CLR; 
	LCD_WR_SET; 
	LCD_CS_SET; 
	LCD_WR_DATA(Color);		
}

//  DRAW RECTANGULAR WINDOW IN Color
//  ONLY FOR 9341 
void LCD_Draw_Window(uint16_t Xmin, uint16_t Ymin, uint16_t Xmax, uint16_t Ymax, uint16_t Color)
{
	uint16_t i;

	for(i=Xmin; i<Xmax+1; i++)
		LCD_Fast_DrawPoint(i,Ymin,Color);
	
	for(i=Xmin; i<Xmax+1; i++)
		LCD_Fast_DrawPoint(i,Ymax,Color);

	for(i=Ymin; i<Ymax+1; i++)
		LCD_Fast_DrawPoint(Xmin,i,Color);

	for(i=Ymin; i<Ymax+1; i++)
		LCD_Fast_DrawPoint(Xmax,i,Color);
}

//  DRAW THICK RECTANGULAR WINDOW IN Color
//  ONLY FOR 9341 
void LCD_Thick_Window(uint16_t Xmin, uint16_t Ymin, uint16_t Xmax, uint16_t Ymax, uint16_t Color)
{
	LCD_Draw_Window(Xmin, Ymin, Xmax, Ymax, Color);
	LCD_Draw_Window(Xmin+1, Ymin+1, Xmax-1, Ymax-1, Color);
}

//  FULL SCREEN IN SINGLE COLOR
//  ONLY FOR 9341 
void LCD_Full_Color(uint16_t Color)
{	
	uint16_t i;

	// ONLY FOR U2D_R2L
	LCD_WR_REG( SetX_CMD ); 
	LCD_WR_DATA( 0 );
	LCD_WR_DATA( 0 );
	LCD_WR_DATA( 319 >> 8 );
	LCD_WR_DATA( 319 & 0xFF );

	LCD_WR_REG( SetY_CMD ); 
	LCD_WR_DATA( 0 );
	LCD_WR_DATA( 0 );
	LCD_WR_DATA( 239 >> 8 );
	LCD_WR_DATA( 239 & 0xFF );

	LCD_WR_REG( WRAM_CMD ); 
	for(i=0; i<76800; i++)
	{	
		LCD_WR_DATA( Color );
	}
}

uint16_t LCD_ReadReg(uint16_t LCD_Reg)
{										   
	LCD_WR_REG(LCD_Reg);   
	Delay(50);
	return LCD_RD_DATA(); 
}

uint16_t LCD_RD_DATA(void)
{										   
	uint16_t t;

	LCD_RS_SET;
	LCD_CS_CLR;
	LCD_RD_CLR;			   
	t=ReadData();
	Delay(1);  
	LCD_RD_SET;
	LCD_CS_SET; 

	return t;  
}

uint16_t ReadData() {
	uint16_t ans = 0;
	for (int i = 0; i < 16; i++) {
		if (LCD->LCD_DATA[i] == 1)
			ans += (1 << i);
	}
	return ans;
}

void LCD_PrepareDMA()
{
	// ONLY FOR U2D_R2L
	LCD_WR_REG( SetX_CMD ); 
	LCD_WR_DATA( 0 );
	LCD_WR_DATA( 0 );
	LCD_WR_DATA( 319 >> 8 );
	LCD_WR_DATA( 319 & 0xFF );

	LCD_WR_REG( SetY_CMD ); 
	LCD_WR_DATA( 0 );
	LCD_WR_DATA( 0 );
	LCD_WR_DATA( 239 >> 8 );
	LCD_WR_DATA( 239 & 0xFF );

	LCD_WR_REG( WRAM_CMD ); 
	LCD_RS_SET;
	LCD_CS_CLR;
	LCD_WR_CLR; //to prevent creating posedge when transfer from DMA to Software

	LCD_DMA_SET;
}

void LCD_QuitDMA()
{	
	LCD_DMA_CLR;
	LCD_CS_SET;
}
