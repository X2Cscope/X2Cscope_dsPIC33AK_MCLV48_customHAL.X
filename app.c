/* ************************************************************************** */
/** 
  @Summary
 Implements simple blinking example for X2Cscope usage.

 */
/* ************************************************************************** */
#include <xc.h>
#include <stdint.h>
#include <stdbool.h>
#include <math.h>
#include "hal/timer1.h"
#include "hal/adc.h"
#include "hal/port_config.h"
#include "X2CScope/X2Cscope.h"
#include "../X2Cscope_dsPIC33AK_MCLV48_customHAL.X/hal/adc.h"
#define PI (3.14)
/**
 Section: Global Variables
 */

volatile bool btnState;
volatile bool led1Control = false;
volatile bool led2State;

uint16_t sawTooth;
uint8_t speed = 1; // slope speed of the sawtooth
int16_t gain = 100; // amplitude of the generated sawtooth

volatile int32_t pot = 0;


typedef struct _MY_STRUCT_T
{ 
    float sinus;
    double rad;
}MY_STRUCT_t;

MY_STRUCT_t myStruct;

void myAppInit(void){
    
    SetupGPIOPorts();
    
    TIMER1_Initialize();
    TIMER1_InputClockSet();
    TIMER1_PeriodSet(TIMER1_PERIOD_COUNT); //100usec
    TIMER1_InterruptPrioritySet(5);
    TIMER1_InterruptFlagClear();
    TIMER1_InterruptEnable(); 
    TIMER1_ModuleStart();
    
    Init_ADC();
}

/**
 * @Summary
 * App task running in low priority idle loop (should be sync/non blocking)
 */
void myAppTask(void){
        //Handle LED1
        if(led1Control)
        {
            LED1 = 1;
        }
        else
        {
            LED1 = 0;
        }
        //Read SW1 state
        btnState = SW1;
        //Read back LED2 state
        led2State = LED2;
}

/**
 * Generate sawtooth and sine wave. Then do sample point for X2Cscope.
 * 0.1ms timer interrupt
 */
void __attribute__((__interrupt__, no_auto_psv))_T1Interrupt(void){
    sawTooth += speed;          // Generate sawtooth
    if(sawTooth >= ((uint16_t)3600 * (uint16_t)2) )     // up-to multiple of 360
    {   
        sawTooth = 0;
        LED2 = !LED2;       //Toggle LED to Signal of sawtooth overflow (hearthbeat)
    }
    // Generate sinus from the sawtooth signal
    myStruct.rad = ((double) sawTooth) * PI / 360.0;
    myStruct.sinus = gain * sin(myStruct.rad);
    
    HAL_AD1CH1SWTrigger();//Trigger POT conversion
    
    X2Cscope_Update(); // SAmple point of X2Cscope
    
    // Clear interrupt flag in the end
    _T1IF = 0;
}

void __attribute__((__interrupt__, no_auto_psv))_AD1CH1Interrupt(void)
{       

    pot = ADCBUF_POT;
    HAL_MC1ADCInterruptFlagClear();
}


/* *****************************************************************************
 End of File
 */
