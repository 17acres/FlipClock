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

#include "../../ESPCode/SMBusIM.h" //segWear structs there




void resetSegWear();
void loadSegWearData();
void saveSegWearData(bool doImmediately);
void replaceSeg(DigitStruct *digit, SegState location, SegWearItem newSegInfo );//SegState "something only" or show extra
void logSegWear(DigitStruct *digit, SegState applyState);
void printSegWear();

#endif /* SOURCE_UTILS_SEGWEARMANAGER_H_ */
