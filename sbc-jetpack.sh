#!/bin/bash
sudo hostname jetson
cp --backup=numbered /etc/wpa_supplicant.conf ~/Desktop/
sudo cat main.01.wpa_supplicant >> /etc/wpa_supplicant/wpa_supplicant.conf

bash ./main.sh
#sudo apt-get purge wolfram-engine gpicview chromium-browser* omxplayer qpdfview* vlc*
sudo apt-get purge bluej geany* greenfoot scratch* sonic*
sudo apt-get purge minecraft-pi

sudo apt-get autoremove && sudo apt-get autoclean
