#include "CortexM3.h"

#define img 

#ifdef img
void test_img(void){
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
}

#endif

#ifndef img
void test_L8(void){
    int weight;
    int featuremap;
    int receive;
    int i,j;

    for ( j = 0; j < 73728; j++)
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
        DDR ->  WEIGHT0_27[180864+j] = weight;  
    }     
    
    for ( j = 0; j < 23104; j++)
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
        DDR ->  FeatureMap[j] = featuremap;   
    }
}

void test_L13(void){
    int weight;
    int featuremap;
    int receive;
    int i,j;

    for ( j = 0; j < 147456; j++)
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
        DDR ->  WEIGHT0_27[415872+j] = weight;  
    }     
    
    for ( j = 0; j < 15488; j++)
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
        DDR ->  FeatureMap[j] = featuremap;   
    }
}

void test_L14(void){
    int weight;
    int featuremap;
    int receive;
    int i,j;

    for ( j = 0; j < 73728; j++)
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
        DDR ->  WEIGHT0_27[563328+j] = weight;  
    }     
    
    for ( j = 0; j < 15488; j++)
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
        DDR ->  FeatureMap[j] = featuremap;   
    }
}

void test_L15(void){
    int weight;
    int featuremap;
    int receive;
    int i,j;

    for ( j = 0; j < 9216; j++)
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
        DDR ->  WEIGHT0_27[637056+j] = weight;  
    }     
    
    for ( j = 0; j < 7744; j++)
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
        DDR ->  FeatureMap[j] = featuremap;   
    }
}

void test_L16(void){
    int weight;
    int featuremap;
    int receive;
    int i,j;

    for ( j = 0; j < 73728; j++)
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
        DDR ->  WEIGHT0_27[646272+j] = weight;  
    }     
    
    for ( j = 0; j < 15488; j++)
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
        DDR ->  FeatureMap[j] = featuremap;   
    }
}

void test_L17(void){
    int weight;
    int featuremap;
    int receive;
    int i,j;

    for ( j = 0; j < 4608; j++)
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
        DDR ->  WEIGHT0_27[720000+j] = weight;  
    }     
    
    for ( j = 0; j < 7744; j++)
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
        DDR ->  FeatureMap[j] = featuremap;   
    }
}

void test_L18(void){
    int weight;
    int featuremap;
    int receive;
    int i,j;

    for ( j = 0; j < 73728; j++)
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
        DDR ->  WEIGHT0_27[724608+j] = weight;  
    }     
    
    for ( j = 0; j < 6272; j++)
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
        DDR ->  FeatureMap[j] = featuremap;   
    }
}

void test_L27(void){
    int weight;
    int featuremap;
    int receive;
    int i,j;

    for ( j = 0; j < 4608; j++)
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
        DDR ->  WEIGHT0_27[1005696+j] = weight;  
    }     
    
    for ( j = 0; j < 1600; j++)
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
        DDR ->  FeatureMap[j] = featuremap;   
    }
}
#endif

#ifdef nms
void test_nms(void){
    int cls;
    int loc;
    int receive;
    int i,j;

    for ( j = 0; j < 11944; j++)
    {    
        for ( i = 0; i < 4; i++)
        {
            receive = uart_ReceiveChar(UART);
            switch (i)
            {
            case 0:
                cls = ((cls & (0x00000000) ) | (receive));
                break;
            case 1:
                cls = ((cls & (0x000000FF) ) | (receive << 8));
                break;
            case 2:
                cls = ((cls & (0x0000FFFF) ) | (receive << 16));
                break;
            case 3:
                cls = ((cls & (0x00FFFFFF) ) | (receive << 24));
                break;
            default:
                break;
            }
        }  
        DDR ->  Cls[j] = cls;  
    }     
    
    for ( j = 0; j < 23888; j++)
    {    
        for ( i = 0; i < 4; i++)
        {
            receive = uart_ReceiveChar(UART);
            switch (i)
            {
            case 0:
                loc = ((loc & (0x00000000) ) | (receive));
                break;
            case 1:
                loc = ((loc & (0x000000FF) ) | (receive << 8));
                break;
            case 2:
                loc = ((loc & (0x0000FFFF) ) | (receive << 16));
                break;
            case 3:
                loc = ((loc & (0x00FFFFFF) ) | (receive << 24));
                break;
            default:
                break;
            }
        }  
        DDR ->  Loc[j] = loc;   
    }
}
#endif
