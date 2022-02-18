#include "CortexM3.h"
#include <string.h>

/****************************ACC*******************************/
const uint32_t acc_data_reg[29][11] = {
    // GENERALCFG,SIDELENINFO,FMBASEADDR,WBASEADDR,WBBASEADDR,PWBBASEADDR,BIASBASEADDR,WMASKCODE_H,WMASKCODE_L,WMASKCODEN_H,WMASKCODEN_L
    0x2AA38F83,0x00420106,0x40770000,0x40030000,0x40994B40,0x00000000,0x00000000,0xFFFFFFFF,0xDDE36E75,0xFFFFFFFF,0xFFFFFFFF,   //layer conv0
    0x25E39F9F,0x00218084,0x40994B40,0x40031200,0x4087C240,0x00000000,0x00000020,0xFF7FFFF9,0xEFFFFBFD,0xFFFFFFFF,0xFFFFFFFF,   //layer conv1
    0x25C1FFBF,0x00118043,0x4087C240,0x40043200,0x40994B40,0x00000000,0x00000060,0xFFFBFFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,   //layer conv2
    0x218C7FBF,0x0009C623,0x40994B40,0x40067200,0x4087C240,0x40F70000,0x000000A0,0xBFF7FFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,   //layer conv3 (node)
    0x01847FBF,0x00118023,0x40F70000,0x4008B200,0x40FBC900,0x00000000,0x000000E0,0x5444C1C9,0x25886885,0xFFFFFFFF,0xFFFFFFFF,   //layer conv4 
    0x011467BF,0x00108023,0x40FBC900,0x400AF200,0x4137BAA0,0x00000000,0x00000120,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,   //layer conv5
    0x01847FBF,0x00118023,0x40F70000,0x400B8200,0x40FBC900,0x00000000,0x00000130,0x0004201A,0x00010406,0xFFFFFFFF,0xFFFFFFFF,   //layer conv6
    0x011463BF,0x00108023,0x40FBC900,0x400DC200,0x41370000,0x00000000,0x00000170,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,   //layer conv7
    0x318A7FBF,0x0005A613,0x4087C240,0x400E0A00,0x40994B40,0x40F70000,0x1B800178,0xBB4EFAD9,0x2D7FEFB3,0xACE475BC,0x65C8E7FF,   //layer conv8 (node)
    0x01827FFF,0x00098013,0x40F70000,0x40128A00,0x40FBC900,0x00000000,0x000001F8,0xE29C21C4,0x6A201196,0xFFFFFFFF,0xFFFFFFFF,   //layer conv9 
    0x011267BF,0x00088013,0x40FBC900,0x40170A00,0x4138CAE0,0x00000000,0x00000238,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,   //layer conv10
    0x01827FFF,0x00098013,0x40F70000,0x40179A00,0x40FBC900,0x00000000,0x00000240,0x929A4961,0x204984F5,0xFFFFFFFF,0xFFFFFFFF,   //layer conv11
    0x011263BF,0x00088013,0x40FBC900,0x401C1A00,0x41378820,0x00000000,0x00000288,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,   //layer conv12
    0x31897FFF,0x0003960B,0x40994B40,0x401C6200,0x4087C240,0x40F70000,0x2D000290,0xC725B484,0xC16B83FC,0x8FB08A92,0x6090CCC8,   //layer conv13 (node)
    0x01817FFF,0x0005800B,0x40F70000,0x40256200,0x40FBC900,0x00000000,0x00000310,0x18BB312C,0x48954160,0xFFFFFFFF,0xFFFFFFFF,   //layer conv14 
    0x011167BF,0x0004800B,0x40FBC900,0x4029E200,0x41391320,0x00000000,0x00000350,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,   //layer conv15
    0x01817FFF,0x0005800B,0x40F70000,0x402A7200,0x40FBC900,0x00000000,0x00000360,0x702C8259,0x6105579C,0xFFFFFFFF,0xFFFFFFFF,   //layer conv16
    0x011163BF,0x0004800B,0x40FBC900,0x402EF200,0x4137AC40,0x00000000,0x000003A0,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,   //layer conv17
    0x0108FFFF,0x00028E07,0x4087C240,0x402F3A00,0x40994B40,0x40F70000,0x000003A8,0x98A0B720,0xC1B88082,0xFFFFFFFF,0xFFFFFFFF,   //layer conv18 (node)
    0x0180FFBF,0x00038007,0x40F70000,0x4033BA00,0x40FBC900,0x00000000,0x000003E8,0xD40E21BA,0x65485B13,0xFFFFFFFF,0xFFFFFFFF,   //layer conv19 
    0x0110E7BF,0x00028007,0x40FBC900,0x4035FA00,0x41392760,0x00000000,0x00000428,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,   //layer conv20
    0x0180FFBF,0x00038007,0x40F70000,0x40368A00,0x40FBC900,0x00000000,0x00000438,0xAE529C51,0x7FC1CC25,0xFFFFFFFF,0xFFFFFFFF,   //layer conv21
    0x0110E3BF,0x00028007,0x40FBC900,0x4038CA00,0x4137B660,0x00000000,0x00000478,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,   //layer conv22
    0x0180BFBF,0x00028005,0x40994B40,0x40391200,0x40F70000,0x00000000,0x00000480,0x24421930,0x03000049,0xFFFFFFFF,0xFFFFFFFF,   //layer conv23 (node)
    0x0180BFBF,0x00028005,0x40F70000,0x403B5200,0x40FBC900,0x00000000,0x000004C0,0x0A010004,0x449C9225,0xFFFFFFFF,0xFFFFFFFF,   //layer conv24 
    0x0110A7BF,0x00018005,0x40FBC900,0x403D9200,0x41392DA0,0x00000000,0x00000500,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,   //layer conv25
    0x0180BFBF,0x00028005,0x40F70000,0x403E2200,0x40FBC900,0x00000000,0x00000510,0xD700902A,0x8B40A242,0xFFFFFFFF,0xFFFFFFFF,   //layer conv26
    0x0110A3BF,0x00018005,0x40FBC900,0x40406200,0x4137B980,0x00000000,0x00000550,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,   //layer conv27
    0x40000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000    //layer nms
};


uint8_t layer_cnt;
uint8_t accdone_flag = 0;
uint8_t noface = 0;

void ACC_GetWeight(void)
{
    LED_LightUp(0);
    int weight;
    int receive;
    int i,j;

    for ( j = 0; j < 1010304; j++)
    {    
        for ( i = 0; i < 4; i++)
        {
            receive = uart_ReceiveChar(UART);
            switch (i)
            {
            case 0:
                weight = ((weight & (0x00000000) ) | (receive));
                break;
            case 1:
                weight = ((weight & (0x000000FF) ) | (receive << 8));
                break;
            case 2:
                weight = ((weight & (0x0000FFFF) ) | (receive << 16));
                break;
            case 3:
                weight = ((weight & (0x00FFFFFF) ) | (receive << 24));
                break;
            default:
                break;
            }
        }  
        DDR ->  WEIGHT0_27[j] = weight;  
    }  
    LED_ShutDown(0);   
}

void ACC_GetImage(void)
{
    LED_LightUp(1);
    uint32_t pixel;
    uint32_t receive;
    uint32_t i,j,t;

    for(t = 0; t < 10; t++){
        for ( j = 0; j < 76800; j++){    
            for ( i = 0; i < 4; i++){
                receive = uart_ReceiveChar(UART);
                switch (i){
                case 0:
                    pixel = ((pixel & (0x00000000) ) | (receive));
                    break;
                case 1:
                    pixel = ((pixel & (0x000000FF) ) | (receive << 8));
                    break;
                case 2:
                    pixel = ((pixel & (0x0000FFFF) ) | (receive << 16));
                    break;
                case 3:
                    pixel = ((pixel & (0x00FFFFFF) ) | (receive << 24));
                    break;
                default:
                    break;
                }
            }  
            IMAGE->IMAGESRC[t][j] = pixel;   
        } 
    }
    LED_ShutDown(1);
}

void ACC_GetFeatureMap(void)
{
    LED_LightUp(1);
    int featuremap;
    int receive;
    int i,j;

    for ( j = 0; j < 274576; j++)
    {    
        for ( i = 0; i < 4; i++)
        {
            receive = uart_ReceiveChar(UART);
            switch (i)
            {
            case 0:
                featuremap = ((featuremap & (0x00000000) ) | (receive));
                break;
            case 1:
                featuremap = ((featuremap & (0x000000FF) ) | (receive << 8));
                break;
            case 2:
                featuremap = ((featuremap & (0x0000FFFF) ) | (receive << 16));
                break;
            case 3:
                featuremap = ((featuremap & (0x00FFFFFF) ) | (receive << 24));
                break;
            default:
                break;
            }
        }  
        IMAGE->IMAGESCALE[j] = featuremap;   
    }
    LED_ShutDown(1);
}

void ACC_RegCfg(const uint32_t *regval)
{
    ACCC -> GENERALCFG   = regval[0];
    ACCC -> SIDELENINFO  = regval[1];
    ACCC -> FMBASEADDR   = regval[2];
    ACCC -> WBASEADDR    = regval[3];
    ACCC -> WBBASEADDR   = regval[4];
    ACCC -> PWBBASEADDR  = regval[5];
    ACCC -> BIASBASEADDR = regval[6];
    // ACCC -> WMASKCODE_H  = regval[7];
    // ACCC -> WMASKCODE_L  = regval[8];
    // ACCC -> WMASKCODEN_H = regval[9];
    // ACCC -> WMASKCODEN_L = regval[10];
    // ACCC -> WMASKCODE_H  = 0xFFFFFFFF;
    // ACCC -> WMASKCODE_L  = 0xFFFFFFFF;
    // ACCC -> WMASKCODEN_H = 0xFFFFFFFF;
    // ACCC -> WMASKCODEN_L = 0xFFFFFFFF;
    // ACCC -> WMASKCODEN_H = 0x00000000;
    // ACCC -> WMASKCODEN_L = 0x00000000;
}

void ACC_ClrCtrl(void)
{
    ACCC -> GENERALCTRL = 0x00000000;                       /*To Clear Conv_CNT                         */
}

void ACC_ConvEnable(void)
{
    ACCC -> GENERALCTRL = 0x00000003;                     /*Enable Conv_CNT and Start Converlution    */
}

void ACC_NmsEnable(void)
{
    ACCC -> GENERALCTRL  = 0x00000008;
}

void ACC_ImageInit(void)
{
    // Receive Wieght
    ACC_GetWeight();
    // Receive Image
    ACC_GetImage();
    // Receive Featuremap
    //ACC_GetFeatureMap();
    // For Image Padding
    IMAGE_ClrRGBAValue();
}

void ACC_RegInit(void)
{
    // Conv_Layer 0 Configuration
    layer_cnt = 0;
    ACC_ClrCtrl();
    ACC_RegCfg(acc_data_reg[0]); 
}

void ACC_Start(void)
{
    ACC_ConvEnable();
}

void ACC_Init_Test(void)
{
    layer_cnt = 0;
    ACC_ClrCtrl();
    ACC_RegCfg(acc_data_reg[0]); 
}

void ACCConvDoneHandler(void) 
{
    layer_cnt += 1;
    if(layer_cnt < 28){/*Conv_Layer Configuration*/
        ACC_ClrCtrl(); 
        ACC_RegCfg(acc_data_reg[layer_cnt]);    
        ACC_ConvEnable();
    }
    else {/*Nms_Layer Configuration*/
        ACC_ClrCtrl();
        ACC_RegCfg(acc_data_reg[layer_cnt]);
        ACC_NmsEnable();
    }
}

void ACCNoFaceHandler(void) 
{
    /*Conv_Layer 0 Configuration*/
    //ACC_Init();
    noface = 1;
}

void ACCReadResultsHandler(void) 
{
    accdone_flag = 1;
}

uint8_t ACC_GetIsvalid(uint8_t FaceNum)
{
    uint8_t valid;
    if(ACCC->ISVALID & (0x00000001 << FaceNum)){
        valid = 1;
    }
    else{
        valid = 0;
    }
    
    return valid;
}

struct FACE ACC_ReadResults(uint8_t FaceNum)
{
    uint8_t valid;
    valid = ACC_GetIsvalid(FaceNum);
    struct FACE face;
    if(valid){
        face.mask = (ACCC->CATEGORY & (0x00000001 << FaceNum)) ? 1 : 0;
        face.coord[0] = (ACCC->FACECOORD[FaceNum][0] & (0xFFFF0000)) >> 16;
        face.coord[1] = (ACCC->FACECOORD[FaceNum][0] & (0x0000FFFF));
        face.coord[2] = (ACCC->FACECOORD[FaceNum][1] & (0xFFFF0000)) >> 16;
        face.coord[3] = (ACCC->FACECOORD[FaceNum][1] & (0x0000FFFF));
    }
    else{
        face.mask = 0xFF;
    }

    return face;     
}

void ACC_NmsReturn(void)
{
    ACCC->GENERALCTRL = 0x10;
}
