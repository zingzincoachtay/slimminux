#!/bin/bash
sudo hostname asus
if [ ! -f ~/Desktop/wpa_supplicant.0 ]; then
  bash ./ready.sh
else
  sudo cat tinkerboard-wpa_supplicant.0 > /etc/wpa_supplicant.conf
fi
# Tinkerboard
sudo apt-get purge -y thunderbird*

sudo apt-get autoremove && sudo apt-get autoclean
