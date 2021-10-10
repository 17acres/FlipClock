/*
 * segWearManager.h
 *
 *  Created on: Oct 9, 2021
 *      Author: Dan
 */

#ifndef SOURCE_UTILS_SEGWEARMANAGER_H_
#define SOURCE_UTILS_SEGWEARMANAGER_H_
#include <inc/hw_types.h>
#include <stdint.h>
#include "../digit.h"
#include "ioDefs.h"

typedef struct SegWearItem{
    uint8_t serialNumber;
    uint32_t flipCount;
}SegWearItem;

typedef struct SegWearDigit{
    SegWearItem a;
    SegWearItem b;
    SegWearItem c;
    SegWearItem d;
    SegWearItem e;
    SegWearItem f;
    SegWearItem g;
    SegWearItem extra;
}SegWearDigit;

typedef struct SegWearData{
    SegWearDigit hoursTens;
    SegWearDigit hoursOnes;
    SegWearDigit minutesTens;
    SegWearDigit minutesOnes;
    uint32_t dataValidCode;
}SegWearData;

void resetSegWear();
void loadSegWearData();
void saveSegWearData(bool doImmediately);
void replaceSeg(DigitStruct *digit, SegState location, SegWearItem newSegInfo );//SegState "something only" or show extra
void logSegWear(DigitStruct *digit, SegState applyState);
void printSegWear();

#endif /* SOURCE_UTILS_SEGWEARMANAGER_H_ */
