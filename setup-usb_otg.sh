#!/bin/bash

# This script inserts the dtb/usr_sun8i-h3-usb_otg.dts overlay
# which enables usb_otg in the device tree.
# Used to allow g_serial to work properly
# Notes:
# 	https://docs.armbian.com/User-Guide_Allwinner_overlays/
# 	https://vjordan.info/log/fpga/nanopi-neo-usb-otg-with-armbian-mainline-4x-kernel.htm
#
# Last used on
# ARMBIAN 5.60 stable Ubuntu 18.04.1 LTS 4.14.70-sunxi
# Linux nanopineo 4.14.70-sunxi #265 SMP Wed Sep 19 10:01:19 CEST 2018 armv7l armv7l armv7l GNU/Linux

sudo armbian-add-overlay dtb/usr_sun8i-h3-usb_otg.dts

