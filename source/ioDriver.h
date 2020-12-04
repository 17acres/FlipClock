/*
 * ioDriver.h
 *
 *  Created on: Aug 21, 2020
 *      Author: Dan
 */

#ifndef SOURCE_IODRIVER_H_
#define SOURCE_IODRIVER_H_

#include <stdint.h>
#include <stdbool.h>
#include <ti/sysbios/knl/Semaphore.h>
#include "dtc.h"

Semaphore_Handle ioSemaphore;

bool checkIOPresence(uint8_t slaveAddress);
void initIOSemaphore();
void initIOHwi();
bool writeData(uint8_t slaveAddress, uint16_t data);
Dtc lookupDtc(uint8_t slaveAddress);

#endif /* SOURCE_IODRIVER_H_ */
