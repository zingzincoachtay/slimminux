#!/bin/bash

# check by lsb_release? lsb_release not available in Raspbian Buster initially

function configure2 {
  # wpa_supplicant will always exist
  [ ! -f $1 ] && sudo cat -ready.wpa_supplicant > $1
  # Does not check for the duplicate copies
  cp --backup=numbered $1 $2
}
function configure {
  # If wpa_supplicant exists, cp --backup=numbered
  # Does not check for the duplicate copies
  if [ ! -f $1 ]; then
    sudo cat -ready.wpa_supplicant > $1
  else
    cp --backup=numbered $1 $2
    sudo cat -ready.wpa_supplicant >> $1
  fi
  # If neither file exists (null byte), would `cmp` return a match?
  #[ $(cmp -s "/Volumes/boot/wpa_supplicant.conf" "~/Desktop/wpa_supplicant.0")==1 ] && cp "/Volumes/boot/wpa_supplicant.conf" "~/Desktop/wpa_supplicant.0"
}

# raspbian
configure /etc/wpa_supplicant/wpa_supplicant.conf ~/Desktop/wpa_supplicant.0
# jetson
configure /etc/wpa_supplicant.conf ~/Desktop/wpa_supplicant.0
