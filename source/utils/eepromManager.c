/*
 * eeprom.c
 *
 *  Created on: Sep 20, 2021
 *      Author: Dan
 */

#include "eepromManager.h"
#include "../defs.h"
#include <ti/sysbios/BIOS.h>
#include "driverlib/sysctl.h"
#include <inc/hw_ints.h>
#include <inc/hw_memmap.h>
#include <inc/hw_types.h>
#include <inc/hw_gpio.h>
#include <xdc/runtime/System.h>
#include "driverlib/eeprom.h"

void initEEPROM() {
    SysCtlPeripheralEnable(SYSCTL_PERIPH_EEPROM0);
    EEPROMInit();
    startAddresses[0]=0;
    for(int i=1;i<EEPROMBLOCK_COUNT;i++){
        startAddresses[i]=startAddresses[i-1]+blockSizes[i-1];
    }
}

void writeEEPROM(uint32_t *data, EEPROMBlock block) {
    uint32_t key = Hwi_disable();

    EEPROMProgram(data, startAddresses[block], blockSizes[block]);

    Hwi_restore(key);
}
void readEEPROM(uint32_t *data, EEPROMBlock block) {
    uint32_t key = Hwi_disable();
    EEPROMRead(data, startAddresses[block], blockSizes[block]);
    Hwi_restore(key);
}

extern uint32_t blockSizes[]={
   sizeof(dtcStructs),
   sizeof(uint32_t)
};
uint32_t startAddresses[EEPROMBLOCK_COUNT];
