#!/bin/bash
#https://raspi.tv/2016/how-to-free-up-some-space-on-your-raspbian-sd-card-remove-wolfram-libreoffice
# get a list of installed packages (with their size) sorted by size:
# dpkg-query -Wf '${Installed-Size}\t${Package}\n' | sort -nr | more
# dpkg-query -Wf '${Installed-Size}\t${Package}\t${Priority}\n' | egrep '\s(optional|extra)' | cut -f 1,2 | sort -nr | less

#sudo apt-get purge nodered python-pygame python3-pygame
./main.sh
#sudo apt-get purge wolfram-engine gpicview chromium-browser* omxplayer qpdfview* vlc*
sudo apt-get purge bluej geany* greenfoot scratch* sonic*
sudo apt-get purge minecraft-pi
#sound-theme* FreeDesktop

sudo apt-get autoremove && sudo apt-get autoclean