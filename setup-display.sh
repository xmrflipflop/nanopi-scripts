#!/bin/bash

# enable i2c, disable ipv6
sudo armbian-config

# Set up display
# Pre-reqs
sudo apt-get install libjpeg-dev zlib1g-dev
sudo apt-get install python2.7 -y
sudo apt-get install python-setuptools

PROJECTS_DIR=~/projects
mkdir -p ${PROJECTS_DIR}
cd ${PROJECTS_DIR}
git clone --recursive https://github.com/friendlyarm/NanoHatOLED.git
cd NanoHatOLED
sudo -H ./install.sh


