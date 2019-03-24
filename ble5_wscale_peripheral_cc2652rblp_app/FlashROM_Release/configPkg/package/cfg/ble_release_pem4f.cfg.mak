# invoke SourceDir generated makefile for ble_release.pem4f
ble_release.pem4f: .libraries,ble_release.pem4f
.libraries,ble_release.pem4f: package/cfg/ble_release_pem4f.xdl
	$(MAKE) -f C:\ti\ccsv8workspace\CC2652RBv310_Launchpad\ble5_wscale_peripheral_cc2652rblp_app\TOOLS/src/makefile.libs

clean::
	$(MAKE) -f C:\ti\ccsv8workspace\CC2652RBv310_Launchpad\ble5_wscale_peripheral_cc2652rblp_app\TOOLS/src/makefile.libs clean

