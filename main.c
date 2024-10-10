/*
 * File:   main.c
 * Author: I14883
 *
 * Created on March 2, 2023, 12:21 PM
 */


#include "xc.h"
#include "stdio.h"
#include "stdbool.h"
#include "hal/uart1.h"
#include "hal/clock.h"
#include "X2Cscope/X2Cscope.h"
#include "app.h"

#define X2C_BAUDRATE_DIVIDER 54 /** 100M/(16*54) = 115.7 kbps */

void initPeripherals();

int main(void) 
{

    initPeripherals();
    myAppInit();
    X2Cscope_Init();
    
   
    while(1)
    {
        myAppTask(); //Low priority task in the idle loop
        X2Cscope_Communicate(); //Handle the communication woith X2Cscope GUI
    }
}





void initPeripherals(void){
    InitClock();
    UART1_InterruptReceiveDisable();
    UART1_InterruptReceiveFlagClear();
    UART1_InterruptTransmitDisable();
    UART1_InterruptTransmitFlagClear();
    UART1_Initialize();
    UART1_BaudRateDividerSet(X2C_BAUDRATE_DIVIDER); 
    UART1_SpeedModeStandard();
    UART1_ModuleEnable();      
}
