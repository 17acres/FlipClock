/*
 * spiConfig.h
 *
 *  Created on: Aug 17, 2020
 *      Author: Dan
 */

#ifndef SOURCE_CONFIG_SPICONFIG_H_
#define SOURCE_CONFIG_SPICONFIG_H_

#include <ti/drivers/SPI.h>

SPI_Handle ledSPIHandle;

extern void initSPI();

#endif /* SOURCE_CONFIG_SPICONFIG_H_ */
