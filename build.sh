#!/bin/bash

export ARCH=arm
export CROSS_COMPILE="/home/sattarvoybek/android_prebuilt_toolchains/arm-linux-androideabi-4.8/bin/arm-linux-androideabi-"


make msm8926-nx404h_defconfig
make -j8

./dtbToolCM -o ./out/dt.img -s 2048 -p ./scripts/dtc/ ./arch/arm/boot/

cp ./arch/arm/boot/zImage ./out/zImage

