#!/bin/bash
#cd ~/Documents/ && git clone https://github.com/zingzincoachtay/slimminux
#cd ~/Documents/ && git clone https://github.com/trekhleb/javascript-algorithms
#cd ~/Documents/ && git clone https://github.com/zingzincoachtay/tinyscript_python
#cd ~/Documents/ && git clone https://github.com/coherentgraphics/cpdf-binaries

# Purge (with any config files) some common pre-installed packages from persistent Live USB
# Common
sudo apt-get -y purge libreoffice* claws-mail* dillo epiphany-browser* thunderbird*
#sudo apt-get purge  epiphany-browser* thunderbird*
# check by lsb_release? lsb_release not available in Raspbian Buster initially

sudo apt-get autoremove && sudo apt-get autoclean
