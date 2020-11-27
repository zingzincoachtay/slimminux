#!/bin/bash

sudo apt-get install -y  vim fdupes
sudo apt-get install -y  exfat-fuse exfat-utils zfsutils-linux ntfs-3g #  afs  zeroconf?
sudo apt-get install -y  samba xrdp dnsmasq nitroshare
sudo apt-get install -y  ffmpeg youtube-dl atom

#sudo apt-get upgrade -y && sudo apt-get autoremove && sudo apt-get autoclean
sudo apt-get autoremove && sudo apt-get autoclean

# https://vitux.com/4-ways-to-install-opera-browser-in-debian-10/
sudo apt install snapd
snap install opera
