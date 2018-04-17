#!/bin/bash

# This script is for first use in environment Lubuntu Desktop
# It install and configure my main softwares and configs

# read -p "Skip? (Y/n) " SKIP
# if [ $SKIP == "n" ]; then
# fi

cd ~
mkdir github
cd github
git clone git@github.com:/robertopc/dotfiles
git clone git@github.com:/robertopc/scripts

# instalo o vundle para o vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ln -s ~/github/dotfiles ~
ln -s ~/github/scripts ~

cd ~

# Download fonts backup
git clone git@github.com:/robertopc/fontes

# Link Dotfiles
find ~/github/dotfiles/ -type f -name '.*' -exec ln -s {} ~/ \; # mk symlinks

# Link Fonts
ln -s fontes .fonts

# Cli apps
echo "Installing CLI apps..."
sudo apt-get install pulseaudio -y -qq	    # audio
sudo apt-get install htop -y -qq	    # top improved
sudo apt-get install vim -y -qq		    # vi improved
sudo apt-get install mutt -y -qq	    # email client
sudo apt-get install w3m -y -qq		    # web browser
sudo apt-get install cmus -y -qq	    # music player
sudo apt-get install mpv -y -qq		    # media player
sudo apt-get install gist -y -qq	    # gist
sudo apt-get install espeak -y -qq	    # audio synthetizer
sudo apt-get install httpie -y -qq	    # cURL-like tool for humans
sudo apt-get install multitail -y -qq	    # multi tail
sudo apt-get install inxi -y -qq	    # show hardware information
sudo apt-get install screenfetch -y -qq	    # The Bash Screenshot Information Tool
sudo apt-get install rar -y -qq		    # rar
sudo apt-get install build-essential -y -qq # build tools

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
sudo apt-get install python3-pip -y -qq		# python3 package manager
sudo apt-get install python3-virtualenv -y -qq	# python3 virtual environment

# ruby-install
wget -O ruby-install-0.6.1.tar.gz https://github.com/postmodern/ruby-install/archive/v0.6.1.tar.gz
tar -xzvf ruby-install-0.6.1.tar.gz
cd ruby-install-0.6.1/
sudo make install
ruby-install --latest ruby
cd ..

# pip packages
sudo pip3 install asciinema
sudo pip3 install virtualenvwrapper

# install current nodejs
curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
sudo apt-get install nodejs -y -qq

# npm packages
sudo npm install -g gitbook-cli
sudo npm install -g sub-tv

# install linux brew
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

# add linuxbrew to path
test -d ~/.linuxbrew && PATH="$HOME/.linuxbrew/bin:$HOME/.linuxbrew/sbin:$PATH"
test -d /home/linuxbrew/.linuxbrew && PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"
test -r ~/.bash_profile && echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":'"$PATH"' >>~/.bash_profile
echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":'"$PATH"' >>~/.profile

# brew packages
sudo brew install hub
sudo brew install hello

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
sudo apt-get install keepassx -y -qq		# password manager
sudo apt-get install kpcli -y -qq		# keepassx cli

sudo apt-get install lynx -y -qq # require funcoeszz

# java 9
sudo apt-get install -y -qq openjdk-9-jre

# Cerebro App Launcher
curl https://github.com/KELiON/cerebro/releases/download/v0.3.1/cerebro_0.3.1_amd64.deb
sudo dpkg -i cerebro_0.3.1_amd64.deb

# Steam
curl https://steamcdn-a.akamaihd.net/client/installer/steam.deb
sudo dpkg -i steam.deb

# Netbeans IDE 8.2
bash ~/scripts/install-netbeans.sh

# Pycharm IDE
bash ~/scripts/install-pycharm.sh

# Atom IDE
# wget https://atom.io/download/deb
# mv deb atom-amd64.deb
# sudo dpkg -i atom-amd64.deb
