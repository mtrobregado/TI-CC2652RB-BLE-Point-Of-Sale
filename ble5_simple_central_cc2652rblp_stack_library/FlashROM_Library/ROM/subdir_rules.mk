################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
ROM/common_rom_init.obj: C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/rom/agama_r1/common_rom_init.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS/bin/armcl" --cmd_file="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_simple_central_cc2652rblp_stack_library/TOOLS/defines/ble5_simple_central_cc2652rblp_stack_library_FlashROM_Library.opt" --cmd_file="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/config/build_components.opt" --cmd_file="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/config/factory_config.opt" --cmd_file="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_simple_central_cc2652rblp_stack_library/TOOLS/build_config.opt"  -mv7M4 --code_state=16 -me -O4 --opt_for_speed=0 --include_path="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_simple_central_cc2652rblp_stack_library/Startup2" --include_path="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_simple_central_cc2652rblp_stack_library" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/controller/cc26xx/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/rom" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/common/cc26xx" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/common/cc26xx/npi/stack" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/icall/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/hal/src/target/_common" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/hal/src/target/_common/cc26xx" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/hal/src/target" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/hal/src/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/icall/src/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/npi/src" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/osal/src/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/services/src/aes/cc26xx" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/services/src/nv/cc26xx" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/services/src/nv" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/services/src/saddr" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/devices/cc13x2_cc26x2" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/devices/cc13x2_cc26x2/rf_patches" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/devices/cc13x2_cc26x2/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/kernel/tirtos/packages" --include_path="C:/ti/xdctools_3_51_01_18_core/packages" --include_path="C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS/include" --define=DeviceFamily_CC26X2 -g --c99 --gcc --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="ROM/$(basename $(<F)).d_raw" --obj_directory="ROM" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

ROM/rom_init.obj: C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/rom/agama_r1/rom_init.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS/bin/armcl" --cmd_file="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_simple_central_cc2652rblp_stack_library/TOOLS/defines/ble5_simple_central_cc2652rblp_stack_library_FlashROM_Library.opt" --cmd_file="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/config/build_components.opt" --cmd_file="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/config/factory_config.opt" --cmd_file="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_simple_central_cc2652rblp_stack_library/TOOLS/build_config.opt"  -mv7M4 --code_state=16 -me -O4 --opt_for_speed=0 --include_path="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_simple_central_cc2652rblp_stack_library/Startup2" --include_path="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_simple_central_cc2652rblp_stack_library" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/controller/cc26xx/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/rom" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/common/cc26xx" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/common/cc26xx/npi/stack" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/icall/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/hal/src/target/_common" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/hal/src/target/_common/cc26xx" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/hal/src/target" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/hal/src/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/icall/src/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/npi/src" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/osal/src/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/services/src/aes/cc26xx" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/services/src/nv/cc26xx" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/services/src/nv" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/services/src/saddr" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/devices/cc13x2_cc26x2" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/devices/cc13x2_cc26x2/rf_patches" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/devices/cc13x2_cc26x2/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/kernel/tirtos/packages" --include_path="C:/ti/xdctools_3_51_01_18_core/packages" --include_path="C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS/include" --define=DeviceFamily_CC26X2 -g --c99 --gcc --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="ROM/$(basename $(<F)).d_raw" --obj_directory="ROM" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


