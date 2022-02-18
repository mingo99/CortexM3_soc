#include "CortexM3.h"
#include <string.h>

/****************************ACC*******************************/

uint8_t layer_cnt;
uint8_t accdone_flag = 0;

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
    uint32_t i,j;

    for ( j = 0; j < 76800; j++)
    {    
        for ( i = 0; i < 4; i++)
        {
            receive = uart_ReceiveChar(UART);
            switch (i)
            {
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
        IMAGE->IMAGESRC[0][j] = pixel;   
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

void ACC_RegConfig(uint8_t Layer)
{
    switch (Layer){
        case 0:{/*Conv_Layer 0 Configuration*/
            ACCC -> GENERALCFG   = 0x2AA38F83;
            ACCC -> SIDELENINFO  = 0x00420106;
            ACCC -> FMBASEADDR   = 0x40770000;
            ACCC -> WBASEADDR    = 0x40030000;
            ACCC -> WBBASEADDR   = 0x40994B40;
            ACCC -> PWBBASEADDR  = 0x00000000;
            ACCC -> BIASBASEADDR = 0x00000000;
            break;
        }
        case 1:{/*Conv_Layer 1 Configuration*/
            ACCC -> GENERALCFG   = 0x25E39F9F;
            ACCC -> SIDELENINFO  = 0x00218084;
            ACCC -> FMBASEADDR   = 0x40994B40;
            ACCC -> WBASEADDR    = 0x40031200;
            ACCC -> WBBASEADDR   = 0x4087C240;
            ACCC -> PWBBASEADDR  = 0x00000000;
            ACCC -> BIASBASEADDR = 0x00000020;
            break;
        }
        case 2:{/*Conv_Layer 2 Configuration*/
            ACCC -> GENERALCFG   = 0x25C1FFBF;
            ACCC -> SIDELENINFO  = 0x00118043;
            ACCC -> FMBASEADDR   = 0x4087C240;
            ACCC -> WBASEADDR    = 0x40043200;
            ACCC -> WBBASEADDR   = 0x40994B40;
            ACCC -> PWBBASEADDR  = 0x00000000;
            ACCC -> BIASBASEADDR = 0x00000060;
            break;
        }
        case 3:{/*Conv_Layer 3 Configuration*/
            ACCC -> GENERALCFG   = 0x218C7FBF;
            ACCC -> SIDELENINFO  = 0x0009C623;
            ACCC -> FMBASEADDR   = 0x40994B40;
            ACCC -> WBASEADDR    = 0x40067200;
            ACCC -> WBBASEADDR   = 0x4087C240;
            ACCC -> PWBBASEADDR  = 0x40F70000;
            ACCC -> BIASBASEADDR = 0x000000A0;
            break;
        }
        case 4:{/*Conv_Layer 4 Configuration*/
            ACCC -> GENERALCFG   = 0x01847FBF;
            ACCC -> SIDELENINFO  = 0x00118023;
            ACCC -> FMBASEADDR   = 0x40F70000;
            ACCC -> WBASEADDR    = 0x4008B200;
            ACCC -> WBBASEADDR   = 0x40FBC900;
            ACCC -> PWBBASEADDR  = 0x00000000;
            ACCC -> BIASBASEADDR = 0x000000E0;
            //NVIC_DisableIRQ(ACCConvDone_TRQn);
            break;
        }
        case 5:{/*Conv_Layer 5 Configuration*/
            ACCC -> GENERALCFG   = 0x011467BF;
            ACCC -> SIDELENINFO  = 0x00108023;
            ACCC -> FMBASEADDR   = 0x40FBC900;
            ACCC -> WBASEADDR    = 0x400AF200;
            ACCC -> WBBASEADDR   = 0x4137BAA0;
            ACCC -> PWBBASEADDR  = 0x00000000;
            ACCC -> BIASBASEADDR = 0x00000120;
            break;
        }
        case 6:{/*Conv_Layer 6 Configuration*/
            ACCC -> GENERALCFG   = 0x01847FBF;
            ACCC -> SIDELENINFO  = 0x00118023;
            ACCC -> FMBASEADDR   = 0x40F70000;
            ACCC -> WBASEADDR    = 0x400B8200;
            ACCC -> WBBASEADDR   = 0x40FBC900;
            ACCC -> PWBBASEADDR  = 0x00000000;
            ACCC -> BIASBASEADDR = 0x00000130;
            //NVIC_DisableIRQ(ACCConvDone_TRQn);
            break;
        }
        case 7:{/*Conv_Layer 7 Configuration*/
            ACCC -> GENERALCFG   = 0x011463BF;
            ACCC -> SIDELENINFO  = 0x00108023;
            ACCC -> FMBASEADDR   = 0x40FBC900;
            ACCC -> WBASEADDR    = 0x400DC200;
            ACCC -> WBBASEADDR   = 0x41370000;
            ACCC -> PWBBASEADDR  = 0x00000000;
            ACCC -> BIASBASEADDR = 0x00000170;
            break;
        }
        case 8:{/*Conv_Layer 8 Configuration*/
            ACCC -> GENERALCFG   = 0x318A7FBF;
            ACCC -> SIDELENINFO  = 0x0005A613;
            ACCC -> FMBASEADDR   = 0x4087C240;
            ACCC -> WBASEADDR    = 0x400E0A00;
            ACCC -> WBBASEADDR   = 0x40994B40;
            ACCC -> PWBBASEADDR  = 0x40F70000;
            ACCC -> BIASBASEADDR = 0x1B800178;
            break;
        }
        case 9:{/*Conv_Layer 9 Configuration*/
            ACCC -> GENERALCFG   = 0x01827FFF;
            ACCC -> SIDELENINFO  = 0x00098013;
            ACCC -> FMBASEADDR   = 0x40F70000;
            ACCC -> WBASEADDR    = 0x40128A00;
            ACCC -> WBBASEADDR   = 0x40FBC900;
            ACCC -> PWBBASEADDR  = 0x00000000;
            ACCC -> BIASBASEADDR = 0x000001F8;
            break;
        }
        case 10:{/*Conv_Layer 10 Configuration*/
            ACCC -> GENERALCFG   = 0x011267BF;
            ACCC -> SIDELENINFO  = 0x00088013;
            ACCC -> FMBASEADDR   = 0x40FBC900;
            ACCC -> WBASEADDR    = 0x40170A00;
            ACCC -> WBBASEADDR   = 0x4138CAE0;
            ACCC -> PWBBASEADDR  = 0x00000000;
            ACCC -> BIASBASEADDR = 0x00000238;
            break;
        }
        case 11:{/*Conv_Layer 11 Configuration*/
            ACCC -> GENERALCFG   = 0x01827FFF;
            ACCC -> SIDELENINFO  = 0x00098013;
            ACCC -> FMBASEADDR   = 0x40F70000;
            ACCC -> WBASEADDR    = 0x40179A00;
            ACCC -> WBBASEADDR   = 0x40FBC900;
            ACCC -> PWBBASEADDR  = 0x00000000;
            ACCC -> BIASBASEADDR = 0x00000240;
            break;
        }
        case 12:{/*Conv_Layer 12 Configuration*/
            ACCC -> GENERALCFG   = 0x011263BF;
            ACCC -> SIDELENINFO  = 0x00088013;
            ACCC -> FMBASEADDR   = 0x40FBC900;
            ACCC -> WBASEADDR    = 0x401C1A00;
            ACCC -> WBBASEADDR   = 0x41378820;
            ACCC -> PWBBASEADDR  = 0x00000000;
            ACCC -> BIASBASEADDR = 0x00000288;
            break;
        }
        case 13:{/*Conv_Layer 13 Configuration*/
            ACCC -> GENERALCFG   = 0x31897FFF;
            ACCC -> SIDELENINFO  = 0x0003960B;
            ACCC -> FMBASEADDR   = 0x40994B40;
            ACCC -> WBASEADDR    = 0x401C6200;
            ACCC -> WBBASEADDR   = 0x4087C240;
            ACCC -> PWBBASEADDR  = 0x40F70000;
            ACCC -> BIASBASEADDR = 0x2D000290;
            break;
        }
        case 14:{/*Conv_Layer 14 Configuration*/
            ACCC -> GENERALCFG   = 0x01817FFF;
            ACCC -> SIDELENINFO  = 0x0005800B;
            ACCC -> FMBASEADDR   = 0x40F70000;
            ACCC -> WBASEADDR    = 0x40256200;
            ACCC -> WBBASEADDR   = 0x40FBC900;
            ACCC -> PWBBASEADDR  = 0x00000000;
            ACCC -> BIASBASEADDR = 0x00000310;
            break;
        }
        case 15:{/*Conv_Layer 15 Configuration*/
            ACCC -> GENERALCFG   = 0x011167BF;
            ACCC -> SIDELENINFO  = 0x0004800B;
            ACCC -> FMBASEADDR   = 0x40FBC900;
            ACCC -> WBASEADDR    = 0x4029E200;
            ACCC -> WBBASEADDR   = 0x41391320;
            ACCC -> PWBBASEADDR  = 0x00000000;
            ACCC -> BIASBASEADDR = 0x00000350;
            break;
        }
        case 16:{/*Conv_Layer 16 Configuration*/
            ACCC -> GENERALCFG   = 0x01817FFF;
            ACCC -> SIDELENINFO  = 0x0005800B;
            ACCC -> FMBASEADDR   = 0x40F70000;
            ACCC -> WBASEADDR    = 0x402A7200;
            ACCC -> WBBASEADDR   = 0x40FBC900;
            ACCC -> PWBBASEADDR  = 0x00000000;
            ACCC -> BIASBASEADDR = 0x00000360;
            break;
        }
        case 17:{/*Conv_Layer 17 Configuration*/
            ACCC -> GENERALCFG   = 0x011163BF;
            ACCC -> SIDELENINFO  = 0x0004800B;
            ACCC -> FMBASEADDR   = 0x40FBC900;
            ACCC -> WBASEADDR    = 0x402EF200;
            ACCC -> WBBASEADDR   = 0x4137AC40;
            ACCC -> PWBBASEADDR  = 0x00000000;
            ACCC -> BIASBASEADDR = 0x000003A0;
            break;
        }
        case 18:{/*Conv_Layer 18 Configuration*/
            ACCC -> GENERALCFG   = 0x0108FFFF;
            ACCC -> SIDELENINFO  = 0x00028E07;
            ACCC -> FMBASEADDR   = 0x4087C240;
            ACCC -> WBASEADDR    = 0x402F3A00;
            ACCC -> WBBASEADDR   = 0x40994B40;
            ACCC -> PWBBASEADDR  = 0x40F70000;
            ACCC -> BIASBASEADDR = 0x000003A8;
            break;
        }
        case 19:{/*Conv_Layer 19 Configuration*/
            ACCC -> GENERALCFG   = 0x0180FFBF;
            ACCC -> SIDELENINFO  = 0x00038007;
            ACCC -> FMBASEADDR   = 0x40F70000;
            ACCC -> WBASEADDR    = 0x4033BA00;
            ACCC -> WBBASEADDR   = 0x40FBC900;
            ACCC -> PWBBASEADDR  = 0x00000000;
            ACCC -> BIASBASEADDR = 0x000003E8;
            break;
        }
        case 20:{/*Conv_Layer 20 Configuration*/
            ACCC -> GENERALCFG   = 0x0110E7BF;
            ACCC -> SIDELENINFO  = 0x00028007;
            ACCC -> FMBASEADDR   = 0x40FBC900;
            ACCC -> WBASEADDR    = 0x4035FA00;
            ACCC -> WBBASEADDR   = 0x41392760;
            ACCC -> PWBBASEADDR  = 0x00000000;
            ACCC -> BIASBASEADDR = 0x00000428;
            break;
        }
        case 21:{/*Conv_Layer 21 Configuration*/
            ACCC -> GENERALCFG   = 0x0180FFBF;
            ACCC -> SIDELENINFO  = 0x00038007;
            ACCC -> FMBASEADDR   = 0x40F70000;
            ACCC -> WBASEADDR    = 0x40368A00;
            ACCC -> WBBASEADDR   = 0x40FBC900;
            ACCC -> PWBBASEADDR  = 0x00000000;
            ACCC -> BIASBASEADDR = 0x00000438;
            break;
        }
        case 22:{/*Conv_Layer 22 Configuration*/
            ACCC -> GENERALCFG   = 0x0110E3BF;
            ACCC -> SIDELENINFO  = 0x00028007;
            ACCC -> FMBASEADDR   = 0x40FBC900;
            ACCC -> WBASEADDR    = 0x4038CA00;
            ACCC -> WBBASEADDR   = 0x4137B660;
            ACCC -> PWBBASEADDR  = 0x00000000;
            ACCC -> BIASBASEADDR = 0x00000478;
            break;
        }
        case 23:{/*Conv_Layer 23 Configuration*/
            ACCC -> GENERALCFG   = 0x0180BFBF;
            ACCC -> SIDELENINFO  = 0x00028005;
            ACCC -> FMBASEADDR   = 0x40994B40;
            ACCC -> WBASEADDR    = 0x40391200;
            ACCC -> WBBASEADDR   = 0x40F70000;
            ACCC -> PWBBASEADDR  = 0x00000000;
            ACCC -> BIASBASEADDR = 0x00000480;
            break;
        }
        case 24:{/*Conv_Layer 24 Configuration*/
            ACCC -> GENERALCFG   = 0x0180BFBF;
            ACCC -> SIDELENINFO  = 0x00028005;
            ACCC -> FMBASEADDR   = 0x40F70000;
            ACCC -> WBASEADDR    = 0x403B5200;
            ACCC -> WBBASEADDR   = 0x40FBC900;
            ACCC -> PWBBASEADDR  = 0x00000000;
            ACCC -> BIASBASEADDR = 0x000004C0;
            break;
        }
        case 25:{/*Conv_Layer 25 Configuration*/
            ACCC -> GENERALCFG   = 0x0110A7BF;
            ACCC -> SIDELENINFO  = 0x00018005;
            ACCC -> FMBASEADDR   = 0x40FBC900;
            ACCC -> WBASEADDR    = 0x403D9200;
            ACCC -> WBBASEADDR   = 0x41392DA0;
            ACCC -> PWBBASEADDR  = 0x00000000;
            ACCC -> BIASBASEADDR = 0x00000500;
            break;
        }
        case 26:{/*Conv_Layer 26 Configuration*/
            ACCC -> GENERALCFG   = 0x0180BFBF;
            ACCC -> SIDELENINFO  = 0x00028005;
            ACCC -> FMBASEADDR   = 0x40F70000;
            ACCC -> WBASEADDR    = 0x403E2200;
            ACCC -> WBBASEADDR   = 0x40FBC900;
            ACCC -> PWBBASEADDR  = 0x00000000;
            ACCC -> BIASBASEADDR = 0x00000510;
            break;
        }
        case 27:{/*Conv_Layer 27 Configuration*/
            ACCC -> GENERALCFG   = 0x0110A3BF;
            ACCC -> SIDELENINFO  = 0x00018005;
            ACCC -> FMBASEADDR   = 0x40FBC900;
            ACCC -> WBASEADDR    = 0x40406200;
            ACCC -> WBBASEADDR   = 0x4137B980;
            ACCC -> PWBBASEADDR  = 0x00000000;
            ACCC -> BIASBASEADDR = 0x00000550;
            break;
        }
        case 28:{/*Nms_Layer Configuration*/
            ACCC -> GENERALCFG   = 0x40000000;
            ACCC -> SIDELENINFO  = 0x00000000;
            ACCC -> FMBASEADDR   = 0x00000000;
            ACCC -> WBASEADDR    = 0x00000000;
            ACCC -> WBBASEADDR   = 0x00000000;
            ACCC -> PWBBASEADDR  = 0x00000000;
            ACCC -> BIASBASEADDR = 0x00000000;
            break;
        }
        default:{
            ACCC -> GENERALCFG   = 0x2AA38F83;
            ACCC -> SIDELENINFO  = 0x00420106;
            ACCC -> FMBASEADDR   = 0x40770000;
            ACCC -> WBASEADDR    = 0x40030000;
            ACCC -> WBBASEADDR   = 0x40994B40;
            ACCC -> PWBBASEADDR  = 0x00000000;
            ACCC -> BIASBASEADDR = 0x00000000;
            break;
        }
            
    }
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
    //ACC_GetWeight();
    // Receive Image
    //ACC_GetImage();
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
    ACC_RegConfig(layer_cnt); 
}

void ACC_Start(void)
{
    ACC_ConvEnable();
}

void ACC_Init_Test(void)
{
    layer_cnt = 0;
    ACC_ClrCtrl();
    ACC_RegConfig(layer_cnt); 
}

void ACCConvDoneHandler(void) 
{
    layer_cnt += 1;
    if(layer_cnt < 28){/*Conv_Layer Configuration*/
        ACC_ClrCtrl(); 
        ACC_RegConfig(layer_cnt);    
        ACC_ConvEnable();
    }
    else {/*Nms_Layer Configuration*/
        ACC_ClrCtrl();
        ACC_RegConfig(layer_cnt);
        ACC_NmsEnable();
    }
}

uint8_t noface;
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
