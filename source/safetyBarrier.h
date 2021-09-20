/*
 * safetyBarrier.h
 *
 *  Created on: Aug 22, 2021
 *      Author: jnich
 */
#ifdef __cplusplus
extern "C" {
#endif

#ifndef SOURCE_SAFETYBARRIER_H_
#define SOURCE_SAFETYBARRIER_H_

typedef enum SafetyBarrierTask{
    SAFETY_BARRIER_TASK_DIGIT,
    SAFETY_BARRIER_TASK_LEDS,

    SAFETY_BARRIER_TASK_LIST_SIZE
}SafetyBarrierTask;

extern void safetyBarrier(UArg arg0, UArg arg1);

extern void setSafetyBarrierTaskFtti(SafetyBarrierTask task, uint8_t ftti);
extern void feedSafetyBarrierWDT(SafetyBarrierTask task);
extern void setSafetyBarrierWDTMode(SafetyBarrierTask task, bool enableWDT);

#endif /* SOURCE_SAFETYBARRIER_H_ */
#ifdef __cplusplus
}
#endif
