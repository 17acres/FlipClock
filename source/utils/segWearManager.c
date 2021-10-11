/*
 * segWear.c
 *
 *  Created on: Oct 9, 2021
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
#include <ti/sysbios/knl/Clock.h>
#include "driverlib/eeprom.h"

#include "segWearManager.h"

SegWearData currentData;

static bool segWearDataLoaded;

static SegWearDigit *getSegWearDigitPointer(DigitStruct *digit) {
    if (digit == &hoursTensStruct) {
        return &(currentData.hoursTens);
    } else if (digit == &hoursOnesStruct) {
        return &(currentData.hoursOnes);
    } else if (digit == &minutesTensStruct) {
        return &(currentData.minutesTens);
    } else if (digit == &minutesOnesStruct) {
        return &(currentData.minutesOnes);
    } else {
        return &(currentData.minutesOnes);
    }

}

static SegWearItem *getSegWearItemPointer(DigitStruct *digit, SegState location) {
    SegWearDigit *selectedDigit = getSegWearDigitPointer(digit);

    if (location.rawWord == segValAOnly.rawWord) {
        return &(selectedDigit->a);
    } else if (location.rawWord == segValBOnly.rawWord) {
        return &(selectedDigit->b);
    } else if (location.rawWord == segValCOnly.rawWord) {
        return &(selectedDigit->c);
    } else if (location.rawWord == segValDOnly.rawWord) {
        return &(selectedDigit->d);
    } else if (location.rawWord == segValEOnly.rawWord) {
        return &(selectedDigit->e);
    } else if (location.rawWord == segValFOnly.rawWord) {
        return &(selectedDigit->f);
    } else if (location.rawWord == segValGOnly.rawWord) {
        return &(selectedDigit->g);
    } else if (location.rawWord == segValShowExtra.rawWord) {
        return &(selectedDigit->extra);
    } else {
        return &(selectedDigit->extra);
    }
}

void resetSegWear() {
    memset(&currentData, 0, sizeof(SegWearData));
    currentData.hoursTens.a.serialNumber = 0;
    currentData.hoursTens.b.serialNumber = 1;
    currentData.hoursTens.c.serialNumber = 2;
    currentData.hoursTens.d.serialNumber = 3;
    currentData.hoursTens.e.serialNumber = 4;
    currentData.hoursTens.f.serialNumber = 5;
    currentData.hoursTens.g.serialNumber = 6;
    currentData.hoursTens.extra.serialNumber = 7;
    currentData.hoursOnes.a.serialNumber = 8 * 1 + 0;
    currentData.hoursOnes.b.serialNumber = 8 * 1 + 1;
    currentData.hoursOnes.c.serialNumber = 8 * 1 + 2;
    currentData.hoursOnes.d.serialNumber = 8 * 1 + 3;
    currentData.hoursOnes.e.serialNumber = 8 * 1 + 4;
    currentData.hoursOnes.f.serialNumber = 8 * 1 + 5;
    currentData.hoursOnes.g.serialNumber = 8 * 1 + 6;
    currentData.hoursOnes.extra.serialNumber = 8 * 1 + 7;
    currentData.minutesTens.a.serialNumber = 8 * 2 + 0;
    currentData.minutesTens.b.serialNumber = 8 * 2 + 1;
    currentData.minutesTens.c.serialNumber = 8 * 2 + 2;
    currentData.minutesTens.d.serialNumber = 8 * 2 + 3;
    currentData.minutesTens.e.serialNumber = 8 * 2 + 4;
    currentData.minutesTens.f.serialNumber = 8 * 2 + 5;
    currentData.minutesTens.g.serialNumber = 8 * 2 + 6;
    currentData.minutesTens.extra.serialNumber = 8 * 2 + 7;
    currentData.minutesOnes.a.serialNumber = 8 * 3 + 0;
    currentData.minutesOnes.b.serialNumber = 8 * 3 + 1;
    currentData.minutesOnes.c.serialNumber = 8 * 3 + 2;
    currentData.minutesOnes.d.serialNumber = 8 * 3 + 3;
    currentData.minutesOnes.e.serialNumber = 8 * 3 + 4;
    currentData.minutesOnes.f.serialNumber = 8 * 3 + 5;
    currentData.minutesOnes.g.serialNumber = 8 * 3 + 6;
    currentData.minutesOnes.extra.serialNumber = 8 * 3 + 7;
    currentData.dataValidCode = DATA_VALID_SEGWEAR;
}

void loadSegWearData() {
    if (!segWearDataLoaded) {
        readEEPROM((uint32_t *) &currentData, EEPROMBLOCK_SEG_WEAR);
        if (currentData.dataValidCode != DATA_VALID_SEGWEAR) { //EEPROM invalid
            printSegWear();
            resetSegWear();
            saveSegWearData(true);
            System_printf("Seg Wear EEPROM Data Invalid. Reset\n");
            printSegWear();
        }
        segWearDataLoaded=true;
    }
}
void saveSegWearData(bool doImmediately) {
    static uint32_t lastSaveTime;
    uint32_t currentTime = Clock_getTicks();
    if (doImmediately || (currentTime > (lastSaveTime + EEPROM_SEG_WEAR_FLUSH_MS))) {
        writeEEPROM((uint32_t *) &currentData, EEPROMBLOCK_SEG_WEAR);
        lastSaveTime = currentTime;
    }
}
void replaceSeg(DigitStruct *digit, SegState location, SegWearItem newSegInfo) { //SegState "something only" or show extra
    SegWearItem *targetLocation = getSegWearItemPointer(digit, location);
    targetLocation->flipCount = newSegInfo.flipCount;
    targetLocation->serialNumber = newSegInfo.serialNumber;
    saveSegWearData(true);
}

void logSegWear(DigitStruct *digit, SegState applyState) {
    loadSegWearData();
    SegWearDigit *targetLocation = getSegWearDigitPointer(digit);

    if (applyState.a == SEG_SHOW || applyState.a == SEG_HIDE) {
        targetLocation->a.flipCount++;
    }

    if (applyState.b == SEG_SHOW || applyState.b == SEG_HIDE) {
        targetLocation->b.flipCount++;
    }

    if (applyState.c == SEG_SHOW || applyState.c == SEG_HIDE) {
        targetLocation->c.flipCount++;
    }

    if (applyState.d == SEG_SHOW || applyState.d == SEG_HIDE) {
        targetLocation->d.flipCount++;
    }

    if (applyState.e == SEG_SHOW || applyState.e == SEG_HIDE) {
        targetLocation->e.flipCount++;
    }

    if (applyState.f == SEG_SHOW || applyState.f == SEG_HIDE) {
        targetLocation->f.flipCount++;
    }

    if (applyState.g == SEG_SHOW || applyState.g == SEG_HIDE) {
        targetLocation->g.flipCount++;
    }

    if (applyState.extra == SEG_SHOW || applyState.extra == SEG_HIDE) {
        targetLocation->extra.flipCount++;
    }

    saveSegWearData(false);
}

static void printSegWearItem(DigitStruct *digit, SegState location) {

    SegWearItem *targetLocation = getSegWearItemPointer(digit, location);
    System_printf("%s,%c,%u,%u\n", digit->name, getSegStateLocationName(location), targetLocation->serialNumber, targetLocation->flipCount);
}

void printSegWear() {
    System_printf("******Segment Wear Statistics******\n");
    System_printf("Digit,Segment,S/N,Flip Count\n");
    printSegWearItem(&hoursTensStruct, segValAOnly);
    printSegWearItem(&hoursTensStruct, segValBOnly);
    printSegWearItem(&hoursTensStruct, segValCOnly);
    printSegWearItem(&hoursTensStruct, segValDOnly);
    printSegWearItem(&hoursTensStruct, segValEOnly);
    printSegWearItem(&hoursTensStruct, segValFOnly);
    printSegWearItem(&hoursTensStruct, segValGOnly);
    printSegWearItem(&hoursTensStruct, segValShowExtra);
    printSegWearItem(&hoursOnesStruct, segValAOnly);
    printSegWearItem(&hoursOnesStruct, segValBOnly);
    printSegWearItem(&hoursOnesStruct, segValCOnly);
    printSegWearItem(&hoursOnesStruct, segValDOnly);
    printSegWearItem(&hoursOnesStruct, segValEOnly);
    printSegWearItem(&hoursOnesStruct, segValFOnly);
    printSegWearItem(&hoursOnesStruct, segValGOnly);
    printSegWearItem(&hoursOnesStruct, segValShowExtra);
    printSegWearItem(&minutesTensStruct, segValAOnly);
    printSegWearItem(&minutesTensStruct, segValBOnly);
    printSegWearItem(&minutesTensStruct, segValCOnly);
    printSegWearItem(&minutesTensStruct, segValDOnly);
    printSegWearItem(&minutesTensStruct, segValEOnly);
    printSegWearItem(&minutesTensStruct, segValFOnly);
    printSegWearItem(&minutesTensStruct, segValGOnly);
    printSegWearItem(&minutesTensStruct, segValShowExtra);
    printSegWearItem(&minutesOnesStruct, segValAOnly);
    printSegWearItem(&minutesOnesStruct, segValBOnly);
    printSegWearItem(&minutesOnesStruct, segValCOnly);
    printSegWearItem(&minutesOnesStruct, segValDOnly);
    printSegWearItem(&minutesOnesStruct, segValEOnly);
    printSegWearItem(&minutesOnesStruct, segValFOnly);
    printSegWearItem(&minutesOnesStruct, segValGOnly);
    printSegWearItem(&minutesOnesStruct, segValShowExtra);
}
