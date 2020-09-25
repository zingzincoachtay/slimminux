#!/bin/bash
#cd ~/Documents/ && git clone https://github.com/zingzincoachtay/slimminux
#cd ~/Documents/ && git clone https://github.com/trekhleb/javascript-algorithms
#cd ~/Documents/ && git clone https://github.com/zingzincoachtay/tinyscript_python
#cd ~/Documents/ && git clone https://github.com/coherentgraphics/cpdf-binaries

sudo apt-get update
# Purge (with any config files) some common pre-installed packages from persistent Live USB
sudo apt-get purge libreoffice* claws-mail* dillo epiphany-browser* thunderbird*
sudo apt-get purge game* penguinspuzzle
#sudo apt-get purge lxde*
#sudo apt-get purge xfce*
sudo apt-get install -y vim fdupes ffmpeg youtube-dl samba exfat-fuse exfat-utils
#if [ ! command -v curl &> /dev/null ]; then
#  sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
#  sudo chmod a+rx /usr/local/bin/youtube-dl
#else
#  sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
#  sudo chmod a+rx /usr/local/bin/youtube-dl
#fi

#sudo apt-get upgrade -y && sudo apt-get autoremove && sudo apt-get autoclean
sudo apt-get autoremove && sudo apt-get autoclean
