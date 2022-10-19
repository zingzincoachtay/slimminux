#!/bin/bash
#sudo hostname nano

# NVIDIA Jetpack
sudo apt-get purge -y libreoffice* thunderbird*
sudo apt-get update && sudo apt-get dist-upgrade -y
sudo apt-get autoremove && sudo apt-get autoclean

#sudo apt-get install $(perl -ne 'print if /^[0] /'|perl -ne 's/^[0] /;print')
#xargs sudo apt-get install < pkglist

