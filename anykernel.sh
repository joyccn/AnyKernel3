### AnyKernel3 Ramdisk Mod Script
## Prism Kernel for ASUS Zenfone Max Pro M2 (X01BD/X01BDA)

### AnyKernel setup
# global properties
properties() { '
kernel.string=Prism Kernel for ASUS Zenfone Max Pro M2 by Joy
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
ui_print "================================================";
ui_print "              PRISM KERNEL";
ui_print "        ASUS Zenfone Max Pro M2";
ui_print "              X01BD / X01BDA";
ui_print "================================================";
ui_print " Maintainer : Joy";
ui_print " Package    : AnyKernel3";
ui_print " Target     : /dev/block/by-name/boot";
ui_print " ";
ui_print " Flashing boot image while preserving ramdisk...";
ui_print " ";

# boot install
dump_boot;

# No generic ramdisk tweaks are applied here. Prism should only replace the
# kernel image unless a device-specific ramdisk change is added deliberately.

write_boot;
## end boot install
