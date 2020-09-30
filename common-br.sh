#!/bin/bash
# https://pimylifeup.com/raspberry-pi-wifi-bridge/

sudo apt-get update && sudo apt-get install dnsmasq

[ ! -f /etc/wpa_supplicant/wpa_supplicant.conf.orig ] && sudo cp /etc/wpa_supplicant/wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf.orig

sudo vi /etc/wpa_supplicant/wpa_supplicant.conf

# https://www.reddit.com/r/pihole/comments/9qnjjz/pihole_wireless_bridge/
