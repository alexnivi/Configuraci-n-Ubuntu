#!/bin/bash
apt-get update
apt-get upgrade

#Instalar R.
apt-get update
apt-get install r-base

#Instalar RStudio.
apt-get install gdebi-core
wget https://download2.rstudio.org/rstudio-server-1.0.143-amd64.deb
wget --tries=3 --timeout=120 http://ftp.ca.debian.org/debian/pool/main/g/gstreamer0.10/libgstreamer0.10-0_0.10.36-1.5_amd64.deb
wget --tries=3 --timeout=120 http://ftp.ca.debian.org/debian/pool/main/g/gst-plugins-base0.10/libgstreamer-plugins-base0.10-0_0.10.36-2_amd64.deb
dpkg -i libgstreamer0.10-0_0.10.36-1.5_amd64.deb
dpkg -i libgstreamer-plugins-base0.10-0_0.10.36-2_amd64.deb
apt-mark hold libgstreamer-plugins-base0.10-0
apt-mark hold libgstreamer0.10
apt --fix-broken install
apt install libjpeg62
apt install libcurl4-openssl-dev
dpkg -i rstudio-*-amd64.deb
apt-get update
apt-get upgrade

#Configuración Fecha
gksu gnome-control-center

#Htop
apt install htop

#Actualizar controladores touchpad.
apt install xserver-xorg-input-libinput
apt purge xserver-xorg-input-synaptics

#Instalar Spotify
# 1. Add the Spotify repository signing key to be able to verify downloaded packages
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
# 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
# 3. Update list of available packages
apt-get update
# 4. Install Spotify
apt-get install spotify-client

#Instalar Pycharm
apt install python-pip
add-apt-repository ppa:viktor-krivak/pycharm
apt update
apt install pycharm

#Instalar Anaconda
bash Anaconda3-4.4.0-Linux-x86_64.sh

#Instalar Jupyter
apt update
pip install jupyter
pip install jupyter
apt upgrade

#Instalar Git
apt install git

#Instalar EMACS
add-apt-repository ppa:cassou/emacs
apt-get install emacs
apt-get update
apt-get upgrade

#Instalar sublime Text2
sudo add-apt-repository ppa:webupd8team/sublime-text-2
sudo apt-get update
sudo apt-get install sublime-text


reboot
