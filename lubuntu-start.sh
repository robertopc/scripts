#!/bin/bash

# This script is for first use in environment Lubuntu Desktop
# It install and configure my main softwares and configs

USER=`whoami`
HOME="/home/$USER"

cd ~
mkdir github
cd github
git clone git@github.com:/robertopc/dotfiles
git clone git@github.com:/robertopc/scripts

ln -s $HOME/github/dotfiles ~
ln -s $HOME/github/scripts ~

cd ~

# Download fonts backup
git clone git@github.com:/robertopc/fontes

# Link Dotfiles
find $HOME/github/dotfiles/ -type f -name .* -exec ln -s {} ~ \; # mk symlinks

# Link Fonts
ln -s fontes .fonts

# Cli apps
echo "Installing CLI apps..."
sudo apt-get install pulseaudio -y -qq		# audio
sudo apt-get install htop -y -qq		# cli top improved
sudo apt-get install vim -y -qq			# cli vi improved
sudo apt-get install mutt -y -qq		# cli email client
sudo apt-get install w3m -y -qq			# cli web browser
sudo apt-get install cmus -y -qq	  	# cli music player
sudo apt-get install mpv -y -qq			# cli media player
sudo apt-get install gist -y -qq		# cli gist
sudo apt-get install espeak -y -qq		# cli audio synthetizer
sudo apt-get install httpie -y -qq		# CLI, cURL-like tool for humans
sudo apt-get install multitail -y -qq		# clie multi tail
sudo apt-get install inxi -y -qq		# show hardware information
sudo apt-get install rar -y -qq			# rar

echo "Installing Browsers..."
sudo apt-get install firefox -y -qq		# web browser
sudo apt-get install chromium-browser -y -qq	# web browser
sudo apt-get install brave -y -qq		# web browser

echo "Installing Media Editors..."
sudo apt-get install inkscape -y -qq		# vector images editor
sudo apt-get install gimp -y -qq		# image editor
sudo apt-get install kdenlive -y -qq	        # video editor
sudo apt-get install audacity -y -qq	        # sound editor

echo "Installing Programing Tools..."
sudo apt-get install sqliteman -y -qq	  	# SQLite
sudo apt-get install pgadmin3 -y -qq		# PostgreSQL
sudo apt-get install apache2 -y -qq		# http server
sudo apt-get install php7.0 -y -qq		# php7
sudo apt-get install php7.0-cli -y -qq		# php7 for cli
sudo apt-get install php7.0-curl -y -qq		# php7 curl lib
sudo apt-get install mysql-server -y -qq	# mysql
sudo apt-get install nodejs -y -qq		# nodejs
sudo apt-get install npm -y -qq		        # nodejs package manager
sudo apt-get install python3-pip -y -qq		# python3 package manager
sudo apt-get install python3-virtualenv -y -qq	# python3 virtual environment

sudo apt-get install cheese -y -qq		# webcam
sudo apt-get install gparted -y -qq		# disk partitions editor
sudo apt-get install vlc -y -qq			# media player
sudo apt-get install playonlinux -y -qq	        # wine
sudo apt-get install kazam -y -qq		# screencast
sudo apt-get install rhythmbox -y -qq	        # music player
sudo apt-get install bleachbit -y -qq		# file cleaner
sudo apt-get install indicator-multiload -y -qq # info about memory, cpu
sudo apt-get install gedit -y -qq		# gnome text editor
sudo apt-get install virtualbox -y -qq	        # virtual machines
sudo apt-get install terminator -y -qq		# terminal emulator
sudo apt-get install typecatcher -y -qq		# search google fonts
sudo apt-get install clipit -y -qq		# clipboard
sudo apt-get install transmission -y -qq	# torrent
sudo apt-get install keepassx -y -qq		# password manager
sudo apt-get install gnome-terminal -y -qq	# steam requeriment
sudo apt-get install shutter -y -qq		# screenshot
sudo apt-get install screenruler -y -qq		# screen ruler(for design)
sudo apt-get install mediainfo -y -qq		# show media files info
sudo apt-get install mediainfo-gui -y -qq	# media-info graphical
sudo apt-get install screenkey -y -qq		# screencast keys
sudo apt-get install vokoscreen -y -qq		# screencast
sudo apt-get install font-manager -y -qq	# font manager

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
