#!/bin/bash
sudo apt-get update && sudo apt-get dist-upgrade -y

sudo apt-get install -y  vim

## temporary >>
sudo apt-get install -y  dnsmasq
## temporary <<

if false; then
  perl -ne 'print if !/^#/ || !/^$/' ./a-admin.0 | xargs sudo apt-get install
#  perl -ne 'print if !/^#/ || !/^$/' ./a-admin.0 | xargs -n 1 sudo apt-get install -y
fi

if false; then
  perl -ne 'print if !/^#/ || !/^$/' ./a-av.0 | xargs sudo apt-get install
#  perl -ne 'print if !/^#/ || !/^$/' ./a-admin.0 | xargs -n 1 sudo apt-get install -y
fi

if false; then
  perl -ne 'print if !/^#/ || !/^$/' ./a-network.0 | xargs sudo apt-get install
#  perl -ne 'print if !/^#/ || !/^$/' ./a-admin.0 | xargs -n 1 sudo apt-get install -y
fi

if false; then
  perl -ne 'print if !/^#/ || !/^$/' ./a-theatre.0 | xargs sudo apt-get install
#  perl -ne 'print if !/^#/ || !/^$/' ./a-admin.0 | xargs -n 1 sudo apt-get install -y
fi

#if [ ! command -v curl &> /dev/null ]; then
#  sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
#  sudo chmod a+rx /usr/local/bin/youtube-dl
#else
#  sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
#  sudo chmod a+rx /usr/local/bin/youtube-dl
#fi

# https://vitux.com/4-ways-to-install-opera-browser-in-debian-10/
#2
#wget -qO- https://deb.opera.com/archive.key | sudo apt-key add –
#sudo add-apt-repository "deb [arch=i386,amd64] https://deb.opera.com/opera-stable/ stable non-free"
#sudo apt update && sudo apt install opera-stable
##sudo apt-get remove opera-stable
##sudo apt-delete-repository "deb [arch=i386,amd64] https://deb.opera.com/opera-stable/ stable non-free
#3
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
