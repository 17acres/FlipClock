################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
source/utils/%.obj: ../source/utils/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/Users/Dan/Documents/GitHub/FlipClock" --include_path="C:/Users/Dan/Documents/GitHub/FlipClock" --include_path="C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b" --include_path="C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/posix" --include_path="C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include" --define=F_CPU=80000000 --define=FASTLED_TEENSY3 --define=__arm__ --define=ccs="ccs" --define=PART_TM4C123GH6PM --define=ccs --define=TIVAWARE -g --c11 --c++14 --gcc --preproc_only --preproc_with_comment --preproc_with_line --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --include_path="C:/Users/Dan/Documents/GitHub/FlipClock/preproc only/syscfg" --obj_directory="source/utils" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


