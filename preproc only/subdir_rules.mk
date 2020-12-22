################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
build-1582873905:
	@$(MAKE) --no-print-directory -Onone -f subdir_rules.mk build-1582873905-inproc

build-1582873905-inproc: ../cfg.sysconfig
	@echo 'Building file: "$<"'
	@echo 'Invoking: SysConfig'
	"C:/ti/ccs930/ccs/utils/sysconfig/sysconfig_cli.bat" -o "syscfg" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

syscfg/pinout.c: build-1582873905 ../cfg.sysconfig
syscfg/pinout.h: build-1582873905
syscfg/summary.csv: build-1582873905
syscfg/: build-1582873905

syscfg/pinout.obj: ./syscfg/pinout.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/Users/Dan/Documents/GitHub/FlipClock" --include_path="C:/Users/Dan/Documents/GitHub/FlipClock" --include_path="C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b" --include_path="C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/posix" --include_path="C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include" --define=F_CPU=80000000 --define=FASTLED_TEENSY3 --define=__arm__ --define=ccs="ccs" --define=PART_TM4C123GH6PM --define=ccs --define=TIVAWARE -g --c11 --c++14 --gcc --preproc_only --preproc_with_comment --preproc_with_line --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --include_path="C:/Users/Dan/Documents/GitHub/FlipClock/preproc only/syscfg" --obj_directory="syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

build-644069183:
	@$(MAKE) --no-print-directory -Onone -f subdir_rules.mk build-644069183-inproc

build-644069183-inproc: ../rtosConfig.cfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: XDCtools'
	"C:/ti/xdctools_3_32_00_06_core/xs" --xdcpath="C:/ti/tirtos_tivac_2_16_00_08/packages;C:/ti/tirtos_tivac_2_16_00_08/products/tidrivers_tivac_2_16_00_08/packages;C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages;C:/ti/tirtos_tivac_2_16_00_08/products/ndk_2_25_00_09/packages;C:/ti/tirtos_tivac_2_16_00_08/products/uia_2_00_05_50/packages;C:/ti/tirtos_tivac_2_16_00_08/products/ns_1_11_00_10/packages;" xdc.tools.configuro -o configPkg -t ti.targets.arm.elf.M4F -p ti.platforms.tiva:TM4C123GH6PM -r debug -c "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS" --compileOptions "-mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path=\"C:/Users/Dan/Documents/GitHub/FlipClock\" --include_path=\"C:/Users/Dan/Documents/GitHub/FlipClock\" --include_path=\"C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b\" --include_path=\"C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/posix\" --include_path=\"C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include\" --define=F_CPU=80000000 --define=FASTLED_TEENSY3 --define=__arm__ --define=ccs=\"ccs\" --define=PART_TM4C123GH6PM --define=ccs --define=TIVAWARE -g --c11 --c++14 --gcc --preproc_only --preproc_with_comment --preproc_with_line --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi  " "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

configPkg/linker.cmd: build-644069183 ../rtosConfig.cfg
configPkg/compiler.opt: build-644069183
configPkg/: build-644069183


