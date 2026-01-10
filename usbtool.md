* USB Mapping:
	- Use USBToolBox tool to map USB ports
	- add create UTBMap.kext into the EFI\OC\Kexts
	- Remove UTBDefault.kext in the EFI\OC\Kexts
	- Edit config.plist
		- use ProperTree to open your config.plist
		- Run OC Snapshot by pressing command/Ctrl + R
		- If you have more than 15 ports on a single controller enable the XhciPortLimit Patch
		- save the file when finished