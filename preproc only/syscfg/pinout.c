//*****************************************************************************
//
// Configure the device pins for different signals
//
// Copyright (C) 2014 Texas Instruments Incorporated - http://www.ti.com/ 
// 
// 
//  Redistribution and use in source and binary forms, with or without 
//  modification, are permitted provided that the following conditions 
//  are met:
//
//    Redistributions of source code must retain the above copyright 
//    notice, this list of conditions and the following disclaimer.
//
//    Redistributions in binary form must reproduce the above copyright
//    notice, this list of conditions and the following disclaimer in the 
//    documentation and/or other materials provided with the   
//    distribution.
//
//    Neither the name of Texas Instruments Incorporated nor the names of
//    its contributors may be used to endorse or promote products derived
//    from this software without specific prior written permission.
//
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 
//  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT 
//  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
//  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT 
//  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, 
//  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT 
//  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
//  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
//  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT 
//  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE 
//  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
//*****************************************************************************

// This file was automatically generated on 2020-12-22 at 16:27:40
// by TI PinMux version 1.3.1030
//
//*****************************************************************************

#include <stdbool.h>
#include <stdint.h>
#include "inc/hw_gpio.h"
#include "inc/hw_memmap.h"
#include "inc/hw_types.h"
#include "driverlib/gpio.h"
#include "driverlib/pin_map.h"
#include "driverlib/rom.h"
#include "driverlib/rom_map.h"
#include "driverlib/sysctl.h"
#include "pinout.h"

//*****************************************************************************
//
//! \addtogroup pinout_api
//! @{
//
//*****************************************************************************

//*****************************************************************************
//
//! Configures the device pins for the customer specific usage.
//!
//! \return None.
//
//*****************************************************************************
void
PinoutSet(void)
{
    //
    // Enable Peripheral Clocks 
    //
	MAP_SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOA);
	MAP_SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOB);
	MAP_SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOC);
	MAP_SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOD);
	MAP_SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOE);
	MAP_SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);

    //
    // Configure the GPIO Pin Mux for PE3
	// for AIN0_1
    //
	MAP_GPIOPinTypeADC(GPIO_PORTE_BASE, GPIO_PIN_3);

    //
    // Configure the GPIO Pin Mux for PD3
	// for AIN4_1
    //
	MAP_GPIOPinTypeADC(GPIO_PORTD_BASE, GPIO_PIN_3);

    //
    // Configure the GPIO Pin Mux for PE2
	// for AIN1_1
    //
	MAP_GPIOPinTypeADC(GPIO_PORTE_BASE, GPIO_PIN_2);

    //
    // Configure the GPIO Pin Mux for PE1
	// for AIN2_1
    //
	MAP_GPIOPinTypeADC(GPIO_PORTE_BASE, GPIO_PIN_1);

    //
    // Configure the GPIO Pin Mux for PB6
	// for GPIO_PB6
    //
	MAP_GPIOPinTypeGPIOOutputOD(GPIO_PORTB_BASE, GPIO_PIN_6);

    //
    // Configure the GPIO Pin Mux for PB7
	// for GPIO_PB7
    //
	MAP_GPIOPinTypeGPIOOutputOD(GPIO_PORTB_BASE, GPIO_PIN_7);

	//
	// Unlock the Port Pin and Set the Commit Bit
	//
	HWREG(GPIO_PORTD_BASE+GPIO_O_LOCK) = GPIO_LOCK_KEY;
	HWREG(GPIO_PORTD_BASE+GPIO_O_CR)   |= GPIO_PIN_7;
	HWREG(GPIO_PORTD_BASE+GPIO_O_LOCK) = 0x0;
	
    //
    // Configure the GPIO Pin Mux for PD7
	// for GPIO_PD7
    //
	MAP_GPIOPinTypeGPIOOutputOD(GPIO_PORTD_BASE, GPIO_PIN_7);

    //
    // Configure the GPIO Pin Mux for PC7
	// for GPIO_PC7
    //
	MAP_GPIOPinTypeGPIOOutputOD(GPIO_PORTC_BASE, GPIO_PIN_7);

    //
    // Configure the GPIO Pin Mux for PC6
	// for GPIO_PC6
    //
	MAP_GPIOPinTypeGPIOOutputOD(GPIO_PORTC_BASE, GPIO_PIN_6);

    //
    // Configure the GPIO Pin Mux for PF2
	// for GPIO_PF2
    //
	MAP_GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_2);

    //
    // Configure the GPIO Pin Mux for PF3
	// for GPIO_PF3
    //
	MAP_GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_3);

	//
	// Unlock the Port Pin and Set the Commit Bit
	//
	HWREG(GPIO_PORTF_BASE+GPIO_O_LOCK) = GPIO_LOCK_KEY;
	HWREG(GPIO_PORTF_BASE+GPIO_O_CR)   |= GPIO_PIN_0;
	HWREG(GPIO_PORTF_BASE+GPIO_O_LOCK) = 0x0;
	
    //
    // Configure the GPIO Pin Mux for PF0
	// for GPIO_PF0
    //
	MAP_GPIOPinTypeGPIOInput(GPIO_PORTF_BASE, GPIO_PIN_0);
	MAP_GPIOPadConfigSet(GPIO_PORTF_BASE, GPIO_PIN_0, GPIO_STRENGTH_2MA, GPIO_PIN_TYPE_STD_WPU);

    //
    // Configure the GPIO Pin Mux for PF4
	// for GPIO_PF4
    //
	MAP_GPIOPinTypeGPIOInput(GPIO_PORTF_BASE, GPIO_PIN_4);
	MAP_GPIOPadConfigSet(GPIO_PORTF_BASE, GPIO_PIN_4, GPIO_STRENGTH_2MA, GPIO_PIN_TYPE_STD_WPU);

    //
    // Configure the GPIO Pin Mux for PC5
	// for GPIO_PC5
    //
	MAP_GPIOPinTypeGPIOOutputOD(GPIO_PORTC_BASE, GPIO_PIN_5);

    //
    // Configure the GPIO Pin Mux for PC4
	// for GPIO_PC4
    //
	MAP_GPIOPinTypeGPIOInput(GPIO_PORTC_BASE, GPIO_PIN_4);
	MAP_GPIOPadConfigSet(GPIO_PORTC_BASE, GPIO_PIN_4, GPIO_STRENGTH_2MA, GPIO_PIN_TYPE_STD_WPU);

    //
    // Configure the GPIO Pin Mux for PA2
	// for GPIO_PA2
    //
	MAP_GPIOPinTypeGPIOOutputOD(GPIO_PORTA_BASE, GPIO_PIN_2);

    //
    // Configure the GPIO Pin Mux for PE4
	// for I2C2SCL
    //
	MAP_GPIOPinConfigure(GPIO_PE4_I2C2SCL);
	MAP_GPIOPinTypeI2CSCL(GPIO_PORTE_BASE, GPIO_PIN_4);

    //
    // Configure the GPIO Pin Mux for PE5
	// for I2C2SDA
    //
	MAP_GPIOPinConfigure(GPIO_PE5_I2C2SDA);
	MAP_GPIOPinTypeI2C(GPIO_PORTE_BASE, GPIO_PIN_5);

    //
    // Configure the GPIO Pin Mux for PA6
	// for I2C1SCL
    //
	MAP_GPIOPinConfigure(GPIO_PA6_I2C1SCL);
	MAP_GPIOPinTypeI2CSCL(GPIO_PORTA_BASE, GPIO_PIN_6);

    //
    // Configure the GPIO Pin Mux for PA7
	// for I2C1SDA
    //
	MAP_GPIOPinConfigure(GPIO_PA7_I2C1SDA);
	MAP_GPIOPinTypeI2C(GPIO_PORTA_BASE, GPIO_PIN_7);

    //
    // Configure the GPIO Pin Mux for PB2
	// for I2C0SCL
    //
	MAP_GPIOPinConfigure(GPIO_PB2_I2C0SCL);
	MAP_GPIOPinTypeI2CSCL(GPIO_PORTB_BASE, GPIO_PIN_2);

    //
    // Configure the GPIO Pin Mux for PB3
	// for I2C0SDA
    //
	MAP_GPIOPinConfigure(GPIO_PB3_I2C0SDA);
	MAP_GPIOPinTypeI2C(GPIO_PORTB_BASE, GPIO_PIN_3);

    //
    // Configure the GPIO Pin Mux for PF1
	// for SSI1TX
    //
	MAP_GPIOPinConfigure(GPIO_PF1_SSI1TX);
	MAP_GPIOPinTypeSSI(GPIO_PORTF_BASE, GPIO_PIN_1);

    //
    // Configure the GPIO Pin Mux for PD0
	// for SSI1CLK
    //
	MAP_GPIOPinConfigure(GPIO_PD0_SSI1CLK);
	MAP_GPIOPinTypeSSI(GPIO_PORTD_BASE, GPIO_PIN_0);

    //
    // Configure the GPIO Pin Mux for PA0
	// for U0RX
    //
	MAP_GPIOPinConfigure(GPIO_PA0_U0RX);
	MAP_GPIOPinTypeUART(GPIO_PORTA_BASE, GPIO_PIN_0);

    //
    // Configure the GPIO Pin Mux for PA1
	// for U0TX
    //
	MAP_GPIOPinConfigure(GPIO_PA1_U0TX);
	MAP_GPIOPinTypeUART(GPIO_PORTA_BASE, GPIO_PIN_1);

}

//*****************************************************************************
//
// Close the Doxygen group.
//! @}
//
//*****************************************************************************

