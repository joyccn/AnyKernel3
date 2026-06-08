### AnyKernel3 Ramdisk Mod Script
## Prism Kernel for ASUS Zenfone Max Pro M2 (X01BD/X01BDA)

### AnyKernel setup
# global properties
properties() { '
kernel.string=Prism | X01BD
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=X01BD
device.name2=X01BDA
device.name3=ASUS_X01BD
device.name4=ASUS_X01BDA
device.name5=
supported.versions=
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties


### AnyKernel install
## boot files attributes
boot_attributes() {
set_perm_recursive 0 0 755 644 $RAMDISK/*;
set_perm_recursive 0 0 750 750 $RAMDISK/init* $RAMDISK/sbin;
} # end attributes

# boot shell variables
BLOCK=/dev/block/by-name/boot;
IS_SLOT_DEVICE=0;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;

ui_print " ";
ui_print "  __ __  ________________  ______  ____  _________ __  ___   ";
ui_print "  __/ // /_/ ___/_  __/   \ \/ / __ \/ __ \/  _/ ___//  |/  /";
ui_print " /_  _  __/\__ \ / / / /| |\  / /_/ / /_/ // / \__ \/ /|_/ / ";
ui_print "/_  _  __/___/ // / / ___ |/ / ____/ _, _// / ___/ / /  / /  ";
ui_print " /_//_/  /____//_/ /_/  |_/_/_/   /_/ |_/___//____/_/  /_/   ";
ui_print " ";
ui_print " Flashing Prism Kernel...";
ui_print " ";

# boot install
dump_boot;

# No generic ramdisk tweaks are applied here. Prism should only replace the
# kernel image unless a device-specific ramdisk change is added deliberately.

write_boot;
## end boot install
