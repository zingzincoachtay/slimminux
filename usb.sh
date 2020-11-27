#!/bin/bash
#https://tecadmin.net/get-current-date-and-time-in-bash/
dpkg-query -Wf '${Installed-Size}\t${Package}\n' | sort -nr > ~/Desktop/dpkgEssential_`date +"%Y-%m-%d"`.txt
dpkg-query -Wf '${Installed-Size}\t${Package}\t${Priority}\n' | egrep '\s(optional|extra)' | cut -f 1,2 | sort -nr > > ~/Desktop/dpkgNonEssential_`date +"%Y-%m-%d"`.txt

sudo hostname blackberry
cp --backup=numbered /etc/wpa_supplicant/wpa_supplicant.conf ~/Desktop/
sudo cp main.01.wpa_supplicant /etc/wpa_supplicant/wpa_supplicant.conf

git config --global user.name "Tay"
git config --global user.email "kotei.aoki@gmail.com"
