/*
 * ioDefs.c
 *
 *  Created on: Dec 3, 2020
 *      Author: Dan
 *
 *      https://en.wikipedia.org/wiki/Seven-segment_display
 */
#include "ioDefs.h"
#include "../ioDriver.h"
#include <xdc/std.h>
#include <xdc/runtime/System.h>
#include "../FastLED/lib8tion/scale8c.h"
#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/knl/Task.h>

SegState unionSeg(SegState s0, SegState s1) {
    s0.rawWord |= s1.rawWord;

    if (s0.a == DRV_BRAKE)
        s0.a = DRV_COAST;

    if (s0.b == DRV_BRAKE)
        s0.b = DRV_COAST;

    if (s0.c == DRV_BRAKE)
        s0.c = DRV_COAST;

    if (s0.d == DRV_BRAKE)
        s0.d = DRV_COAST;

    if (s0.e == DRV_BRAKE)
        s0.e = DRV_COAST;

    if (s0.f == DRV_BRAKE)
        s0.f = DRV_COAST;

    if (s0.g == DRV_BRAKE)
        s0.g = DRV_COAST;

    if (s0.extra == DRV_BRAKE)
        s0.extra = DRV_COAST;

    return s0;
}

SegState unionSegPriority(SegState newState, SegState oldState) {
    return unionSeg(subtractSeg(newState, oldState), unionSeg(newState, oldState));
}

SegState subtractSeg(SegState newState, SegState oldState) {

    if (oldState.a == newState.a)
        newState.a = DRV_COAST;

    if (oldState.b == newState.b)
        newState.b = DRV_COAST;

    if (oldState.c == newState.c)
        newState.c = DRV_COAST;

    if (oldState.d == newState.d)
        newState.d = DRV_COAST;

    if (oldState.e == newState.e)
        newState.e = DRV_COAST;

    if (oldState.f == newState.f)
        newState.f = DRV_COAST;

    if (oldState.g == newState.g)
        newState.g = DRV_COAST;

    if (oldState.extra == newState.extra)
        newState.extra = DRV_COAST;

    return newState;
}

SegState invertSegState(SegState state) { //passed by value
    if ((state.a == DRV_FWD) || (state.a == DRV_REV))
        state.a = ~state.a;

    if ((state.b == DRV_FWD) || (state.b == DRV_REV))
        state.b = ~state.b;

    if ((state.c == DRV_FWD) || (state.c == DRV_REV))
        state.c = ~state.c;

    if ((state.d == DRV_FWD) || (state.d == DRV_REV))
        state.d = ~state.d;

    if ((state.e == DRV_FWD) || (state.e == DRV_REV))
        state.e = ~state.e;

    if ((state.f == DRV_FWD) || (state.f == DRV_REV))
        state.f = ~state.f;

    if ((state.g == DRV_FWD) || (state.g == DRV_REV))
        state.g = ~state.g;

    if ((state.extra == DRV_FWD) || (state.extra == DRV_REV))
        state.extra = ~state.extra;
    return state;
}

SegState replaceNonOffWithBrake(SegState state) { //passed by value
    if ((state.a != SEG_OFF))
        state.a = DRV_BRAKE;

    if ((state.b != SEG_OFF))
        state.b = DRV_BRAKE;

    if ((state.c != SEG_OFF))
        state.c = DRV_BRAKE;

    if ((state.d != SEG_OFF))
        state.d = DRV_BRAKE;

    if ((state.e != SEG_OFF))
        state.e = DRV_BRAKE;

    if ((state.f != SEG_OFF))
        state.f = DRV_BRAKE;

    if ((state.g != SEG_OFF))
        state.g = DRV_BRAKE;

    if ((state.extra != SEG_OFF))
        state.extra = DRV_BRAKE;

    return state;
}

SegStateFade calculateFadedSegState(SegState segState) {

    SegStateFade ret = (SegStateFade ) {
                    (segState.a == SEG_SHOW) * 255,
                    (segState.b == SEG_SHOW) * 255,
                    (segState.extra == SEG_SHOW) * 255,
                    (segState.c == SEG_SHOW) * 255,
                    (segState.d == SEG_SHOW) * 255,
                    (segState.e == SEG_SHOW) * 255,
                    (segState.g == SEG_SHOW) * 255,
                    (segState.f == SEG_SHOW) * 255 };

    return ret;
}

SegStateFade rampSegState(SegState oldState, SegState newState, uint8_t amountOfOverlay) {
    SegStateFade oldFaded = calculateFadedSegState(oldState);
    SegStateFade newFaded = calculateFadedSegState(newState);

    SegStateFade ret = (SegStateFade ) {
                    blend8(oldFaded.a, newFaded.a, amountOfOverlay),
                    blend8(oldFaded.b, newFaded.b, amountOfOverlay),
                    blend8(oldFaded.extra, newFaded.extra, amountOfOverlay),
                    blend8(oldFaded.c, newFaded.c, amountOfOverlay),
                    blend8(oldFaded.d, newFaded.d, amountOfOverlay),
                    blend8(oldFaded.e, newFaded.e, amountOfOverlay),
                    blend8(oldFaded.g, newFaded.g, amountOfOverlay),
                    blend8(oldFaded.f, newFaded.f, amountOfOverlay) };

    return ret;
}

bool applySegState(uint8_t slaveAddress, SegState state, uint32_t onTimeMs) {
    writeData(slaveAddress, state.rawWord);
    Task_sleep(onTimeMs);
    return writeData(slaveAddress, segValOff.rawWord);
}

bool setSegStateNonBlocking(uint8_t slaveAddress, SegState state) {
    return writeData(slaveAddress, state.rawWord);
}

bool applySegDelta(uint8_t slaveAddress, SegState oldState, SegState newState, uint32_t onTimeMs) {
    return applySegState(slaveAddress, subtractSeg(newState, oldState), onTimeMs);
}

const SegState segVal0 = {
        .a = SEG_SHOW,
        .b = SEG_SHOW,
        .c = SEG_SHOW,
        .d = SEG_SHOW,
        .e = SEG_SHOW,
        .f = SEG_SHOW,
        .g = SEG_HIDE,
        .extra = SEG_OFF };

const SegState segVal1 = {
        .a = SEG_HIDE,
        .b = SEG_SHOW,
        .c = SEG_SHOW,
        .d = SEG_HIDE,
        .e = SEG_HIDE,
        .f = SEG_HIDE,
        .g = SEG_HIDE,
        .extra = SEG_OFF };

const SegState segVal2 = {
        .a = SEG_SHOW,
        .b = SEG_SHOW,
        .c = SEG_HIDE,
        .d = SEG_SHOW,
        .e = SEG_SHOW,
        .f = SEG_HIDE,
        .g = SEG_SHOW,
        .extra = SEG_OFF };

const SegState segVal3 = {
        .a = SEG_SHOW,
        .b = SEG_SHOW,
        .c = SEG_SHOW,
        .d = SEG_SHOW,
        .e = SEG_HIDE,
        .f = SEG_HIDE,
        .g = SEG_SHOW,
        .extra = SEG_OFF };

const SegState segVal4 = {
        .a = SEG_HIDE,
        .b = SEG_SHOW,
        .c = SEG_SHOW,
        .d = SEG_HIDE,
        .e = SEG_HIDE,
        .f = SEG_SHOW,
        .g = SEG_SHOW,
        .extra = SEG_OFF };

const SegState segVal5 = {
        .a = SEG_SHOW,
        .b = SEG_HIDE,
        .c = SEG_SHOW,
        .d = SEG_SHOW,
        .e = SEG_HIDE,
        .f = SEG_SHOW,
        .g = SEG_SHOW,
        .extra = SEG_OFF };

const SegState segVal6 = {
        .a = SEG_SHOW,
        .b = SEG_HIDE,
        .c = SEG_SHOW,
        .d = SEG_SHOW,
        .e = SEG_SHOW,
        .f = SEG_SHOW,
        .g = SEG_SHOW,
        .extra = SEG_OFF };

const SegState segVal7 = {
        .a = SEG_SHOW,
        .b = SEG_SHOW,
        .c = SEG_SHOW,
        .d = SEG_HIDE,
        .e = SEG_HIDE,
        .f = SEG_HIDE,
        .g = SEG_HIDE,
        .extra = SEG_OFF };

const SegState segVal8 = {
        .a = SEG_SHOW,
        .b = SEG_SHOW,
        .c = SEG_SHOW,
        .d = SEG_SHOW,
        .e = SEG_SHOW,
        .f = SEG_SHOW,
        .g = SEG_SHOW,
        .extra = SEG_OFF };

const SegState segVal9 = {
        .a = SEG_SHOW,
        .b = SEG_SHOW,
        .c = SEG_SHOW,
        .d = SEG_SHOW,
        .e = SEG_HIDE,
        .f = SEG_SHOW,
        .g = SEG_SHOW,
        .extra = SEG_OFF };

const SegState segVal_A = {
        .a = SEG_SHOW,
        .b = SEG_SHOW,
        .c = SEG_SHOW,
        .d = SEG_HIDE,
        .e = SEG_SHOW,
        .f = SEG_SHOW,
        .g = SEG_SHOW,
        .extra = SEG_OFF };

const SegState segVal_b = {
        .a = SEG_HIDE,
        .b = SEG_HIDE,
        .c = SEG_SHOW,
        .d = SEG_SHOW,
        .e = SEG_SHOW,
        .f = SEG_SHOW,
        .g = SEG_SHOW,
        .extra = SEG_OFF };

const SegState segVal_C = {
        .a = SEG_SHOW,
        .b = SEG_HIDE,
        .c = SEG_HIDE,
        .d = SEG_SHOW,
        .e = SEG_SHOW,
        .f = SEG_SHOW,
        .g = SEG_HIDE,
        .extra = SEG_OFF };

const SegState segVal_c = {
        .a = SEG_HIDE,
        .b = SEG_HIDE,
        .c = SEG_HIDE,
        .d = SEG_SHOW,
        .e = SEG_SHOW,
        .f = SEG_HIDE,
        .g = SEG_SHOW,
        .extra = SEG_OFF };

const SegState segVal_d = {
        .a = SEG_HIDE,
        .b = SEG_SHOW,
        .c = SEG_SHOW,
        .d = SEG_SHOW,
        .e = SEG_SHOW,
        .f = SEG_HIDE,
        .g = SEG_SHOW,
        .extra = SEG_OFF };

const SegState segVal_E = {
        .a = SEG_SHOW,
        .b = SEG_HIDE,
        .c = SEG_HIDE,
        .d = SEG_SHOW,
        .e = SEG_SHOW,
        .f = SEG_SHOW,
        .g = SEG_SHOW,
        .extra = SEG_OFF };

const SegState segVal_F = {
        .a = SEG_SHOW,
        .b = SEG_HIDE,
        .c = SEG_HIDE,
        .d = SEG_HIDE,
        .e = SEG_SHOW,
        .f = SEG_SHOW,
        .g = SEG_SHOW,
        .extra = SEG_OFF };

const SegState segVal_G = {
        .a = SEG_SHOW,
        .b = SEG_HIDE,
        .c = SEG_SHOW,
        .d = SEG_SHOW,
        .e = SEG_SHOW,
        .f = SEG_SHOW,
        .g = SEG_HIDE,
        .extra = SEG_OFF };

const SegState segVal_H = {
        .a = SEG_HIDE,
        .b = SEG_SHOW,
        .c = SEG_SHOW,
        .d = SEG_HIDE,
        .e = SEG_SHOW,
        .f = SEG_SHOW,
        .g = SEG_SHOW,
        .extra = SEG_OFF };

const SegState segVal_h = {
        .a = SEG_HIDE,
        .b = SEG_HIDE,
        .c = SEG_SHOW,
        .d = SEG_HIDE,
        .e = SEG_SHOW,
        .f = SEG_SHOW,
        .g = SEG_SHOW,
        .extra = SEG_OFF };

const SegState segVal_I = {
        .a = SEG_HIDE,
        .b = SEG_HIDE,
        .c = SEG_HIDE,
        .d = SEG_HIDE,
        .e = SEG_SHOW,
        .f = SEG_SHOW,
        .g = SEG_HIDE,
        .extra = SEG_OFF };

const SegState segVal_i = {
        .a = SEG_HIDE,
        .b = SEG_HIDE,
        .c = SEG_HIDE,
        .d = SEG_HIDE,
        .e = SEG_SHOW,
        .f = SEG_HIDE,
        .g = SEG_HIDE,
        .extra = SEG_OFF };

const SegState segVal_J = {
        .a = SEG_HIDE,
        .b = SEG_SHOW,
        .c = SEG_SHOW,
        .d = SEG_SHOW,
        .e = SEG_SHOW,
        .f = SEG_HIDE,
        .g = SEG_HIDE,
        .extra = SEG_OFF };

const SegState segVal_L = {
        .a = SEG_HIDE,
        .b = SEG_HIDE,
        .c = SEG_HIDE,
        .d = SEG_SHOW,
        .e = SEG_SHOW,
        .f = SEG_SHOW,
        .g = SEG_HIDE,
        .extra = SEG_OFF };

const SegState segVal_n = {
        .a = SEG_HIDE,
        .b = SEG_HIDE,
        .c = SEG_SHOW,
        .d = SEG_HIDE,
        .e = SEG_SHOW,
        .f = SEG_HIDE,
        .g = SEG_SHOW,
        .extra = SEG_OFF };

const SegState segVal_O = {
        .a = SEG_SHOW,
        .b = SEG_SHOW,
        .c = SEG_SHOW,
        .d = SEG_SHOW,
        .e = SEG_SHOW,
        .f = SEG_SHOW,
        .g = SEG_HIDE,
        .extra = SEG_OFF };

const SegState segVal_o = {
        .a = SEG_HIDE,
        .b = SEG_HIDE,
        .c = SEG_SHOW,
        .d = SEG_SHOW,
        .e = SEG_SHOW,
        .f = SEG_HIDE,
        .g = SEG_SHOW,
        .extra = SEG_OFF };

const SegState segVal_P = {
        .a = SEG_SHOW,
        .b = SEG_SHOW,
        .c = SEG_HIDE,
        .d = SEG_HIDE,
        .e = SEG_SHOW,
        .f = SEG_SHOW,
        .g = SEG_SHOW,
        .extra = SEG_OFF };

const SegState segVal_q = {
        .a = SEG_SHOW,
        .b = SEG_SHOW,
        .c = SEG_SHOW,
        .d = SEG_HIDE,
        .e = SEG_HIDE,
        .f = SEG_SHOW,
        .g = SEG_SHOW,
        .extra = SEG_OFF };

const SegState segVal_r = {
        .a = SEG_HIDE,
        .b = SEG_HIDE,
        .c = SEG_HIDE,
        .d = SEG_HIDE,
        .e = SEG_SHOW,
        .f = SEG_HIDE,
        .g = SEG_SHOW,
        .extra = SEG_OFF };

const SegState segVal_S = {
        .a = SEG_SHOW,
        .b = SEG_HIDE,
        .c = SEG_SHOW,
        .d = SEG_SHOW,
        .e = SEG_HIDE,
        .f = SEG_SHOW,
        .g = SEG_SHOW,
        .extra = SEG_OFF };

const SegState segVal_t = {
        .a = SEG_HIDE,
        .b = SEG_HIDE,
        .c = SEG_HIDE,
        .d = SEG_SHOW,
        .e = SEG_SHOW,
        .f = SEG_SHOW,
        .g = SEG_SHOW,
        .extra = SEG_OFF };

const SegState segVal_U = {
        .a = SEG_HIDE,
        .b = SEG_SHOW,
        .c = SEG_SHOW,
        .d = SEG_SHOW,
        .e = SEG_SHOW,
        .f = SEG_SHOW,
        .g = SEG_HIDE,
        .extra = SEG_OFF };

const SegState segVal_u = {
        .a = SEG_HIDE,
        .b = SEG_HIDE,
        .c = SEG_SHOW,
        .d = SEG_SHOW,
        .e = SEG_SHOW,
        .f = SEG_HIDE,
        .g = SEG_HIDE,
        .extra = SEG_OFF };

const SegState segVal_y = {
        .a = SEG_HIDE,
        .b = SEG_SHOW,
        .c = SEG_SHOW,
        .d = SEG_SHOW,
        .e = SEG_HIDE,
        .f = SEG_SHOW,
        .g = SEG_SHOW,
        .extra = SEG_OFF };

const SegState segValQuestion = {
        .a = SEG_SHOW,
        .b = SEG_SHOW,
        .c = SEG_HIDE,
        .d = SEG_HIDE,
        .e = SEG_SHOW,
        .f = SEG_HIDE,
        .g = SEG_SHOW,
        .extra = SEG_OFF };

const SegState segValBlank = {
        .a = SEG_HIDE,
        .b = SEG_HIDE,
        .c = SEG_HIDE,
        .d = SEG_HIDE,
        .e = SEG_HIDE,
        .f = SEG_HIDE,
        .g = SEG_HIDE,
        .extra = SEG_OFF };

const SegState segValAll = {
        .a = SEG_SHOW,
        .b = SEG_SHOW,
        .c = SEG_SHOW,
        .d = SEG_SHOW,
        .e = SEG_SHOW,
        .f = SEG_SHOW,
        .g = SEG_SHOW,
        .extra = SEG_OFF };

const SegState segValOff = {
        .a = SEG_OFF,
        .b = SEG_OFF,
        .c = SEG_OFF,
        .d = SEG_OFF,
        .e = SEG_OFF,
        .f = SEG_OFF,
        .g = SEG_OFF,
        .extra = SEG_OFF };

const SegState segValBrake = {
        .a = DRV_BRAKE,
        .b = DRV_BRAKE,
        .c = DRV_BRAKE,
        .d = DRV_BRAKE,
        .e = DRV_BRAKE,
        .f = DRV_BRAKE,
        .g = DRV_BRAKE,
        .extra = DRV_BRAKE };

const SegState segValShowExtra = {
        .a = SEG_OFF,
        .b = SEG_OFF,
        .c = SEG_OFF,
        .d = SEG_OFF,
        .e = SEG_OFF,
        .f = SEG_OFF,
        .g = SEG_OFF,
        .extra = SEG_SHOW };

const SegState segValHideExtra = {
        .a = SEG_OFF,
        .b = SEG_OFF,
        .c = SEG_OFF,
        .d = SEG_OFF,
        .e = SEG_OFF,
        .f = SEG_OFF,
        .g = SEG_OFF,
        .extra = SEG_HIDE };

const SegState segValAOnly = {
        .a = SEG_SHOW,
        .b = SEG_HIDE,
        .c = SEG_HIDE,
        .d = SEG_HIDE,
        .e = SEG_HIDE,
        .f = SEG_HIDE,
        .g = SEG_HIDE,
        .extra = SEG_OFF };

const SegState segValBOnly = {
        .a = SEG_HIDE,
        .b = SEG_SHOW,
        .c = SEG_HIDE,
        .d = SEG_HIDE,
        .e = SEG_HIDE,
        .f = SEG_HIDE,
        .g = SEG_HIDE,
        .extra = SEG_OFF };

const SegState segValCOnly = {
        .a = SEG_HIDE,
        .b = SEG_HIDE,
        .c = SEG_SHOW,
        .d = SEG_HIDE,
        .e = SEG_HIDE,
        .f = SEG_HIDE,
        .g = SEG_HIDE,
        .extra = SEG_OFF };

const SegState segValDOnly = {
        .a = SEG_HIDE,
        .b = SEG_HIDE,
        .c = SEG_HIDE,
        .d = SEG_SHOW,
        .e = SEG_HIDE,
        .f = SEG_HIDE,
        .g = SEG_HIDE,
        .extra = SEG_OFF };

const SegState segValEOnly = {
        .a = SEG_HIDE,
        .b = SEG_HIDE,
        .c = SEG_HIDE,
        .d = SEG_HIDE,
        .e = SEG_SHOW,
        .f = SEG_HIDE,
        .g = SEG_HIDE,
        .extra = SEG_OFF };

const SegState segValFOnly = {
        .a = SEG_HIDE,
        .b = SEG_HIDE,
        .c = SEG_HIDE,
        .d = SEG_HIDE,
        .e = SEG_HIDE,
        .f = SEG_SHOW,
        .g = SEG_HIDE,
        .extra = SEG_OFF };

const SegState segValGOnly = {
        .a = SEG_HIDE,
        .b = SEG_HIDE,
        .c = SEG_HIDE,
        .d = SEG_HIDE,
        .e = SEG_HIDE,
        .f = SEG_HIDE,
        .g = SEG_SHOW,
        .extra = SEG_OFF };

char getSegStateLocationName(SegState location) {
    if (location.rawWord == segValAOnly.rawWord) {
        return 'A';
    } else if (location.rawWord == segValBOnly.rawWord) {
        return 'B';
    } else if (location.rawWord == segValCOnly.rawWord) {
        return 'C';
    } else if (location.rawWord == segValDOnly.rawWord) {
        return 'D';
    } else if (location.rawWord == segValEOnly.rawWord) {
        return 'E';
    } else if (location.rawWord == segValFOnly.rawWord) {
        return 'F';
    } else if (location.rawWord == segValGOnly.rawWord) {
        return 'G';
    } else if (location.rawWord == segValShowExtra.rawWord) {
        return 'X';
    } else {
        return '?';
    }
}

const SegState *segValNumberArray[]={&segVal0, &segVal1, &segVal2, &segVal3, &segVal4, &segVal5, &segVal6, &segVal7, &segVal8, &segVal9};
