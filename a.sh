#!/bin/bash

echo "Generating DTB"
/media/ubuntu/Windows7_OS/Kernel/TheNewBeginningARM64.WT86518-cm-14.1/scripts/dtbToolCM -2 -o /media/ubuntu/Windows7_OS/Kernel/TheNewBeginningARM64.WT86518-cm-14.1/arch/arm/boot/dt.img -s 2048 -p /media/ubuntu/Windows7_OS/Kernel/TheNewBeginningARM64.WT86518-cm-14.1/scripts/dtc/ /media/ubuntu/Windows7_OS/Kernel/TheNewBeginningARM64.WT86518-cm-14.1/arch/arm/boot/dts/
