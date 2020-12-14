#!/bin/bash
sudo hostname blackberry
if [ -f /etc/wpa_supplicant/wpa_supplicant.conf ]; then
  # If the backup of the configuration file does not exist, cp
  # If the latest backup of the configuration file is different from the current configuration file, cp --backup=numbered
  [ ! -f ~/Desktop/wpa_supplicant.0 || $(cmp -s "/etc/wpa_supplicant/wpa_supplicant.conf" "~/Desktop/wpa_supplicant.0")==1 ] && cp -backup=numbered "/Volumes/boot/wpa_supplicant.conf" "~/Desktop/wpa_supplicant.0"
  # If neither file exists (null byte), would `cmp` return a match?
  #[ $(cmp -s "/Volumes/boot/wpa_supplicant.conf" "~/Desktop/wpa_supplicant.0")==1 ] && cp "/Volumes/boot/wpa_supplicant.conf" "~/Desktop/wpa_supplicant.0"
fi
sudo cat raspbian-wpa_supplicant.0 main-01.wpa_supplicant > /etc/wpa_supplicant/wpa_supplicant.conf

bash ./main.sh
### Purge (with any config files) some of the common pre-installed packages
###     on a persistent live Linux USB image. Start points are referred from here:
### https://github.com/RPi-Distro/pi-gen
## Stage 1 - truly minimal system
## >> extras from below <<
## Stage 2 - lite system
## ... found '03-accept-mathematica-eula' in Stage 2
## Stage 3 - desktop system
## Stage 4 - normal Raspbian system
## Stage 5 - Raspbian Full image
# Raspbian Common (lite)
# None
# Raspbian Desktop
    sudo apt-get purge -y qpdfview omxplayer
#raspberrypi-artwork
# Raspbian
sudo apt-get purge -y python3-pygame python-pygame python3-pgzero
sudo apt-get purge -y thonny dillo geany
# Raspbian Full
    sudo apt-get purge -y mu-editor sonic-pi scratch nuscratch scratch2 scratch3 smartsim
    sudo apt-get purge -y minecraft-pi python-minecraftpi python-picraft python3-picraft
    sudo apt-get purge -y python-sense-emu sense-emu-tools python-sense-emu-doc
    sudo apt-get purge -y wolfram-engine claws-mail greenfoot-unbundled bluej nodered
#realvnc-vnc-viewer
    sudo apt-get purge -y python-games code-the-classics
    sudo apt-get purge -y libreoffice-pi libreoffice-help-en-gb libreoffice-l10n-en-gb
sudo apt-get purge  galculator  gpicview
#did qpdfview use ruby2.5???

sudo apt-get autoremove && sudo apt-get autoclean
