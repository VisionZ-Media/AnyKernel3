# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=VisionZ Kernel by AuxXxilium
do.devicecheck=1
do.modules=0
do.cleanup=1
do.cleanuponabort=0
device.name1=coral
device.name2=flame
supported.versions=11
supported.patchlevels=2020-06 -
'; } # end properties

# shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=1;
ramdisk_compression=auto;

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;

## AnyKernel install
dump_boot;

## VisionZ init
backup_file init.rc
insert_line init.rc "import /init.casuals.rc" after "import .*\.rc" "import /init.casuals.rc"

write_boot;
## end install
