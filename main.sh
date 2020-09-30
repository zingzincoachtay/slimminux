#!/bin/bash
#cd ~/Documents/ && git clone https://github.com/zingzincoachtay/slimminux
#cd ~/Documents/ && git clone https://github.com/trekhleb/javascript-algorithms
#cd ~/Documents/ && git clone https://github.com/zingzincoachtay/tinyscript_python
#cd ~/Documents/ && git clone https://github.com/coherentgraphics/cpdf-binaries

sudo apt-get update
# Purge (with any config files) some common pre-installed packages from persistent Live USB
sudo apt-get purge libreoffice* claws-mail* dillo epiphany-browser* thunderbird*
# check lsb_release?

sudo apt-get install -y  vim fdupes
sudo apt-get install -y  exfat-fuse exfat-utils zfsutils-linux ntfs-3g #  afs  zeroconf?
sudo apt-get install -y  samba xrdp dnsmasq
sudo apt-get install -y  ffmpeg youtube-dl

#sudo apt-get upgrade -y && sudo apt-get autoremove && sudo apt-get autoclean
sudo apt-get autoremove && sudo apt-get autoclean

# https://vitux.com/4-ways-to-install-opera-browser-in-debian-10/
sudo apt install snapd
snap install opera
