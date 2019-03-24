#
_XDCBUILDCOUNT = 
ifneq (,$(findstring path,$(_USEXDCENV_)))
override XDCPATH = C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source;C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/kernel/tirtos/packages;C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack
override XDCROOT = C:/ti/xdctools_3_51_01_18_core
override XDCBUILDCFG = ./config.bld
endif
ifneq (,$(findstring args,$(_USEXDCENV_)))
override XDCARGS = 
override XDCTARGETS = 
endif
#
ifeq (0,1)
PKGPATH = C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source;C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/kernel/tirtos/packages;C:/ti/simplelink_cc2652rb_ble_sdk_3_10_00_15/source/ti/ble5stack;C:/ti/xdctools_3_51_01_18_core/packages;..
HOSTOS = Windows
endif
