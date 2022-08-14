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
#include "segWearManager.h"
#include <ti/sysbios/gates/GateMutexPri.h>
static GateMutexPri_Handle mutexHandle;

void initEEPROM() {
    GateMutexPri_Params params;
    GateMutexPri_Params_init(&params);
    mutexHandle=GateMutexPri_create(&params, NULL);

    IArg key=GateMutexPri_enter(mutexHandle);
    SysCtlPeripheralEnable(SYSCTL_PERIPH_EEPROM0);
    EEPROMInit();
    GateMutexPri_leave(mutexHandle, key);
    startAddresses[0]=0;
    for(int i=1;i<EEPROMBLOCK_COUNT;i++){
        startAddresses[i]=startAddresses[i-1]+blockSizes[i-1];
        if((startAddresses[i]+blockSizes[i])>EEPROM_SIZE){
            System_printf("**FATAL ERROR. EEPROM OVERFLOW**");
            SysCtlReset();
        }
    }

}

void writeEEPROM(uint32_t *data, EEPROMBlock block) {
    IArg key=GateMutexPri_enter(mutexHandle);

    EEPROMProgram(data, startAddresses[block], blockSizes[block]);

    GateMutexPri_leave(mutexHandle, key);
}
void readEEPROM(uint32_t *data, EEPROMBlock block) {
    IArg key=GateMutexPri_enter(mutexHandle);

    EEPROMRead(data, startAddresses[block], blockSizes[block]);

    GateMutexPri_leave(mutexHandle, key);
}

extern uint32_t blockSizes[]={ //must be a multiple of 4 bytes
   sizeof(DtcDataFrame),
   sizeof(SegWearData),
   sizeof(uint8_t)//SHOULD BE WARNING EXCESS INITIALIZERS
};
uint32_t startAddresses[EEPROMBLOCK_COUNT];
