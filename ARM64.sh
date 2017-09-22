#!/bin/bash

###############################################################################
# Welcome TO The Kanged Build Script  :)                                      #
#                                                                             #

#exportstuff
echo "Installing Libs"
sudo apt install ccache
sudo apt install libncurses-dev
echo "Cleaning and exporting"
export ARCH=arm64
export CROSS_COMPILE=/media/ubuntu/Windows7_OS/Kernel/aarch64/bin/aarch64-gnu-linux-android-
make clean && make mrproper
echo "Exporting User And Host"
export KBUILD_BUILD_USER="VarunVaishnav"
export KBUILD_BUILD_HOST="TheScorpion"

#Pointtheconfigs
echo "making defconfig"
make A6000_defconfig

#Build
echo "Compiling ThePossessedKernel"
make -j4 && echo hello re
/media/ubuntu/Windows7_OS/Kernel/TheNewBeginningARM64.WT86518-cm-14.1/scripts/dtbToolCM -2 -o /media/ubuntu/Windows7_OS/Kernel/TheNewBeginningARM64.WT86518-cm-14.1/arch/arm/boot/dt.img -s 2048 -p /media/ubuntu/Windows7_OS/Kernel/TheNewBeginningARM64.WT86518-cm-14.1/scripts/dtc/ /media/ubuntu/Windows7_OS/Kernel/TheNewBeginningARM64.WT86518-cm-14.1/arch/arm/boot/dts/
echo "Now GTFO bish"
echo -e "$yellow Build completed in $(($DIFF / 60)) minute(s) and $(($DIFF % 60)) seconds.$nocol"
