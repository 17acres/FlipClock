/*
 * Copyright (c) 2015, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <stdint.h>
#include <stdbool.h>

#include <xdc/std.h>
#include <xdc/runtime/Error.h>
#include <xdc/runtime/System.h>
#include <ti/sysbios/family/arm/m3/Hwi.h>

#include <inc/hw_ints.h>
#include <inc/hw_memmap.h>
#include <inc/hw_types.h>
#include <inc/hw_gpio.h>

#include <driverlib/rom.h>
#include <driverlib/rom_map.h>
#include <driverlib/gpio.h>
#include <driverlib/i2c.h>
#include <driverlib/pin_map.h>
#include <driverlib/pwm.h>
#include <driverlib/ssi.h>
#include <driverlib/sysctl.h>
#include <driverlib/uart.h>
#include <driverlib/udma.h>

#include "gpioConfig.h"

/*
 *  =============================== GPIO ===============================
 */
/* Place into subsections to allow the TI linker to remove items properly */
#if defined(__TI_COMPILER_VERSION__)
#pragma DATA_SECTION(GPIOTiva_config, ".const:GPIOTiva_config")
#endif

#include <ti/drivers/GPIO.h>
#include <ti/drivers/gpio/GPIOTiva.h>

/*
 * Array of Pin configurations
 * NOTE: The order of the pin configurations must coincide with what was
 *       defined in EK_TM4C123GXL.h
 * NOTE: Pins not used for interrupts should be placed at the end of the
 *       array.  Callback entries can be omitted from callbacks array to
 *       reduce memory usage.
 */

GPIO_PinConfig gpioPinConfigs[] = {
/* RTC_SQW */
GPIOTiva_PC_4 | GPIO_CFG_IN_PU | GPIO_CFG_IN_INT_RISING,

/* LAUNCHPAD_SW1 */
GPIOTiva_PF_4 | GPIO_CFG_IN_PU | GPIO_CFG_IN_INT_RISING,

/* LAUNCHPAD_SW2 */
GPIOTiva_PF_0 | GPIO_CFG_IN_PU | GPIO_CFG_IN_INT_RISING,

/* HSD_DISABLE_0 */
GPIOTiva_PD_7 | GPIO_CFG_OUT_OD_PU | GPIO_CFG_OUT_STR_LOW | GPIO_CFG_OUT_HIGH,

/* HSD_DISABLE_1 */
GPIOTiva_PB_6 | GPIO_CFG_OUT_OD_PU | GPIO_CFG_OUT_STR_LOW | GPIO_CFG_OUT_HIGH,

/* HSD_DISABLE_2 */
GPIOTiva_PC_7 | GPIO_CFG_OUT_OD_PU | GPIO_CFG_OUT_STR_LOW | GPIO_CFG_OUT_HIGH,

/* HSD_DISABLE_3 */
GPIOTiva_PB_7 | GPIO_CFG_OUT_OD_PU | GPIO_CFG_OUT_STR_LOW | GPIO_CFG_OUT_HIGH,

/* IO_RESET */
GPIOTiva_PC_6 | GPIO_CFG_OUT_OD_PU | GPIO_CFG_OUT_STR_LOW | GPIO_CFG_OUT_HIGH,

/* ESP_ENABLE */
GPIOTiva_PC_5 | GPIO_CFG_OUT_OD_PU | GPIO_CFG_OUT_STR_LOW | GPIO_CFG_OUT_LOW,

/* BUF_DISABLE */
GPIOTiva_PA_2 | GPIO_CFG_OUT_OD_PU | GPIO_CFG_OUT_STR_LOW | GPIO_CFG_OUT_HIGH,

/* LAUNCHPAD_LED_BLUE */
GPIOTiva_PF_2 | GPIO_CFG_OUT_STD | GPIO_CFG_OUT_STR_LOW | GPIO_CFG_OUT_LOW,

/* LAUNCHPAD_LED_GREEN */
GPIOTiva_PF_3 | GPIO_CFG_OUT_STD | GPIO_CFG_OUT_STR_LOW | GPIO_CFG_OUT_HIGH,

/* LAUNCHPAD_LED_RED */
GPIOTiva_PD_1 | GPIO_CFG_OUT_STD | GPIO_CFG_OUT_STR_LOW | GPIO_CFG_OUT_LOW};

/*
 * Array of callback function pointers
 * NOTE: The order of the pin configurations must coincide with what was
 *       defined in EK_TM4C123GXL.h
 * NOTE: Pins not used for interrupts can be omitted from callbacks array to
 *       reduce memory usage (if placed at end of gpioPinConfigs array).
 */

GPIO_CallbackFxn gpioCallbackFunctions[] = {
NULL, /* RTC_SQW */
NULL, /* LAUNCHPAD_SW1 */
NULL /* LAUNCHPAD_SW2 */
};


/* The device-specific GPIO_config structure */
const GPIOTiva_Config GPIOTiva_config = {
		.pinConfigs = (GPIO_PinConfig *) gpioPinConfigs,
		.callbacks = (GPIO_CallbackFxn *) gpioCallbackFunctions,
		.numberOfPinConfigs = sizeof(gpioPinConfigs) / sizeof(GPIO_PinConfig),
		.numberOfCallbacks = sizeof(gpioCallbackFunctions) / sizeof(GPIO_CallbackFxn),
		.intPriority = (~0) };

void initGPIO(void) {
	MAP_SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOA);
	MAP_SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOB);
	MAP_SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOC);
	MAP_SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOD);
	MAP_SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOE);
	MAP_SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);

	HWREG(GPIO_PORTD_BASE+GPIO_O_LOCK) = GPIO_LOCK_KEY;
	HWREG(GPIO_PORTD_BASE+GPIO_O_CR) |= GPIO_PIN_7;
	HWREG(GPIO_PORTD_BASE+GPIO_O_LOCK) = 0x0;
	HWREG(GPIO_PORTF_BASE+GPIO_O_LOCK) = GPIO_LOCK_KEY;
	HWREG(GPIO_PORTF_BASE+GPIO_O_CR) |= GPIO_PIN_0;
	HWREG(GPIO_PORTF_BASE+GPIO_O_LOCK) = 0x0;

	/* Initialize peripheral and pins */
	GPIO_init();
}
