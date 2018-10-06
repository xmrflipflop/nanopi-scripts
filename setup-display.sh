#!/bin/bash

# enable i2c, disable ipv6
sudo armbian-config

# Set up the actual code
PROJECTS_DIR=~/projects
mkdir -p ${PROJECTS_DIR}
cd ${PROJECTS_DIR}
git clone --recursive https://github.com/xmrflipflop/NanoHatOLED.git
cd NanoHatOLED
sudo -H ./install.sh


