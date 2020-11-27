#!/bin/bash
#https://raspi.tv/2016/how-to-free-up-some-space-on-your-raspbian-sd-card-remove-wolfram-libreoffice
# get a list of installed packages (with their size) sorted by size:
# dpkg-query -Wf '${Installed-Size}\t${Package}\n' | sort -nr | more
# dpkg-query -Wf '${Installed-Size}\t${Package}\t${Priority}\n' | egrep '\s(optional|extra)' | cut -f 1,2 | sort -nr | less

bash ./main.sh
sudo apt-get purge -y qpdfview* galculator omxplayer gpicview
sudo apt-get purge -y scratch* nuscratch sonic-pi* bluej* geany* thonny mu-editor greenfoot
#sudo apt-get purge -y nodered
sudo apt-get purge -y minecraft-pi python-pygame python3-pygame python-games
sudo apt-get purge -y wolfram-engine

sudo apt-get autoremove && sudo apt-get autoclean
