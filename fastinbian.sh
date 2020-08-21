#https://raspi.tv/2016/how-to-free-up-some-space-on-your-raspbian-sd-card-remove-wolfram-libreoffice
# get a list of installed packages (with their size) sorted by size:
# dpkg-query -Wf '${Installed-Size}\t${Package}\n' | sort -nr | more
# dpkg-query -Wf '${Installed-Size}\t${Package}\t${Priority}\n' | egrep '\s(optional|extra)' | cut -f 1,2 | sort -nr | less

#sudo apt-get purge libreoffice* geany* bluej greenfoot nodered games* scratch sonic* python-pygame python3-pygame python-gamera* minecraft-pi wolfram-engine claws-mail*
sudo apt-get purge libreoffice* claws-mail* epiphany-browser* chromium-browser*
sudo apt-get purge geany* bluej greenfoot scratch sonic* dillo gpicview penguinspuzzle
sudo apt-get purge games* minecraft-pi
sudo apt-get install vim fdupes ffmpeg exfat-fuse exfat-utils
sudo apt-get install samba rdp
#sound-theme* FreeDesktop
sudo apt-get install youtube_dl flactools mp3tags
cd ~/Documents/ && git clone https://www.github.com/zingzincoachtay/fastinbian.git
#git clone https://github.com/trekhleb/javascript-algorithms
sudo apt-get autoremove
