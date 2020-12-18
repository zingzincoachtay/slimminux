#!/bin/bash
sudo hostname nano
if [ ! -f ~/Desktop/wpa_supplicant.0 ]; then
  bash ./ready.sh
else
  sudo cat 0ready.wpa_supplicant >> /etc/wpa_supplicant.conf
fi

# NVIDIA Jetpack
sudo apt-get purge -y thunderbird*

sudo apt-get autoremove && sudo apt-get autoclean
