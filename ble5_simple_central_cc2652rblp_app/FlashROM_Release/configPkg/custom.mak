## THIS IS A GENERATED FILE -- DO NOT EDIT
.configuro: .libraries,em4f linker.cmd package/cfg/ble_release_pem4f.oem4f

# To simplify configuro usage in makefiles:
#     o create a generic linker command file name 
#     o set modification times of compiler.opt* files to be greater than
#       or equal to the generated config header
#
linker.cmd: package/cfg/ble_release_pem4f.xdl
	$(SED) 's"^\"\(package/cfg/ble_release_pem4fcfg.cmd\)\"$""\"C:/ti/ccsv8workspace/CC2652RBv310_Launchpad/ble5_simple_central_cc2652rblp_app/FlashROM_Release/configPkg/\1\""' package/cfg/ble_release_pem4f.xdl > $@
	-$(SETDATE) -r:max package/cfg/ble_release_pem4f.h compiler.opt compiler.opt.defs
