#!/bin/bash
sudo apt-get update && sudo apt-get dist-upgrade -y

sudo apt-get install -y  vim


## temporary
sudo apt-get install -y  dnsmasq

# https://vitux.com/4-ways-to-install-opera-browser-in-debian-10/
#sudo apt install snapd
#snap install opera

### pihole
#curl -sSL https://install.pi-hole.net | bash

### pivpn
#curl -L https://install.pivpn.io | bash

### raspap-webgui
#curl -sL https://install.raspap.com | bash
### IP address: 10.3.141.1
###   Username: admin
###   Password: secret
### DHCP range: 10.3.141.50 to 10.3.141.255
###   SSID: raspi-webgui
###   Password: ChangeMe
