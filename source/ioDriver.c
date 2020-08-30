/*
 * ioDriver.c
 *
 *  Created on: Aug 21, 2020
 *      Author: Dan
 */

#include "config/serialConfig.h"

#include <driverlib/rom.h>
#include <driverlib/rom_map.h>
#include <driverlib/i2c.h>
#include <xdc/runtime/System.h>
#include <ti/sysbios/BIOS.h>
#include <ti/drivers/GPIO.h>
#include <ti/sysbios/hal/Hwi.h>
#include <ti/sysbios/knl/Task.h>
#include <inc/hw_memmap.h>
#include <ti/sysbios/knl/Semaphore.h>
#include <inc/hw_ints.h>
#include "ioDriver.h"
#include "config/gpioConfig.h"
#include "dtc.h"
#include "defs.h"

Semaphore_Handle ioTxCompleteSemaphore;
Semaphore_Handle ioBusySemaphore;
Hwi_Handle hwiHandle;
volatile uint8_t secondByte;
void ioIsr(UArg arg);
void handleIOFailure(Dtc code, uint32_t detail, String message);
Dtc lookupDtc(uint8_t slaveAddress);
volatile bool transactionStarted = false;

bool checkIOPresence(uint8_t slaveAddress) {
	Dtc possibleCode = lookupDtc(slaveAddress);
	if (getDtcStatus(possibleCode) == DTC_SET)
		return false;

	Semaphore_pend(ioSemaphore, BIOS_WAIT_FOREVER);
	Semaphore_reset(ioBusySemaphore, 0);

	MAP_I2CMasterSlaveAddrSet(I2C2_BASE, 0x7C, false);
	MAP_I2CMasterDataPut(I2C2_BASE, slaveAddress << 1);
	MAP_I2CMasterControl(I2C2_BASE, I2C_MASTER_CMD_BURST_SEND_START);

	bool semResult = Semaphore_pend(ioBusySemaphore, 100);
	Semaphore_reset(ioBusySemaphore, 0);
	if (!semResult || MAP_I2CMasterErr(I2C2_BASE)) {
		handleIOFailure(possibleCode, MAP_I2CMasterErr(I2C2_BASE), "presence check send start");
		Semaphore_post(ioSemaphore);
		return (false);
	}

	MAP_I2CMasterSlaveAddrSet(I2C2_BASE, 0x7C, true);
	MAP_I2CMasterControl(I2C2_BASE, I2C_MASTER_CMD_BURST_RECEIVE_START);

	semResult = Semaphore_pend(ioBusySemaphore, 100);
	Semaphore_reset(ioBusySemaphore, 0);
	if (!semResult || MAP_I2CMasterErr(I2C2_BASE)) {
		handleIOFailure(possibleCode, MAP_I2CMasterErr(I2C2_BASE), "presence check receive start");
		MAP_I2CMasterControl(I2C2_BASE, I2C_MASTER_CMD_BURST_SEND_ERROR_STOP);
		Semaphore_post(ioSemaphore);
		return (false);
	} else {
		uint8_t ret = MAP_I2CMasterDataGet(I2C2_BASE);
		if (ret != 0x00) {
			handleIOFailure(possibleCode, ret, "presence check invalid first response byte");
			Semaphore_post(ioSemaphore);
			return (false);
		}
	}

	MAP_I2CMasterControl(I2C2_BASE, I2C_MASTER_CMD_BURST_RECEIVE_CONT);

	semResult = Semaphore_pend(ioBusySemaphore, 100);
	Semaphore_reset(ioBusySemaphore, 0);
	if (!semResult || MAP_I2CMasterErr(I2C2_BASE)) {
		handleIOFailure(possibleCode, MAP_I2CMasterErr(I2C2_BASE), "presence check receive byte 2");
		Semaphore_post(ioSemaphore);
		return (false);
	} else {
		uint8_t ret = MAP_I2CMasterDataGet(I2C2_BASE);
		if (ret != 0x02) {
			handleIOFailure(possibleCode, ret, "presence check invalid second response byte");
			Semaphore_post(ioSemaphore);
			return (false);
		}
	}

	MAP_I2CMasterControl(I2C2_BASE, I2C_MASTER_CMD_BURST_RECEIVE_FINISH); //Receive with negative ACK

	semResult = Semaphore_pend(ioBusySemaphore, 100);
	Semaphore_reset(ioBusySemaphore, 0);
	if (!semResult || MAP_I2CMasterErr(I2C2_BASE)) {
		handleIOFailure(possibleCode, MAP_I2CMasterErr(I2C2_BASE), "presence check receive byte 3");
		Semaphore_post(ioSemaphore);
		return (false);
	} else {
		uint8_t ret = MAP_I2CMasterDataGet(I2C2_BASE);
		if (ret != 0x20) {
			handleIOFailure(possibleCode, ret, "presence check invalid third response byte");
			Semaphore_post(ioSemaphore);
			return (false);
		}
	}

	Semaphore_post(ioSemaphore);
	return (true);
}

void initIOSemaphore() {
	Semaphore_Params params;
	Semaphore_Params_init(&params);
	params.mode = Semaphore_Mode_BINARY_PRIORITY;
	ioSemaphore = Semaphore_create(1, &params, NULL);
	ioTxCompleteSemaphore = Semaphore_create(0, &params, NULL);
	ioBusySemaphore = Semaphore_create(0, &params, NULL);
}

void initIOHwi() {
	MAP_I2CMasterIntEnable(I2C2_BASE);
	hwiHandle = Hwi_create(INT_I2C2, ioIsr, NULL, NULL);
}

bool writeData(uint8_t slaveAddress, uint16_t data) {
	Dtc possibleCode = lookupDtc(slaveAddress);
	if (getDtcStatus(possibleCode) == DTC_SET)
		return false;

	Semaphore_pend(ioSemaphore, BIOS_WAIT_FOREVER);
	secondByte = data & 0xFF;
	transactionStarted = true;
	MAP_I2CMasterSlaveAddrSet(I2C2_BASE, slaveAddress, false);
	MAP_I2CMasterDataPut(I2C2_BASE, data >> 8);
	MAP_I2CMasterControl(I2C2_BASE, I2C_MASTER_CMD_BURST_SEND_START);

	bool semResult = Semaphore_pend(ioTxCompleteSemaphore, 100);
	Semaphore_reset(ioTxCompleteSemaphore, 0);
	if (!semResult|| MAP_I2CMasterErr(I2C2_BASE)) {
		handleIOFailure(possibleCode, 0, "writing byte 1");
		Semaphore_post(ioSemaphore);
		return (false);
	}

	semResult = Semaphore_pend(ioBusySemaphore, 100);
	Semaphore_reset(ioBusySemaphore, 0);
	if (!semResult || MAP_I2CMasterErr(I2C2_BASE)) {
		handleIOFailure(possibleCode, 0, "writing byte 2");
		Semaphore_post(ioSemaphore);
		return (false);
	}
	transactionStarted = false;
	Semaphore_post(ioSemaphore);
	return true;
}

void ioIsr(UArg arg) {
	MAP_I2CMasterIntClear(I2C2_BASE);
	GPIO_toggle(LAUNCHPAD_LED_BLUE);
	if (transactionStarted) {
		if (MAP_I2CMasterErr(I2C2_BASE) == I2C_MASTER_ERR_NONE) {
			MAP_I2CMasterDataPut(I2C2_BASE, secondByte);
			MAP_I2CMasterControl(I2C2_BASE, I2C_MASTER_CMD_BURST_SEND_FINISH);
		}
		Semaphore_post(ioTxCompleteSemaphore);
		Semaphore_reset(ioBusySemaphore, 0);
	}
	Semaphore_post(ioBusySemaphore);
}

void handleIOFailure(Dtc code, uint32_t detail, String message) {
	MAP_I2CMasterControl(I2C2_BASE, I2C_MASTER_CMD_BURST_SEND_ERROR_STOP);
	setDtc(code, detail, message);
	GPIO_write(IO_RESET, TRUE);
	Task_sleep(1);
	GPIO_write(IO_RESET, FALSE);
}

Dtc lookupDtc(uint8_t slaveAddress) {
	switch (slaveAddress) {
		case (IO_0_ADDR):
			return IO_0_FAIL_DTC;
		case (IO_1_ADDR):
			return IO_1_FAIL_DTC;
		case (IO_2_ADDR):
			return IO_2_FAIL_DTC;
		case (IO_3_ADDR):
			return IO_3_FAIL_DTC;
		default:
			return IO_GENERIC_FAIL_DTC;
	}
}
