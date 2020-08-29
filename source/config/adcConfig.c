/*
 * adcConfig.c
 *
 *  Created on: Aug 29, 2020
 *      Author: Dan
 */

#include <driverlib/rom.h>
#include <driverlib/rom_map.h>
#include <driverlib/gpio.h>
#include <driverlib/adc.h>
#include <driverlib/sysctl.h>
#include <driverlib/pin_map.h>
#include "adcConfig.h"


//remember temp sensor, digital comparator, averaging

void initADC(void) {
	SysCtlPeripheralEnable(SYSCTL_PERIPH_ADC0);
	MAP_GPIOPinTypeADC(GPIO_PORTE_BASE, GPIO_PIN_3); //ISENSE 0
	MAP_GPIOPinTypeADC(GPIO_PORTE_BASE, GPIO_PIN_2); //ISENSE 1
	MAP_GPIOPinTypeADC(GPIO_PORTE_BASE, GPIO_PIN_1); //ISENSE 2
	MAP_GPIOPinTypeADC(GPIO_PORTD_BASE, GPIO_PIN_3); //ISENSE 3

	MAP_ADCHardwareOversampleConfigure(ADC0_BASE, 64);
	ADCClockConfigSet(ADC0_BASE, ui32Config, ui32ClockDiv)
	MAP_ADCSequenceConfigure(ADC0_BASE, 2, ADC_TRIGGER_ALWAYS);
	MAP_ADCSequenceStepConfigure(ADC0_BASE, 2, 0, ADC_CTL_CH0); //ISENSE 0
	MAP_ADCSequenceStepConfigure(ADC0_BASE, 2, 1, ADC_CTL_CH1); //ISENSE 1
	MAP_ADCSequenceStepConfigure(ADC0_BASE, 2, 2, ADC_CTL_CH2); //ISENSE 2
	MAP_ADCSequenceStepConfigure(ADC0_BASE, 2, 3, ADC_CTL_CH4 | ADC_CTL_END); //ISENSE 3

	MAP_ADCSequenceEnable(ADC0_BASE, 2);
}
