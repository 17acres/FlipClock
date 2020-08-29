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

Semaphore_Handle ioTxCompleteSemaphore;
Hwi_Handle hwiHandle;
volatile uint8_t secondByte;
void ioIsr(UArg arg);
volatile bool transactionStarted = false;

bool checkIOPresence(uint8_t slaveAddress) {
	Semaphore_pend(ioSemaphore, BIOS_WAIT_FOREVER);
	MAP_I2CMasterSlaveAddrSet(I2C2_BASE, 0x7C, false);
	MAP_I2CMasterDataPut(I2C2_BASE, slaveAddress<<1);
	MAP_I2CMasterControl(I2C2_BASE, I2C_MASTER_CMD_BURST_SEND_START);

	while (MAP_I2CMasterBusy(I2C2_BASE)) {
		Task_yield();
	}

	if (MAP_I2CMasterErr(I2C2_BASE)) {
		System_printf("Error read device ID, slave address %x. Error code %x on send start\n", slaveAddress, MAP_I2CMasterErr(I2C2_BASE));
		System_flush();
		Semaphore_post(ioSemaphore);
		return (false);
	}

	MAP_I2CMasterSlaveAddrSet(I2C2_BASE, 0x7C, true);
	MAP_I2CMasterControl(I2C2_BASE, I2C_MASTER_CMD_BURST_RECEIVE_START);

	while (MAP_I2CMasterBusy(I2C2_BASE)) {
		Task_yield();
	}

	if (MAP_I2CMasterErr(I2C2_BASE)) {
		System_printf("Error read device ID, slave address %x. Error code %x on receive start\n", slaveAddress, MAP_I2CMasterErr(I2C2_BASE));
		System_flush();
		Semaphore_post(ioSemaphore);
		return (false);
	} else {
		uint8_t ret = MAP_I2CMasterDataGet(I2C2_BASE);
		if (ret != 0x00) {
			System_printf("Incorrect manufacturer name: %x, slave address %x\n", ret, slaveAddress);
			System_flush();
		}
	}

	MAP_I2CMasterControl(I2C2_BASE, I2C_MASTER_CMD_BURST_RECEIVE_CONT);

	while (MAP_I2CMasterBusy(I2C2_BASE)) {
		Task_yield();
	}

	if (MAP_I2CMasterErr(I2C2_BASE)) {
		System_printf("Error read device ID, slave address %x. Error code %x on receive cont 1\n", slaveAddress, MAP_I2CMasterErr(I2C2_BASE));
		System_flush();
		Semaphore_post(ioSemaphore);
		return (false);
	} else {
		uint8_t ret = MAP_I2CMasterDataGet(I2C2_BASE);
		if (ret != 0x02) {
			System_printf("Incorrect category/feature first byte : %x, slave address %x\n", ret, slaveAddress);
			System_flush();
		}
	}

	MAP_I2CMasterControl(I2C2_BASE, I2C_MASTER_CMD_BURST_RECEIVE_FINISH); //Receive with negative ACK

	while (MAP_I2CMasterBusy(I2C2_BASE)) {
		Task_yield();
	}

	if (MAP_I2CMasterErr(I2C2_BASE)) {
		System_printf("Error read device ID, slave address %x. Error code %x on receive cont 2\n", slaveAddress, MAP_I2CMasterErr(I2C2_BASE));
		System_flush();
		Semaphore_post(ioSemaphore);
		return (false);
	} else {
		uint8_t ret = MAP_I2CMasterDataGet(I2C2_BASE);
		if (ret != 0x20) {
			System_printf("Incorrect category/feature second byte : %x, slave address %x\n", ret, slaveAddress);
			System_flush();

		}
	}

//	MAP_I2CMasterControl(I2C2_BASE, I2C_MASTER_CMD_BURST_RECEIVE_ERROR_STOP);
//	while (MAP_I2CMasterBusy(I2C2_BASE)) {
//		Task_yield();
//	}
//
//	if (MAP_I2CMasterErr(I2C2_BASE)) {
//		System_printf("Error read device ID, slave address %x. Error code %x on stop\n", slaveAddress, MAP_I2CMasterErr(I2C2_BASE));
//		System_flush();
//		Semaphore_post(ioSemaphore);
//		return (false);
//	}
	Semaphore_post(ioSemaphore);
	return (true);
}

void initIOSemaphore() {
	Semaphore_Params params;
	Semaphore_Params_init(&params);
	params.mode = Semaphore_Mode_BINARY_PRIORITY;
	ioSemaphore = Semaphore_create(1, &params, NULL);
	ioTxCompleteSemaphore = Semaphore_create(0, &params, NULL);
}

void initIOHwi() {
	MAP_I2CMasterIntEnable(I2C2_BASE);
	hwiHandle = Hwi_create(INT_I2C2, ioIsr, NULL, NULL);
}

bool writeData(uint8_t slaveAddress, uint16_t data) {
	Semaphore_pend(ioSemaphore, BIOS_WAIT_FOREVER);
	secondByte = data & 0xFF;
	transactionStarted = true;
	MAP_I2CMasterSlaveAddrSet(I2C2_BASE, slaveAddress, false);
	MAP_I2CMasterDataPut(I2C2_BASE, data >> 8);
	MAP_I2CMasterControl(I2C2_BASE, I2C_MASTER_CMD_BURST_SEND_START);

	Semaphore_pend(ioTxCompleteSemaphore, BIOS_WAIT_FOREVER);
	Semaphore_reset(ioTxCompleteSemaphore, 0);

	transactionStarted = false;
	Semaphore_post(ioSemaphore);
	return true;
}

void ioIsr(UArg arg) {
	MAP_I2CMasterIntClear(I2C2_BASE);
	GPIO_toggle(LAUNCHPAD_LED_BLUE);
	if (transactionStarted) {
		if (MAP_I2CMasterErr(I2C2_BASE) == I2C_MASTER_ERR_NONE) {
			if (MAP_I2CMasterBusy(I2C2_BASE) == false) {
				MAP_I2CMasterDataPut(I2C2_BASE, secondByte);
				MAP_I2CMasterControl(I2C2_BASE, I2C_MASTER_CMD_BURST_SEND_FINISH);
			}
		}
		Semaphore_post(ioTxCompleteSemaphore);
	}
	//insert something to do presence checking better

}
