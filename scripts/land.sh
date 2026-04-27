#!/bin/bash
# based on the instructions from edk2-platform
set -e
. ./scripts/build_common.sh
# not actually GCC5; it's GCC7 on Ubuntu 18.04.
GCC5_ARM_PREFIX=arm-linux-gnueabi- build -j$(nproc) -s -n 0 -a ARM -t GCC5 -p MSM8909Pkg/Devices/land.dsc
./scripts/build_bootshim.sh
cat BootShim/BootShim.bin workspace/Build/MSM8909Pkg/DEBUG_GCC5/FV/MSM8909PKG_UEFI.fd > workspace/bootpayload.bin
gzip -c < workspace/bootpayload.bin > workspace/Image.gz
cat workspace/Image.gz device_specific/land.dtb > workspace/Image.gz-dtb
./scripts/mkbootimg --kernel ./workspace/Image.gz-dtb --ramdisk ./device_specific/ramdisk --base 0x80000000 --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --pagesize 2048 --header_version 0 --cmdline "" -o boot-land.img
