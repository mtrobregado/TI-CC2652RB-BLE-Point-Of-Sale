#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#
#  target compatibility key = ti.targets.arm.elf.M4F{1,0,18.1,3
#
ifeq (,$(MK_NOGENDEPS))
-include package/cfg/ble_release_pem4f.oem4f.dep
package/cfg/ble_release_pem4f.oem4f.dep: ;
endif

package/cfg/ble_release_pem4f.oem4f: | .interfaces
package/cfg/ble_release_pem4f.oem4f: package/cfg/ble_release_pem4f.c package/cfg/ble_release_pem4f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4f $< ...
	$(ti.targets.arm.elf.M4F.rootDir)/bin/armcl -c  -mv7M4 --code_state=16 -me -Ooff --opt_for_speed=0 --include_path="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app" --include_path="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app/Application" --include_path="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app/Startup" --include_path="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app/PROFILES" --include_path="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app/Include" --include_path="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app/GPIO_Interface" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/controller/cc26xx/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/rom" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/common/cc26xx" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/icall/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/target" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/hal/src/target/_common" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/hal/src/target/_common/cc26xx" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/hal/src/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/heapmgr" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/icall/src/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/osal/src/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/services/src/saddr" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/services/src/sdata" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/services/src/nv" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/services/src/nv/cc26xx" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/devices/cc13x2_cc26x2" --include_path="C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS/include" --define=DeviceFamily_CC26X2 -g --c99 --gcc --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi  -qq -pdsw225 -ms --fp_mode=strict --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f   -Dxdc_cfg__xheader__='"configPkg/package/cfg/ble_release_pem4f.h"'  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_18_1_3 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/cfg -fr=./package/cfg -fc $<
	$(MKDEP) -a $@.dep -p package/cfg -s oem4f $< -C   -mv7M4 --code_state=16 -me -Ooff --opt_for_speed=0 --include_path="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app" --include_path="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app/Application" --include_path="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app/Startup" --include_path="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app/PROFILES" --include_path="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app/Include" --include_path="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app/GPIO_Interface" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/controller/cc26xx/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/rom" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/common/cc26xx" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/icall/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/target" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/hal/src/target/_common" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/hal/src/target/_common/cc26xx" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/hal/src/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/heapmgr" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/icall/src/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/osal/src/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/services/src/saddr" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/services/src/sdata" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/services/src/nv" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/services/src/nv/cc26xx" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/devices/cc13x2_cc26x2" --include_path="C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS/include" --define=DeviceFamily_CC26X2 -g --c99 --gcc --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi  -qq -pdsw225 -ms --fp_mode=strict --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f   -Dxdc_cfg__xheader__='"configPkg/package/cfg/ble_release_pem4f.h"'  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_18_1_3 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/cfg -fr=./package/cfg
	-@$(FIXDEP) $@.dep $@.dep
	
package/cfg/ble_release_pem4f.oem4f: export C_DIR=
package/cfg/ble_release_pem4f.oem4f: PATH:=$(ti.targets.arm.elf.M4F.rootDir)/bin/;$(PATH)
package/cfg/ble_release_pem4f.oem4f: Path:=$(ti.targets.arm.elf.M4F.rootDir)/bin/;$(PATH)

package/cfg/ble_release_pem4f.sem4f: | .interfaces
package/cfg/ble_release_pem4f.sem4f: package/cfg/ble_release_pem4f.c package/cfg/ble_release_pem4f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4f -n $< ...
	$(ti.targets.arm.elf.M4F.rootDir)/bin/armcl -c -n -s --symdebug:none -mv7M4 --code_state=16 -me -Ooff --opt_for_speed=0 --include_path="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app" --include_path="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app/Application" --include_path="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app/Startup" --include_path="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app/PROFILES" --include_path="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app/Include" --include_path="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app/GPIO_Interface" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/controller/cc26xx/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/rom" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/common/cc26xx" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/icall/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/target" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/hal/src/target/_common" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/hal/src/target/_common/cc26xx" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/hal/src/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/heapmgr" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/icall/src/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/osal/src/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/services/src/saddr" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/services/src/sdata" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/services/src/nv" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/services/src/nv/cc26xx" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/devices/cc13x2_cc26x2" --include_path="C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS/include" --define=DeviceFamily_CC26X2 -g --c99 --gcc --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi  -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f   -Dxdc_cfg__xheader__='"configPkg/package/cfg/ble_release_pem4f.h"'  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_18_1_3 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/cfg -fr=./package/cfg -fc $<
	$(MKDEP) -a $@.dep -p package/cfg -s oem4f $< -C  -n -s --symdebug:none -mv7M4 --code_state=16 -me -Ooff --opt_for_speed=0 --include_path="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app" --include_path="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app/Application" --include_path="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app/Startup" --include_path="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app/PROFILES" --include_path="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app/Include" --include_path="C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_wscale_peripheral_cc2652rblp_app/GPIO_Interface" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/controller/cc26xx/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/rom" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/common/cc26xx" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/icall/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/target" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/hal/src/target/_common" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/hal/src/target/_common/cc26xx" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/hal/src/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/heapmgr" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/icall/src/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/osal/src/inc" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/services/src/saddr" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/services/src/sdata" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/services/src/nv" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack/services/src/nv/cc26xx" --include_path="C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/devices/cc13x2_cc26x2" --include_path="C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS/include" --define=DeviceFamily_CC26X2 -g --c99 --gcc --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi  -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f   -Dxdc_cfg__xheader__='"configPkg/package/cfg/ble_release_pem4f.h"'  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_18_1_3 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/cfg -fr=./package/cfg
	-@$(FIXDEP) $@.dep $@.dep
	
package/cfg/ble_release_pem4f.sem4f: export C_DIR=
package/cfg/ble_release_pem4f.sem4f: PATH:=$(ti.targets.arm.elf.M4F.rootDir)/bin/;$(PATH)
package/cfg/ble_release_pem4f.sem4f: Path:=$(ti.targets.arm.elf.M4F.rootDir)/bin/;$(PATH)

clean,em4f ::
	-$(RM) package/cfg/ble_release_pem4f.oem4f
	-$(RM) package/cfg/ble_release_pem4f.sem4f

ble_release.pem4f: package/cfg/ble_release_pem4f.oem4f package/cfg/ble_release_pem4f.mak

clean::
	-$(RM) package/cfg/ble_release_pem4f.mak
