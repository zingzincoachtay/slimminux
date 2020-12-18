#!/bin/bash
sudo hostname nano
cp --backup=numbered /etc/wpa_supplicant.conf ~/Desktop/
#sudo cat main.01.wpa_supplicant >> /etc/wpa_supplicant.conf

bash ./main.sh
# NVIDIA Jetpack
sudo apt-get purge -y thunderbird*

sudo apt-get autoremove && sudo apt-get autoclean
