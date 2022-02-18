#include "CortexM3.h"
#include "camera_initial_reg_file.h"
#include <math.h>

uint32_t Read_CAMERA_DATA_STATE(void)
{
	return(CAMERA->CAMERA_DATA_STATE);
}

void Set_CAMERA_DATA_STATE(uint32_t state)
{
	CAMERA->CAMERA_DATA_STATE = state;
}

uint32_t Read_CAMERA_SDA(void)
{
    return(CAMERA->CAMERA_SDAI);
}

void Set_CAMERA_SDA_W(void)
{
    CAMERA->CAMERA_SDAOEN = 1;
}

void Set_CAMERA_SDA_R(void)
{
    CAMERA->CAMERA_SDAOEN = 0;
}

void Set_CAMERA_SCL(void)
{
    CAMERA->CAMERA_SCL = 1;
}

void Clr_CAMERA_SCL(void)
{
    CAMERA->CAMERA_SCL = 0;
}

void Set_CAMERA_SDA(void)
{
    CAMERA->CAMERA_SDAO = 1;
}

void Clr_CAMERA_SDA(void)
{
    CAMERA->CAMERA_SDAO = 0;
}

void Set_CAMERA_PWDN(void)
{
    CAMERA->CAMERA_PWDN = 1;
}

void Clr_CAMERA_PWDN(void)
{
    CAMERA->CAMERA_PWDN = 0;
}

void Set_CAMERA_RST(void)
{
    CAMERA->CAMERA_RST = 1;
}

void Clr_CAMERA_RST(void)
{
    CAMERA->CAMERA_RST = 0;
}

void CAMERA_Start(void)
{
	Set_CAMERA_SDA();
    Set_CAMERA_SCL();
	Delay(80);
    Clr_CAMERA_SDA();
    Delay(80);
    Clr_CAMERA_SCL();
}

void CAMERA_Stop(void)
{
	Clr_CAMERA_SDA();
    Delay(80);
    Set_CAMERA_SCL();
	Delay(80);
	Set_CAMERA_SDA();
    Delay(80);
}

void CAMERA_Waite(void)
{
	Delay(80);
    Set_CAMERA_SCL();
    Delay(100);
    Clr_CAMERA_SCL();
}

void CAMERA_NA(void)
{
	Delay(80);
	Set_CAMERA_SDA();
	Set_CAMERA_SCL();	
	Delay(80);
	Clr_CAMERA_SCL();
	Delay(80);
	Clr_CAMERA_SDA();
	Delay(80);
}

void CAMERA_Write_Byte(uint8_t data)
{
	uint8_t j;	 
	for(j=0;j<8;j++)
	{
		if(data&0x80)Set_CAMERA_SDA();
		else Clr_CAMERA_SDA();
		data<<=1;
        Delay(20);
		Set_CAMERA_SCL();	
		Delay(80);
		Clr_CAMERA_SCL();
        Delay(80);		   
	}			 
	Set_CAMERA_SDA_R();		
	Delay(80);
	Set_CAMERA_SCL();			
	Delay(80);        
	Clr_CAMERA_SCL();	 
	Set_CAMERA_SDA_W();		   
}

uint8_t CAMERA_Read_Byte(void)
{
    uint8_t temp=0,j;    
	Set_CAMERA_SDA_R();		
	for(j=8;j>0;j--) 
	{		     	  
		Delay(80);
		Set_CAMERA_SCL();
		temp=temp<<1;
		if(Read_CAMERA_SDA())
            temp++;   
		Delay(80);
		Clr_CAMERA_SCL();
	}	
	Set_CAMERA_SDA_W();		   
	return temp;
}

uint8_t CAMERA_Read_Reg(uint16_t reg)
{
    uint8_t val;
    CAMERA_Start();
    CAMERA_Write_Byte(0x78);
    //CAMERA_Waite();
    CAMERA_Write_Byte(reg >> 8);
    //CAMERA_Waite();
    CAMERA_Write_Byte(reg);
    //CAMERA_Waite();
    CAMERA_Stop();
    Delay(100);
    CAMERA_Start();
    CAMERA_Write_Byte(0x79);
    //CAMERA_Waite();
    val = CAMERA_Read_Byte();
    CAMERA_NA();
    CAMERA_Stop();
    return val;
}

void CAMERA_Command(uint8_t addr_h,uint8_t addr_l,uint8_t data)
{
	CAMERA_Start();
	CAMERA_Write_Byte(0x78);
    //CAMERA_Waite();
	CAMERA_Write_Byte(addr_h);
    //CAMERA_Waite();
	CAMERA_Write_Byte(addr_l);
    //CAMERA_Waite();
	CAMERA_Write_Byte(data);
    //CAMERA_Waite();
	CAMERA_Stop();
}

void CAMERA_Init(void)
{
    //Set_CAMERA_DATA_STATE(1);
    Set_CAMERA_SDA_W();
	Clr_CAMERA_PWDN();
	Delay(100);
	Set_CAMERA_RST();
	Delay(100);

    uint16_t reg;
    reg  = CAMERA_Read_Reg(0x300a);
    reg <<= 8;
    reg |= CAMERA_Read_Reg(0x300b);
    
    uint32_t i;
    // QVGA RGB565
	for(i=0;i<sizeof(camera_initial_reg)/3;i++) 
		CAMERA_Command(camera_initial_reg[i][0],camera_initial_reg[i][1],camera_initial_reg[i][2]);
    
    //FA INITIAL
    CAMERA_Command(0x30,0x00,0x20);

    uint16_t addr = 0x8000;
    uint8_t state = 0x8f;
    uint16_t iteration = 100;

    for(i=0;i<sizeof(OV5640_AF_FW);i++) 
	{
		CAMERA_Command(addr >> 8,addr,OV5640_AF_FW[i]);
		addr++;
	}  
    CAMERA_Command(0x30,0x22, 0x00);
    CAMERA_Command(0x30,0x23, 0x00);
    CAMERA_Command(0x30,0x24, 0x00);
    CAMERA_Command(0x30,0x25, 0x00);
    CAMERA_Command(0x30,0x26, 0x00);
    CAMERA_Command(0x30,0x27, 0x00);
    CAMERA_Command(0x30,0x28, 0x00);
    CAMERA_Command(0x30,0x29, 0xFF);
    CAMERA_Command(0x30,0x00, 0x00);
    CAMERA_Command(0x30,0x04, 0xFF);
    CAMERA_Command(0x00,0x00, 0x00);
    CAMERA_Command(0x00,0x00, 0x00);
    CAMERA_Command(0x00,0x00, 0x00);
    CAMERA_Command(0x00,0x00, 0x00);

    do {
        state = (uint8_t)CAMERA_Read_Reg(0x3029);
        Delay(10);
        if (iteration-- == 0)
        {	
            break;
        }
    } 
    while(state!=0x70);

    //LIGHT MODE
    CAMERA_Command(0x32,0x12,0x03);	
	for(i=0;i<7;i++)
        CAMERA_Command((0x3400+i >>8 ),0x3400+i,OV5640_LIGHTMODE_TBL[i]); 
	CAMERA_Command(0x32,0x12,0x13); 
	CAMERA_Command(0x32,0x12,0xa3);

    //COLOR SATURATION
	CAMERA_Command(0x32,0x12,0x03);	
	CAMERA_Command(0x53,0x81,0x1c);
	CAMERA_Command(0x53,0x82,0x5a);
	CAMERA_Command(0x53,0x83,0x06);
	for(i=0;i<6;i++)
        CAMERA_Command((0x5384+i) >> 8,0x5384+i,OV5640_SATURATION_TBL[i]);
	CAMERA_Command(0x53,0x8b, 0x98);
	CAMERA_Command(0x53,0x8a, 0x01);
	CAMERA_Command(0x32,0x12, 0x13); 
	CAMERA_Command(0x32,0x12, 0xa3); 

    //BRIGHTNESS
    uint8_t brtval;
	brtval=0;
	CAMERA_Command(0x32,0x12,0x03);	
	CAMERA_Command(0x55,0x87,brtval<<4);
	CAMERA_Command(0x55,0x88,0x01);
	CAMERA_Command(0x32,0x12,0x13); 
	CAMERA_Command(0x32,0x12,0xa3);

    //CONTRAST
    uint8_t reg0val=0X00;
	uint8_t reg1val=0X20;
	CAMERA_Command(0x32,0x12,0x03); 
	CAMERA_Command(0x55,0x85,reg0val);
	CAMERA_Command(0x55,0x86,reg1val); 
	CAMERA_Command(0x32,0x12,0x13);
	CAMERA_Command(0x32,0x12,0xa3); 

    //SHARPNESS
    CAMERA_Command(0x53,0x08,0x25);
	CAMERA_Command(0x53,0x00,0x08);
	CAMERA_Command(0x53,0x01,0x30);
	CAMERA_Command(0x53,0x02,0x10);
	CAMERA_Command(0x53,0x03,0x00);
	CAMERA_Command(0x53,0x09,0x08);
	CAMERA_Command(0x53,0x0a,0x30);
	CAMERA_Command(0x53,0x0b,0x04);
	CAMERA_Command(0x53,0x0c,0x06);

    //FA CONSTANT
    CAMERA_Command(0x30,0x23,0x01);
    CAMERA_Command(0x30,0x22,0x04);
    iteration = 5000;
    do {
    	 state = (uint8_t)CAMERA_Read_Reg(0x3023);
        if (iteration-- == 0)
        {
            break ;
        }
        Delay(10);
    } while(state!=0x00); 
    //Set_CAMERA_DATA_STATE(1); 
}

void CAMERA_Initial(void)
{
    Set_CAMERA_SDA_W();
	Clr_CAMERA_PWDN();
	Delay(100);
	Set_CAMERA_RST();
	Delay(100);

    uint16_t reg;
    reg  = CAMERA_Read_Reg(0x300a);
    reg <<= 8;
    reg |= CAMERA_Read_Reg(0x300b);
    
    uint32_t i;
    // QVGA RGB565
	for(i=0;i<sizeof(camera_initial_reg)/3;i++) 
		CAMERA_Command(camera_initial_reg[i][0],camera_initial_reg[i][1],camera_initial_reg[i][2]);
    
    //FA INITIAL
    CAMERA_Command(0x30,0x00,0x20);

    uint16_t addr = 0x8000;
    uint8_t state = 0x8f;
    uint16_t iteration = 100;

    for(i=0;i<sizeof(OV5640_AF_FW);i++) 
	{
		CAMERA_Command(addr >> 8,addr,OV5640_AF_FW[i]);
		addr++;
	}  
    CAMERA_Command(0x30,0x22, 0x00);
    CAMERA_Command(0x30,0x23, 0x00);
    CAMERA_Command(0x30,0x24, 0x00);
    CAMERA_Command(0x30,0x25, 0x00);
    CAMERA_Command(0x30,0x26, 0x00);
    CAMERA_Command(0x30,0x27, 0x00);
    CAMERA_Command(0x30,0x28, 0x00);
    CAMERA_Command(0x30,0x29, 0xFF);
    CAMERA_Command(0x30,0x00, 0x00);
    CAMERA_Command(0x30,0x04, 0xFF);
    CAMERA_Command(0x00,0x00, 0x00);
    CAMERA_Command(0x00,0x00, 0x00);
    CAMERA_Command(0x00,0x00, 0x00);
    CAMERA_Command(0x00,0x00, 0x00);

    do {
        state = (uint8_t)CAMERA_Read_Reg(0x3029);
        Delay(10);
        if (iteration-- == 0)
        {	
            break;
        }
    } 
    while(state!=0x70);

    //LIGHT MODE
    CAMERA_Command(0x32,0x12,0x03);	
	for(i=0;i<7;i++)
        CAMERA_Command((0x3400+i >>8 ),0x3400+i,OV5640_LIGHTMODE_TBL[i]); 
	CAMERA_Command(0x32,0x12,0x13); 
	CAMERA_Command(0x32,0x12,0xa3);

    //COLOR SATURATION
	CAMERA_Command(0x32,0x12,0x03);	
	CAMERA_Command(0x53,0x81,0x1c);
	CAMERA_Command(0x53,0x82,0x5a);
	CAMERA_Command(0x53,0x83,0x06);
	for(i=0;i<6;i++)
        CAMERA_Command((0x5384+i) >> 8,0x5384+i,OV5640_SATURATION_TBL[i]);
	CAMERA_Command(0x53,0x8b, 0x98);
	CAMERA_Command(0x53,0x8a, 0x01);
	CAMERA_Command(0x32,0x12, 0x13); 
	CAMERA_Command(0x32,0x12, 0xa3); 

    //BRIGHTNESS
    uint8_t brtval;
	brtval=0;
	CAMERA_Command(0x32,0x12,0x03);	
	CAMERA_Command(0x55,0x87,brtval<<4);
	CAMERA_Command(0x55,0x88,0x01);
	CAMERA_Command(0x32,0x12,0x13); 
	CAMERA_Command(0x32,0x12,0xa3);

    //CONTRAST
    uint8_t reg0val=0X00;
	uint8_t reg1val=0X20;
	CAMERA_Command(0x32,0x12,0x03); 
	CAMERA_Command(0x55,0x85,reg0val);
	CAMERA_Command(0x55,0x86,reg1val); 
	CAMERA_Command(0x32,0x12,0x13);
	CAMERA_Command(0x32,0x12,0xa3); 

    //SHARPNESS
    CAMERA_Command(0x53,0x08,0x25);
	CAMERA_Command(0x53,0x00,0x08);
	CAMERA_Command(0x53,0x01,0x30);
	CAMERA_Command(0x53,0x02,0x10);
	CAMERA_Command(0x53,0x03,0x00);
	CAMERA_Command(0x53,0x09,0x08);
	CAMERA_Command(0x53,0x0a,0x30);
	CAMERA_Command(0x53,0x0b,0x04);
	CAMERA_Command(0x53,0x0c,0x06);

    //FA CONSTANT
    CAMERA_Command(0x30,0x23,0x01);
    CAMERA_Command(0x30,0x22,0x04);
    iteration = 5000;
    do {
    	 state = (uint8_t)CAMERA_Read_Reg(0x3023);
        if (iteration-- == 0)
        {
            break ;
        }
        Delay(10);
    } while(state!=0x00);
    
   
}

void CAMERA_ImageCap(void)
{
    Set_CAMERA_DATA_STATE(1);
    while(Read_CAMERA_DATA_STATE());
}
/**************************Image Scale**************************/
// Clear RGBA Value For Padding
void IMAGE_ClrRGBAValue(void)
{
    int row,col;
    for (row = 0; row < 262; row++)
    {
        for (col = 0; col < 262; col++)
        {
            IMAGE->IMAGEDST_R[row][col] = 0;
            IMAGE->IMAGEDST_G[row][col] = 0;
            IMAGE->IMAGEDST_B[row][col] = 0;
            IMAGE->IMAGEDST_A[row][col] = 0;
        }
        
    }
}

// Separate Image Data to CHW Type
struct RGB IMAGE_GetRGBValue(uint8_t num, uint32_t row, uint32_t col)
{
    struct RGB value;
    value.rgb[0] = (IMAGE->IMAGESRC[num][(320*row)+col]	& R_CHAN) >> R_POS;
    value.rgb[1] = (IMAGE->IMAGESRC[num][(320*row)+col] & G_CHAN) >> G_POS;
    value.rgb[2] = (IMAGE->IMAGESRC[num][(320*row)+col] & B_CHAN) >> B_POS;

    return value;
}

// Storage Scaled Image RGB Value
void IMAGE_DstRGBValue(struct RGB value, uint32_t row, uint32_t col)
{
    IMAGE->IMAGEDST_R[row+1][col+1] = value.rgb[0];
    IMAGE->IMAGEDST_G[row+1][col+1] = value.rgb[1];
    IMAGE->IMAGEDST_B[row+1][col+1] = value.rgb[2];
}

// Fixed_Point Number Quantification
struct RGB IMAGE_FPNQ(struct RGB value)
{
    struct RGB number;
    number.rgb[0] = (value.rgb[0] << 5);
    number.rgb[1] = (value.rgb[1] << 4);
    number.rgb[2] = (value.rgb[2] << 5);  

    return number;  
}

// Image Scale
void IMAGE_ScalePixel(uint8_t num, uint32_t DstRow, uint32_t DstCol, uint32_t SrcHeight, uint32_t SrcWidth, float ScaleH, float ScaleW)
{
    float dstRow = DstRow;
    float dstCol = DstCol;

    float srcHeight = SrcHeight;
    float srcWidth = SrcWidth;

    float srcRow,srcCol;
    srcRow = ((dstRow/ScaleH) < (srcHeight - 1)) ? (dstRow/ScaleH) : (SrcHeight - 1);
    srcCol = ((dstCol/ScaleW) < (srcWidth  - 1)) ? (dstCol/ScaleW) : (SrcWidth  - 1);

    uint32_t intRow,intCol;
    intRow = floor(srcRow);
    intCol = floor(srcCol);

    float u,v;
    u = srcCol - intCol;
    v = srcRow - intRow;

    float u1,v1;
    u1 = 1 - u;
    v1 = 1 - v;

    struct RGB rgb00Value;
    struct RGB rgb01Value;
    struct RGB rgb10Value;
    struct RGB rgb11Value;
    rgb00Value = IMAGE_FPNQ(IMAGE_GetRGBValue(num, intRow, intCol));
    rgb01Value = IMAGE_FPNQ(IMAGE_GetRGBValue(num, intRow, (intCol+1)));
    rgb10Value = IMAGE_FPNQ(IMAGE_GetRGBValue(num, (intRow+1), intCol));
    rgb11Value = IMAGE_FPNQ(IMAGE_GetRGBValue(num, (intRow+1), (intCol+1)));

    float partV, partV1;
    struct RGB rgbDstValue;
    uint8_t i;
    for (i = 0; i < 3; i++)
    {
        partV = v  * ((u1 * rgb10Value.rgb[i]) + (u * rgb11Value.rgb[i]));
        partV1 = v1 * ((u1 * rgb00Value.rgb[i]) + (u * rgb01Value.rgb[i]));
        rgbDstValue.rgb[i] = partV + partV1 + 0.5;
    }
    IMAGE_DstRGBValue(rgbDstValue, DstRow, DstCol);
} 

void IMAGE_ScaleImage(uint8_t num, uint32_t SrcHeight, uint32_t SrcWidth, uint32_t DstHeight, uint32_t DstWidth)
{
    float srcHeight = SrcHeight;
    float srcWidth = SrcWidth;
    float dstHeight = DstHeight;
    float dstWidth = DstWidth;

    float scaleH,scaleW;
    scaleH = (dstHeight / srcHeight);
    scaleW = (dstWidth / srcWidth);
    uint32_t row,col;
    for (row = 0; row < DstHeight; row++)
    {
        for (col = 0; col < DstWidth; col++)
        {
            IMAGE_ScalePixel(num, row, col, SrcHeight, SrcWidth, scaleH, scaleW);
        } 
    }  

}

// Image Process
void IMAGE_Process(uint8_t num)
{
    LED_LightUp(2);
    Set_CAMERA_DATA_STATE(1);
    //while (Read_CAMERA_DATA_STATE());
    //Timer_Reset();
    //Timer_Start();
    IMAGE_ScaleImage(num,240,320,260,260);
    //Timer_Show_Enable();
    LED_ShutDown(2);
}
