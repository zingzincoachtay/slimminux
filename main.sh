#!/bin/bash
#cd ~/Documents/ && git clone https://github.com/zingzincoachtay/slimminux
#cd ~/Documents/ && git clone https://github.com/trekhleb/javascript-algorithms

# Purge some common pre-installed packages from persistent Live USB
sudo apt-get purge libreoffice* epiphany* claws-mail* thunderbird*
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install vim fdupes ffmpeg exfat-fuse exfat-utils
#if [ ! command -v curl &> /dev/null ]; then
#  sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
#  sudo chmod a+rx /usr/local/bin/youtube-dl
#else
#  sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
#  sudo chmod a+rx /usr/local/bin/youtube-dl
#fi
sudo apt-get install youtube-dl gparted
sudo apt-get autoremove
