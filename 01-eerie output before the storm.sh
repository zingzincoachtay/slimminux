#!/bin/bash

### Create the installed package lists

# https://tecadmin.net/get-current-date-and-time-in-bash/
dpkg-query -Wf '${Installed-Size}\t${Package}\n' | sort -nr > ~/Desktop/dpkgEssential_`date +"%Y-%m-%d"`.txt
dpkg-query -Wf '${Installed-Size}\t${Package}\t${Priority}\n' | egrep '\s(optional|extra)' | cut -f 1,2 | sort -nr > ~/Desktop/dpkgNonEssential_`date +"%Y-%m-%d"`.txt
# https://linuxize.com/post/how-to-list-installed-packages-on-debian/
sudo apt list --installed > ~/Desktop/dpkgSimple_`date +"%Y-%m-%d"`.txt
sudo dpkg-query -l > ~/Desktop/dpkgNoSort_`date +"%Y-%m-%d"`.txt
sudo dpkg-query -f '${binary:Package}\n' -W > ~/Desktop/packages_list.txt
### Now that you have the list, you can install the same packages on your new server with:
echo cp ~/Desktop/packages_list.txt
echo sudo xargs -a packages_list.txt apt install
echo ...on another machine
