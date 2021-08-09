/*
 * spiConfig.c
 *
 *  Created on: Aug 17, 2020
 *      Author: Dan
 */

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
#include <source/config/serialConfig.h>
#include <ti/drivers/spi/SPITivaDMA.h>
#include <ti/drivers/i2c/I2CTiva.h>
#include "../defs.h"
#include "../ioDriver.h"

SPI_Handle ledSPIHandle;

//void spiCallback(SPI_Handle handle, SPI_Transaction *transaction) {
//
//	System_printf("SPI Callback: Frame index %d, status %d", (uint32_t) transaction->arg, transaction->status);
//}

/*
 *  =============================== DMA ===============================
 */

#pragma DATA_ALIGN(dmaControlTable, 1024)

static tDMAControlTable dmaControlTable[32];
static bool dmaInitialized = false;

/* Hwi_Struct used in the initDMA Hwi_construct call */
static Hwi_Struct dmaHwiStruct;

/*
 *  ======== dmaErrorHwi ========
 */
static Void dmaErrorHwi(UArg arg) {
	System_printf("DMA error code: %d\n", uDMAErrorStatusGet());
	uDMAErrorStatusClear();
	System_abort("DMA error!!");
}

void initDMA(void) {
	Error_Block eb;
	Hwi_Params hwiParams;

	if (!dmaInitialized) {
		Error_init(&eb);
		Hwi_Params_init(&hwiParams);
		Hwi_construct(&(dmaHwiStruct), INT_UDMAERR, dmaErrorHwi, &hwiParams, &eb);
		if (Error_check(&eb)) {
			System_abort("Couldn't construct DMA error hwi");
		}

		SysCtlPeripheralEnable(SYSCTL_PERIPH_UDMA);
		uDMAEnable();
		uDMAControlBaseSet(dmaControlTable);

		dmaInitialized = true;
	}
}



SPITivaDMA_Object spiTivaDMAObject;

#pragma DATA_ALIGN(spiTivaDMAscratchBuf, 32)

uint32_t spiTivaDMAscratchBuf;

const SPITivaDMA_HWAttrs spiTivaDMAHWAttr = {
		.baseAddr = SSI1_BASE,
		.intNum = INT_SSI1,
		.intPriority = (~0),
		.scratchBufPtr = &spiTivaDMAscratchBuf,
		.defaultTxBufValue = 0,
		.rxChannelIndex = UDMA_CHANNEL_SSI1RX,
		.txChannelIndex = UDMA_CHANNEL_SSI1TX,
		.channelMappingFxn = uDMAChannelAssign,
		.rxChannelMappingFxnArg = UDMA_CH10_SSI1RX,
		.txChannelMappingFxnArg = UDMA_CH11_SSI1TX };

const SPI_Config SPI_config[] = { { .fxnTablePtr = &SPITivaDMA_fxnTable, .object = &spiTivaDMAObject, .hwAttrs = &spiTivaDMAHWAttr }, { NULL, NULL, NULL } };

void initSPI(void) {
	initDMA();

	SysCtlPeripheralEnable(SYSCTL_PERIPH_SSI1);

	MAP_GPIOPinConfigure(GPIO_PF1_SSI1TX);
	MAP_GPIOPinTypeSSI(GPIO_PORTF_BASE, GPIO_PIN_1);

	MAP_GPIOPinConfigure(GPIO_PD0_SSI1CLK);
	MAP_GPIOPinTypeSSI(GPIO_PORTD_BASE, GPIO_PIN_0);

	GPIOPadConfigSet(GPIO_PORTF_BASE, GPIO_PIN_1, GPIO_STRENGTH_2MA, GPIO_PIN_TYPE_STD_WPU);
	GPIOPadConfigSet(GPIO_PORTD_BASE, GPIO_PIN_0, GPIO_STRENGTH_2MA, GPIO_PIN_TYPE_STD_WPU);

	SPI_Params params;
	SPI_Params_init(&params);
	params.bitRate = LED_BITRATE;
	params.dataSize = 8; //bits
	params.frameFormat = SPI_POL1_PHA0;
	params.mode = SPI_MASTER;
	params.transferMode = SPI_MODE_BLOCKING;

	ledSPIHandle = SPI_open(0, &params);
	if (!ledSPIHandle)
		System_printf("Failed to open SPI");
}

void initI2C(void) {
	SysCtlPeripheralEnable(SYSCTL_PERIPH_I2C2);

	MAP_GPIOPinConfigure(GPIO_PE5_I2C2SDA);
	MAP_GPIOPinTypeI2C(GPIO_PORTE_BASE, GPIO_PIN_5);

	MAP_GPIOPinConfigure(GPIO_PE4_I2C2SCL);
	MAP_GPIOPinTypeI2CSCL(GPIO_PORTE_BASE, GPIO_PIN_4);

	GPIOPadConfigSet(GPIO_PORTE_BASE, GPIO_PIN_5, GPIO_STRENGTH_8MA, GPIO_PIN_TYPE_OD);
	GPIOPadConfigSet(GPIO_PORTE_BASE, GPIO_PIN_4, GPIO_STRENGTH_8MA, GPIO_PIN_TYPE_OD);

	MAP_I2CMasterInitExpClk(I2C2_BASE, SysCtlClockGet(), true);
	MAP_I2CMasterTimeoutSet(I2C2_BASE, (10*400)/16);//10ms timeout
	initIOSemaphore();
	initIOHwi();
}
