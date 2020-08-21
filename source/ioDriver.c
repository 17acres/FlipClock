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
#include <ti/sysbios/knl/Task.h>
#include <inc/hw_memmap.h>

void checkIOPresence() {
	MAP_I2CMasterSlaveAddrSet(I2C2_BASE, 0x7C, false);
	MAP_I2CMasterDataPut(I2C2_BASE, 0x48);
	MAP_I2CMasterControl(I2C2_BASE, I2C_MASTER_CMD_BURST_SEND_START);

	while (MAP_I2CMasterBusy(I2C2_BASE)) {
		Task_yield();
	}

	if (MAP_I2CMasterErr (I2C2_BASE)) {
		System_printf("Error read device ID\n");
		System_flush();
	}

//
//	MAP_I2CMasterControl(I2C2_BASE, I2C_MASTER_CMD_BURST_SEND_CONT);
//
//	while (MAP_I2CMasterBusy(I2C2_BASE)) {
//		Task_yield();
//	}
//
//	if (MAP_I2CMasterErr (I2C2_BASE)) {
//		System_printf("Error read device ID\n");
//		System_flush();
//	}
	MAP_I2CMasterSlaveAddrSet(I2C2_BASE, 0x7C, true);
	MAP_I2CMasterControl(I2C2_BASE, I2C_MASTER_CMD_BURST_RECEIVE_START);

	while (MAP_I2CMasterBusy(I2C2_BASE)) {
		Task_yield();
	}

	if (MAP_I2CMasterErr (I2C2_BASE)) {
		System_printf("Error read device ID\n");
		System_flush();
	} else {
		uint8_t ret = MAP_I2CMasterDataGet(I2C2_BASE);
		if (ret != 0x00) {
			System_printf("Incorrect manufacturer name: %X\n", ret);
			System_flush();
		}
	}

	MAP_I2CMasterControl(I2C2_BASE, I2C_MASTER_CMD_BURST_RECEIVE_CONT);

	while (MAP_I2CMasterBusy(I2C2_BASE)) {
		Task_yield();
	}

	if (MAP_I2CMasterErr (I2C2_BASE)) {
		System_printf("Error read device ID\n");
		System_flush();
	} else {
		uint8_t ret = MAP_I2CMasterDataGet(I2C2_BASE);
		if (ret != 0x02) {
			System_printf("Incorrect category/feature first byte : %X\n", ret);
			System_flush();
		}
	}

	MAP_I2CMasterControl(I2C2_BASE, 0x01); //Receive with negative ACK

	while (MAP_I2CMasterBusy(I2C2_BASE)) {
		Task_yield();
	}

	if (MAP_I2CMasterErr (I2C2_BASE)) {
		System_printf("Error read device ID\n");
		System_flush();
	} else {
		uint8_t ret = MAP_I2CMasterDataGet(I2C2_BASE);
		if (ret != 0x20) {
			System_printf("Incorrect category/feature second byte : %X\n", ret);
			System_flush();
		}
	}

	MAP_I2CMasterControl(I2C2_BASE, I2C_MASTER_CMD_BURST_RECEIVE_ERROR_STOP);
	while (MAP_I2CMasterBusy(I2C2_BASE)) {
		Task_yield();
	}

	if (MAP_I2CMasterErr (I2C2_BASE)) {
		System_printf("Error read device ID\n");
		System_flush();
	}
}

