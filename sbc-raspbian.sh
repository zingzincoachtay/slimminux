#!/bin/bash
#https://raspi.tv/2016/how-to-free-up-some-space-on-your-raspbian-sd-card-remove-wolfram-libreoffice
# get a list of installed packages (with their size) sorted by size:
# dpkg-query -Wf '${Installed-Size}\t${Package}\n' | sort -nr | more
# dpkg-query -Wf '${Installed-Size}\t${Package}\t${Priority}\n' | egrep '\s(optional|extra)' | cut -f 1,2 | sort -nr | less

#sudo apt-get purge nodered python-pygame python3-pygame
./main.sh
#sudo apt-get purge wolfram-engine chromium-browser* vlc*
sudo apt-get purge gpicview omxplayer qpdfview*
sudo apt-get purge bluej geany* greenfoot scratch* sonic*
sudo apt-get purge minecraft-pi
#sound-theme* FreeDesktop

sudo apt-get autoremove && sudo apt-get autoclean

# https://www.raspberrypistarterkits.com/guide/raspberry-pi-hdmi-not-working/

# https://vitux.com/4-ways-to-install-opera-browser-in-debian-10/
sudo apt install snapd
snap install opera
