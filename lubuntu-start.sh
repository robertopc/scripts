#!/bin/bash

# This script is for first use in environment Lubuntu Desktop
# It install and configure my main softwares and configs

USER=`whoami`

sudo apt-get install git $PARAMS -qq

cd ~
mkdir github
cd github
git clone git@github.com:/robertopc/dotfiles
git clone git@github.com:/robertopc/scripts

cd ~
# Download fonts backup
git clone git@github.com:/robertopc/fontes

# Link Dotfiles
find github/dotfiles/ -type f -name .* -exec ln -s {} \; # create symlinks

# Link Fonts
ln -s fontes .fonts

# Install parameters
PARAMS='-y -qq >> lubuntu-start-errors.log'

# Cli apps
echo "Installing CLI apps..."

sudo apt-get install pulseaudio $PARAMS		# audio
sudo apt-get install htop $PARAMS		# top improved
sudo apt-get install vim $PARAMS		# vi improved
sudo apt-get install gparted $PARAMS		# disk partitions editor
sudo apt-get install vlc $PARAMS		# media player
sudo apt-get install cheese $PARAMS		# webcam
sudo apt-get install firefox $PARAMS		# web browser
sudo apt-get install chromium-browser $PARAMS	# web browser
sudo apt-get install brave $PARAMS		# web browser
sudo apt-get install w3m $PARAMS		# cli web browser
sudo apt-get install gimp $PARAMS		# image editor
sudo apt-get install sqliteman $PARAMS		# SQLite
sudo apt-get install playonlinux $PARAMS	# wine
sudo apt-get install inkscape $PARAMS		# vector images editor
sudo apt-get install kdenlive $PARAMS	        # video editor
sudo apt-get install kazam $PARAMS		# screencast
sudo apt-get install rhythmbox $PARAMS	        # music player
sudo apt-get install audacity $PARAMS	        # sound editor
sudo apt-get install bleachbit $PARAMS		# file cleaner
sudo apt-get install indicator-multiload $PARAMS # info about memory, cpu
sudo apt-get install gedit $PARAMS		# gnome text editor
sudo apt-get install virtualbox $PARAMS	        # virtual machines
sudo apt-get install pgadmin3 $PARAMS		# PostgreSQL
sudo apt-get install terminator $PARAMS		# terminal emulator
sudo apt-get install typecatcher $PARAMS	# search google fonts
sudo apt-get install clipit $PARAMS		# clipboard
sudo apt-get install transmission $PARAMS	# torrent
sudo apt-get install keepassx $PARAMS		# password manager
sudo apt-get install apache2 $PARAMS		# http server
sudo apt-get install php7.0 $PARAMS		# php7
sudo apt-get install php7.0-cli $PARAMS		# php7 for cli
sudo apt-get install php7.0-curl $PARAMS	# php7 curl lib
sudo apt-get install mysql-server $PARAMS	# mysql
sudo apt-get install gnome-terminal $PARAMS	# steam requeriment
sudo apt-get install shutter $PARAMS		# screenshot
sudo apt-get install screenruler $PARAMS	# screen ruler(for design)
sudo apt-get install mutt $PARAMS		# email client
sudo apt-get install mediainfo $PARAMS		# show media files info
sudo apt-get install mediainfo-gui $PARAMS	# media-info graphical
sudo apt-get install screenkey $PARAMS		# screencast keys
sudo apt-get install vokoscreen $PARAMS		# screencast
sudo apt-get install font-manager $PARAMS	# font manager
sudo apt-get install multitail $PARAMS		# multi tail in cli
sudo apt-get install rar $PARAMS		# rar
sudo apt-get install inxi $PARAMS		# show hardware information
sudo apt-get install nodejs $PARAMS		# nodejs
sudo apt-get install npm $PARAMS		# nodejs package manager
sudo apt-get install python3-pip $PARAMS	# python3 package manager
sudo apt-get install espeak $PARAMS		# audio synthetizer
sudo apt-get install cmus $PARAMS		# cli music player
sudo apt-get install mpv $PARAMS		# cli media player
sudo apt-get install gist $PARAMS		# cli gist
sudo apt-get install albert $PARAMS		# app launcher

# Cerebro App Launcher
wget https://github.com/KELiON/cerebro/releases/download/v0.3.1/cerebro_0.3.1_amd64.deb
sudo dpkg -i cerebro_0.3.1_amd64.deb

# Steam
wget https://steamcdn-a.akamaihd.net/client/installer/steam.deb
sudo dpkg -i steam.deb

# Netbeans IDE 8.1
# wget http://download.netbeans.org/netbeans/8.1/final/bundles/netbeans-8.1-php-linux-x64.sh
# chmod +x netbeans-8.1-php-linux-x64.sh
# ./netbeans-8.1-php-linux-x64.sh

# Pycharm IDE
# wget https://download.jetbrains.com/python/pycharm-community-2017.2.3.tar.gz
# tar xzf pycharm-community-2017.2.3.tar.gz

# Atom IDE
# wget https://atom.io/download/deb
# mv deb atom-amd64.deb
# sudo dpkg -i atom-amd64.deb
