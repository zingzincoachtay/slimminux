#!/bin/bash

# linaro probably don't have libreoffice suite
sudo apt-get purge -y libreoffice* thunderbird*

./main-raspbian.sh
./main-tinkerboard.sh
./main-jetpack.sh

sudo apt-get update && sudo apt-get dist-upgrade -y

sudo apt-get autoremove && sudo apt-get autoclean
