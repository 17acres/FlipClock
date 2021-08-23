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
#define TONE_MAX_DURATION_MS 5000
#define TASKSTACKSIZE   1024

//Higher is higher priority
#define DIGIT_TASK_PRIORITY 10
#define SYS_MONITOR_PRIORITY 7
#define LED_TASK_PRIORITY 6
#define SAFETY_BARRIER_PRIORITY 15

#endif /* SOURCE_DEFS_H_ */
