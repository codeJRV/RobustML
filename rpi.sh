#!/bin/sh

#  MacOS Mojave

# brew install qemu

export QEMU=$(which qemu-system-arm)
export TMP_DIR=./
export RPI_KERNEL=${TMP_DIR}/kernel-qemu-4.14.79-stretch
export RPI_FS=${TMP_DIR}/2018-11-13-raspbian-stretch-lite.img
export PTB_FILE=${TMP_DIR}/versatile-pb.dtb
export IMAGE_FILE=2018-11-13-raspbian-stretch-full.zip
export IMAGE=https://downloads.raspberrypi.org/raspbian_full_latest
export PORT=${1:-5022}

cd $TMP_DIR

#wget https://github.com/dhruvvyas90/qemu-rpi-kernel/blob/master/kernel-qemu-4.14.79-stretch?raw=true \
#        -O ${RPI_KERNEL}
#
#wget https://github.com/dhruvvyas90/qemu-rpi-kernel/raw/master/versatile-pb.dtb \
#        -O ${PTB_FILE}
#
#wget $IMAGE
#unzip $IMAGE_FILE


$QEMU -kernel ${RPI_KERNEL} \
	-cpu arm1176 -m 256 -M versatilepb \
	-dtb ${PTB_FILE} -no-reboot \
	-serial stdio -append "root=/dev/sda2 panic=1 rootfstype=ext4 rw" \
	-drive "file=${RPI_FS},index=0,media=disk,format=raw" \
    -net user,hostfwd=tcp::${PORT}-:22 -net nic \
