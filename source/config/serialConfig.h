/*
 * spiConfig.h
 *
 *  Created on: Aug 17, 2020
 *      Author: Dan
 */

#ifndef SOURCE_CONFIG_SERIALCONFIG_H_
#define SOURCE_CONFIG_SERIALCONFIG_H_

#include <ti/drivers/SPI.h>

extern SPI_Handle ledSPIHandle;

extern void initSPI();
extern void initI2C();

#endif /* SOURCE_CONFIG_SERIALCONFIG_H_ */
