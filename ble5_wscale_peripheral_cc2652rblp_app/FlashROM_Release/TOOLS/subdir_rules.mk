################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
build-1438567807:
	@$(MAKE) --no-print-directory -Onone -f TOOLS/subdir_rules.mk build-1438567807-inproc

build-1438567807-inproc: ../TOOLS/ble_release.cfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: XDCtools'
	"C:/ti/xdctools_3_51_01_18_core/xs" --xdcpath="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source;C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/kernel/tirtos/packages;C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack;" xdc.tools.configuro -o configPkg -t ti.targets.arm.elf.M4F -p ti.platforms.simplelink:CC2642R1F -r release -c "C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS" --compileOptions "-mv7M4 --code_state=16 -me -Ooff --opt_for_speed=0 --include_path=\"C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app\" --include_path=\"C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app/Application\" --include_path=\"C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app/Startup\" --include_path=\"C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app/PROFILES\" --include_path=\"C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app/Include\" --include_path=\"C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app/GPIO_Interface\" --include_path=\"C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/controller/cc26xx/inc\" --include_path=\"C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/inc\" --include_path=\"C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/rom\" --include_path=\"C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/common/cc26xx\" --include_path=\"C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/icall/inc\" --include_path=\"C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/target\" --include_path=\"C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/hal/src/target/_common\" --include_path=\"C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/hal/src/target/_common/cc26xx\" --include_path=\"C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/hal/src/inc\" --include_path=\"C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/heapmgr\" --include_path=\"C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/icall/src/inc\" --include_path=\"C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/osal/src/inc\" --include_path=\"C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/services/src/saddr\" --include_path=\"C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/services/src/sdata\" --include_path=\"C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/services/src/nv\" --include_path=\"C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/services/src/nv/cc26xx\" --include_path=\"C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/devices/cc13x2_cc26x2\" --include_path=\"C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS/include\" --define=DeviceFamily_CC26X2 -g --c99 --gcc --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi " "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

configPkg/linker.cmd: build-1438567807 ../TOOLS/ble_release.cfg
configPkg/compiler.opt: build-1438567807
configPkg/: build-1438567807


