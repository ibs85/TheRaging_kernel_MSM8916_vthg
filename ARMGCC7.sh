#!/bin/bash

###############################################################################
# Welcome TO The Kanged Build Script  :)                                      #
#                                                                             #

#exportstuff
echo "Installing Libs"
sudo apt install ccache
sudo apt install libncurses-dev
echo "Exporting Architecture and TC"
export ARCH=arm
export CROSS_COMPILE=/media/ubuntu/Windows7_OS/Kernel/arm-gcc7/bin/arm-gnu-linux-androideabi-
echo "Cleaning ur shit"
make clean && make mrproper
echo "Export User And Host"
export KBUILD_BUILD_USER="VarunVaishnav"
export KBUILD_BUILD_HOST="TheScorpion"

#Pointtheconfigs
echo "making defconfig"
make a6000_defconfig -j4

#Build
echo "Compiling ThePossessedKernel"
make -j4
echo "Generating DTB"
/media/ubuntu/Windows7_OS/Kernel/TheNewBeginningARM64.WT86518-cm-14.1/scripts/dtbToolCM -2 -o /media/ubuntu/Windows7_OS/Kernel/TheNewBeginningARM64.WT86518-cm-14.1/arch/arm/boot/dt.img -s 2048 -p /media/ubuntu/Windows7_OS/Kernel/TheNewBeginningARM64.WT86518-cm-14.1/scripts/dtc/ /media/ubuntu/Windows7_OS/Kernel/TheNewBeginningARM64.WT86518-cm-14.1/arch/arm/boot/dts/
echo "Now GTFO bish"

