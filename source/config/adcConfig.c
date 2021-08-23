/*
 * adcConfig.c
 *
 *  Created on: Aug 29, 2020
 *      Author: Dan
 */
#include <stdbool.h>
#include <stdint.h>
#include "inc/hw_memmap.h"
#include <driverlib/rom.h>
#include <driverlib/rom_map.h>
#include <driverlib/gpio.h>
#include <driverlib/adc.h>
#include <driverlib/sysctl.h>
#include <driverlib/pin_map.h>
#include <inc/hw_ints.h>
#include <xdc/std.h>

#include "adcConfig.h"
#include "../hsd.h"

//TODO: remember temp sensor, digital comparator, averaging

void initADC(void) {
    SysCtlPeripheralEnable(SYSCTL_PERIPH_ADC0);
    while (!SysCtlPeripheralReady(SYSCTL_PERIPH_ADC0)) {
    }

    ADCClockConfigSet(ADC0_BASE, ADC_CLOCK_SRC_PLL | ADC_CLOCK_RATE_EIGHTH, 1);

    MAP_GPIOPinTypeADC(GPIO_PORTE_BASE, GPIO_PIN_3); //ISENSE 0
    MAP_GPIOPinTypeADC(GPIO_PORTE_BASE, GPIO_PIN_2); //ISENSE 1
    MAP_GPIOPinTypeADC(GPIO_PORTE_BASE, GPIO_PIN_1); //ISENSE 2
    MAP_GPIOPinTypeADC(GPIO_PORTD_BASE, GPIO_PIN_3); //ISENSE 3

    MAP_ADCHardwareOversampleConfigure(ADC0_BASE, 64);

    MAP_ADCSequenceConfigure(ADC0_BASE, 0, ADC_TRIGGER_PROCESSOR, 0);
    MAP_ADCSequenceStepConfigure(ADC0_BASE, 0, 0, ADC_CTL_CH0); //ISENSE 0
    MAP_ADCSequenceStepConfigure(ADC0_BASE, 0, 1, ADC_CTL_CH1); //ISENSE 1
    MAP_ADCSequenceStepConfigure(ADC0_BASE, 0, 2, ADC_CTL_CH2); //ISENSE 2
    MAP_ADCSequenceStepConfigure(ADC0_BASE, 0, 3, ADC_CTL_CH4); //ISENSE 3
    MAP_ADCSequenceStepConfigure(ADC0_BASE, 0, 4, ADC_CTL_TS | ADC_CTL_END | ADC_CTL_IE); //temp

    initAdcHwi();

    MAP_ADCSequenceEnable(ADC0_BASE, 0);
    MAP_ADCProcessorTrigger(ADC0_BASE, 0);
}

