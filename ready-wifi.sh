#!/bin/bash

if [ -f /etc/wpa_supplicant/wpa_supplicant.conf ]; then
  # If the backup of the configuration file does not exist, cp
  # If the latest backup of the configuration file is different from the current configuration file, cp --backup=numbered
  [ ! -f ~/Desktop/wpa_supplicant.0 || $(cmp -s "/etc/wpa_supplicant/wpa_supplicant.conf" "~/Desktop/wpa_supplicant.0")==1 ] && cp -backup=numbered "/etc/wpa_supplicant/wpa_supplicant.conf" "~/Desktop/wpa_supplicant.0"
  # If neither file exists (null byte), would `cmp` return a match?
  #[ $(cmp -s "/Volumes/boot/wpa_supplicant.conf" "~/Desktop/wpa_supplicant.0")==1 ] && cp "/Volumes/boot/wpa_supplicant.conf" "~/Desktop/wpa_supplicant.0"
else
  sudo cat 0-raspbian-wpa_supplicant.0 0ready.wpa_supplicant > /etc/wpa_supplicant/wpa_supplicant.conf
fi

if [ -f /etc/wpa_supplicant.conf ]; then
  # If the backup of the configuration file does not exist, cp
  # If the latest backup of the configuration file is different from the current configuration file, cp --backup=numbered
  [ ! -f ~/Desktop/wpa_supplicant.0 || $(cmp -s "/etc/wpa_supplicant.conf" "~/Desktop/wpa_supplicant.0")==1 ] && cp -backup=numbered "/etc/wpa_supplicant.conf" "~/Desktop/wpa_supplicant.0"
  # If neither file exists (null byte), would `cmp` return a match?
  #[ $(cmp -s "/Volumes/boot/wpa_supplicant.conf" "~/Desktop/wpa_supplicant.0")==1 ] && cp "/Volumes/boot/wpa_supplicant.conf" "~/Desktop/wpa_supplicant.0"
else
  sudo cat 0ready.wpa_supplicant > /etc/wpa_supplicant.conf
fi

if [ ! -f ~/Desktop/wpa_supplicant.0 ]; then
  bash ./ready.sh
else
  sudo cat 0ready.wpa_supplicant >> /etc/wpa_supplicant.conf
fi
