/*
 * defs.h
 *
 *  Created on: Aug 16, 2020
 *      Author: Dan
 */

#ifndef SOURCE_DEFS_H_
#define SOURCE_DEFS_H_

#include "utils/ioDefs.h"

#define LED_FPS 60
#define LED_BITRATE 1000000
#define DIGIT_TIMER_FUNCTION_MAX_DURATION 5000
#define TASKSTACKSIZE   1024
#define HSD_VOLTS_PER_AMP (1250.0/510.0)
//Higher is higher priority
#define DIGIT_TASK_PRIORITY 10
#define SYS_MONITOR_PRIORITY 7
#define LED_TASK_PRIORITY 6
#define SAFETY_BARRIER_PRIORITY 15
#define TIME_MANAGER_PRIORITY 5

#define ENABLE_WDT 1

#define EEPROM_SIZE (2048)
#define EEPROM_SEG_WEAR_FLUSH_MS (1000*60*60*12) //twice per day
#endif /* SOURCE_DEFS_H_ */
