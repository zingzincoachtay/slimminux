#cd ~/Documents/ && git clone https://github.com/zingzincoachtay/slimminux
#cd ~/Documents/ && git clone https://github.com/trekhleb/javascript-algorithms
git clone https://www.github.com/zingzincoachtay/tinyscript_python
sudo apt install kodi-*

echo https://bestappsbuzz.com/raspberry-pi/plex-for-raspberry-pi/
sudo apt-get update && apt-get upgrade
sudo apt install apt-transport-https ca-certificates curl
curl https://download.plex.tv/plex-keys/PlexSign.key | sudo apt-key add –
echo deb https://downloads.plex.tv/repo/deb public main | sudo tee /etc/apt/sources.list.d/plexmediaserver.list
sudo apt update && sudo apt install plexmediaserver
echo It’s recommended to run Plex under Pi user as it will avoid any permission issue. Use the command.
echo Edit the following output line
echo PLEX_MEDIA_SERVER_USER=plex
echo PLEX_MEDIA_SERVER_USER=pi
pause
echo vi /etc/default/plexmediaserver.prev

echo https://www.electromaker.io/tutorial/blog/emby-server-raspberry-pi
#wget https://github.com/MediaBrowser/Emby.Releases/releases/download/4.4.3.0/emby-server-deb_4.4.3.0_armhf.deb
dpkg -i emby-server-deb_4.4.3.0_armhf.deb
