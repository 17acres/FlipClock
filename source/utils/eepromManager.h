/*
 * eeprom.h
 *
 *  Created on: Sep 20, 2021
 *      Author: Dan
 */

#ifndef SOURCE_EEPROM_H_
#define SOURCE_EEPROM_H_
#include <xdc/std.h>
#include "../dtc.h"

#define DATA_VALID_DTC 0xDEADCAAA
#define DATA_VALID_SEGWEAR 0xDEADCAAA

typedef enum EEPROMBlock{
    EEPROMBLOCK_DTC,
    EEPROMBLOCK_SEG_WEAR,
    EEPROMBLOCK_COUNT
}EEPROMBlock;

extern uint32_t blockSizes[EEPROMBLOCK_COUNT];

extern uint32_t startAddresses[EEPROMBLOCK_COUNT];

void initEEPROM();
void writeEEPROM(uint32_t *data, EEPROMBlock block);
void readEEPROM(uint32_t *data, EEPROMBlock block);

#endif /* SOURCE_EEPROM_H_ */
