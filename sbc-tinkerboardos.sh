#!/bin/bash
./main.sh

#sudo apt-get purge wolfram-engine gpicview chromium-browser* omxplayer qpdfview* vlc*
sudo apt-get purge bluej geany* greenfoot scratch* sonic*
sudo apt-get purge minecraft-pi

sudo apt-get autoremove && sudo apt-get autoclean
