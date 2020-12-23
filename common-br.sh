#!/bin/bash

[ ! -f ~/Desktop/wpa_supplicant.conf ] && cp --backup=numbered /etc/wpa_supplicant/wpa_supplicant.conf ~/Desktop/
#cp --backup=numbered /etc/wpa_supplicant/wpa_supplicant.conf ~/Desktop/
[ ! -f ~/Desktop/dhcpcd.conf ]         && cp --backup=numbered /etc/dhcpcd.conf  ~/Desktop/
#cp --backup=numbered /etc/dhcpcd.conf  ~/Desktop/
[ ! -f ~/Desktop/dnsmasq.conf ]        && cp --backup=numbered /etc/dnsmasq.conf ~/Desktop/
#cp --backup=numbered /etc/dnsmasq.conf ~/Desktop/
[ ! -f ~/Desktop/sysctl.conf ]         && cp --backup=numbered /etc/sysctl.conf  ~/Desktop/
#cp --backup=numbered /etc/sysctl.conf  ~/Desktop/
[   -f /proc/sys/net/ipv4/ip_forward ] && cp --backup=numbered /proc/sys/net/ipv4/ip_forward ~/Desktop/
#cp --backup=numbered /proc/sys/net/ipv4/ip_forward ~/Desktop/
[   -f /etc/iptables.ipv4.nat ]        && cp --backup=numbered /etc/iptables.ipv4.nat        ~/Desktop/
#cp --backup=numbered /etc/iptables.ipv4.nat        ~/Desktop/
[ ! -f ~/Desktop/rc.local ]            && cp --backup=numbered /etc/rc.local     ~/Desktop/
#cp --backup=numbered /etc/rc.local     ~/Desktop/

### https://pimylifeup.com/raspberry-pi-wifi-bridge/

### 2. With that done we can now install the one and only package we will be
###    utilizing, run the following command to install dnsmasq.
sudo apt-get install -y dnsmasq

### 3. Before we get too far ahead of ourselves, we should setup the wlan0
#      connection that we plan on using. If you have already setup your wireless
#      connection then you can skip ahead to step 5.
### 4. Within this file add the following, making sure you replace the ssid with
#      the name of the network you want to connect to and replace the psk value
#      with the password for that network.
function SupplyWifiName {
  sudo cat 0-raspbian-wpa_supplicant.0 0ready.wpa_supplicant > /etc/wpa_supplicant/wpa_supplicant.conf
}

### 5. With the wireless network now setup to correctly connect we can proceed
#      with setting up our eth0 interface. This will basically force it to use a
#      static IP address, not setting this up can cause several issues.
### 6. Within this file we need to add the following lines, make sure you
#      replace eth0 with the correct interface of your ethernet.
function Edit_dhcpcd {
  [ $1 == "on" ] && sudo service dhcpcd restart
  if [ $(perl -ne 'print if /^static ip_address/' /etc/dhcpcd.conf | xargs wc -l)==0 ]; then
    sudo cat ./common-br.02.dhcpcd >> /etc/dhcpcd.conf
    ### 7. With our changes made to dhcpcd configuration we should now restart the
    #      service by running the following command:
    sudo service dhcpcd restart
  fi
}
### 8. Before we get started with modifying dnsmasq’s configuration we will first
#      make a backup of the original configuration by running the following command.
### 9. With the original configuration now backed up and moved out of the way we
#      can now move on and create our new configuration file by typing the
#      command below into the terminal.
### 10. Now that we have our new file created we want to add the lines below,
#       these lines basically tell the dnsmasq package how to handle DNS and DHCP traffic.
if [ $(perl -ne '^listen\-address' /etc/dnsmasq.conf | xargs wc -l)==0 ]; then
  sudo cp --backup=numbered ./common-br.03.dnsmasq /etc/dnsmasq.conf
fi
### 11. We now need to configure the Raspberry Pi’s firewall so that it will
#       forward all traffic from our eth0 connection over to our wlan0
#       connection. Before we do this we must first enable ipv4p IP Forwarding through the sysctl.conf configuration file, so let’s begin editing it with the following command:
### 12. Within this file you need to find the following line, and remove the #
#       from the beginning of it.
sudo perl -i"orig" -ne 's/^\s*#(net.ipv4.ip_forward=1)/\1/' /etc/sysctl.conf

### 13. Now since we don’t want to have to wait until the next reboot before the
#       configuration is loaded in, we can run the following command to enable it immediately.
sudo sh -c "echo 1 > /proc/sys/net/ipv4/ip_forward"

### 14. Now that IPv4 Forwarding is enabled we can reconfigure our firewall so
#       that traffic is forwarded from our eth0 interface over to our wlan0
#       connection. Basically this means that anyone connecting to the ethernet
#       will be able to utilize our wlan0 internet connection.
#       Run the following commands to add our new rules to the iptable:
sudo iptables -t nat -A POSTROUTING -o wlan0 -j MASQUERADE
#sudo iptables -t nat -A POSTROUTING -o wlan0 10.10.10.1 -j MASQUERADE
sudo iptables -A FORWARD -i wlan0 -o eth0 -m state --state RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A FORWARD -i eth0 -o wlan0 -j ACCEPT

### 15. Of course iptables are flushed on every boot of the Raspberry Pi so we
#       will need to save our new rules somewhere so they are loaded back in on every boot.
#       To save our new set of rules run the following command.
sudo sh -c "iptables-save > /etc/iptables.ipv4.nat"

### 16. Now with our new rules safely saved somewhere we need to make this file
#       be loaded back in on every reboot. The most simple way to handle this is
#       to modify the rc.local file.
### 17. Now we are in this file, we need to add the line below. Make sure this
#       line appears above exit 0. This line basically reads the settings out of
#       our iptables.ipv4.nat file and loads them into the iptables.
sudo sed -i 's/exit 0/iptables\-restore \< \/etc\/iptables.ipv4.nat\nexit 0/' /etc/rc.local

### 18. Finally all we need to do is start our dnsmasq service. To do this, all
#       you need to do is run the following command:
sudo service dnsmasq restart

### 19. Now you should finally have a fully operational Raspberry Pi WiFi Bridge,
#       you can ensure this is working by plugging any device into its Ethernet
#       port, the bridge should provide an internet connection to the device you plugged it into.
#       To ensure everything will run smoothly it’s best to try rebooting now.
#       This will ensure that everything will successfully re-enable when the
#       Raspberry Pi is started back up. Run the following command to reboot the Raspberry Pi:
#sudo reboot

# https://www.reddit.com/r/pihole/comments/9qnjjz/pihole_wireless_bridge/
