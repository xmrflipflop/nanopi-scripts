#!/bin/bash

# enable i2c, disable ipv6
sudo armbian-config

# Set up display
# Pre-reqs for pillow
# See https://github.com/python-pillow/Pillow/blob/c28bf86b7e752a9257a0d4451ca878c1385db15c/depends/ubuntu_14.04.sh
#     Pillow/depends

sudo apt-get update
sudo apt-get -y install python-dev python-setuptools cmake
sudo apt-get -y install libtiff5-dev libjpeg8-dev zlib1g-dev \
    libfreetype6-dev liblcms2-dev libwebp-dev tcl8.6-dev tk8.6-dev \
    python-tk python3-tk libharfbuzz-dev libfribidi-dev

# Set up the actual code
PROJECTS_DIR=~/projects
mkdir -p ${PROJECTS_DIR}
cd ${PROJECTS_DIR}
git clone --recursive https://github.com/friendlyarm/NanoHatOLED.git
cd NanoHatOLED
sudo -H ./install.sh


