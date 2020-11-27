#!/bin/bash
sudo hostname blackberry
cp --backup=numbered /etc/wpa_supplicant/wpa_supplicant.conf ~/Desktop/
sudo cp main.01.wpa_supplicant /etc/wpa_supplicant/wpa_supplicant.conf

git config --global user.name "Tay"
git config --global user.email "kotei.aoki@gmail.com"
