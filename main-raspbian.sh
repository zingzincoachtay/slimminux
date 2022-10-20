#!/bin/bash
sudo hostname blackberry

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
