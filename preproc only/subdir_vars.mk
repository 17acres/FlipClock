################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Add inputs and outputs from these tool invocations to the build variables 
CFG_SRCS += \
../rtosConfig.cfg 

CMD_SRCS += \
../EK_TM4C123GXL.cmd 

SYSCONFIG_SRCS += \
../cfg.sysconfig 

C_SRCS += \
./syscfg/pinout.c 

GEN_CMDS += \
./configPkg/linker.cmd 

GEN_FILES += \
./syscfg/pinout.c \
./configPkg/linker.cmd \
./configPkg/compiler.opt 

GEN_MISC_DIRS += \
./syscfg/ \
./configPkg/ 

GEN_OPTS += \
./configPkg/compiler.opt 

OBJS += \
./syscfg/pinout.obj 

GEN_MISC_FILES += \
./syscfg/pinout.h \
./syscfg/summary.csv 

GEN_MISC_DIRS__QUOTED += \
"syscfg\" \
"configPkg\" 

OBJS__QUOTED += \
"syscfg\pinout.obj" 

GEN_MISC_FILES__QUOTED += \
"syscfg\pinout.h" \
"syscfg\summary.csv" 

GEN_FILES__QUOTED += \
"syscfg\pinout.c" \
"configPkg\linker.cmd" \
"configPkg\compiler.opt" 

SYSCONFIG_SRCS__QUOTED += \
"../cfg.sysconfig" 

C_SRCS__QUOTED += \
"./syscfg/pinout.c" 


