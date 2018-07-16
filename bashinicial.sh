#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y

#Configuración Fecha
sudo apt-get install gksu -y

#Instalar pyenv - python 3
echo '-----------------PYTHON 3---------------'
sudo add-apt-repository ppa:jonathonf/python-3.6
sudo apt-get update
sudo apt-get install -y python3.6
sudo apt-get install -y python3-pip
pip3 install --upgrade pip
pip3 install --user ipython
pip3 install --user numpy
pip3 install --user pandas

#Instalar R.
echo 'INSTALANDO R'
sudo apt-get install r-base -y

#Instalar RStudio.
echo 'INSTALANDO R STUDIO'
sudo apt-get install gdebi-core -y
wget https://download2.rstudio.org/rstudio-server-1.0.143-amd64.deb
wget --tries=3 --timeout=120 http://ftp.ca.debian.org/debian/pool/main/g/gstreamer0.10/libgstreamer0.10-0_0.10.36-1.5_i386.deb
wget --tries=3 --timeout=120 http://ftp.ca.debian.org/debian/pool/main/g/gst-plugins-base0.10/libgstreamer-plugins-base0.10-0_0.10.36-2_i386.deb
sudo dpkg -i libgstreamer0.10-0_0.10.36-1.5_i386.deb
sudo dpkg -i libgstreamer-plugins-base0.10-0_0.10.36-2_i386.deb
sudo apt-mark hold libgstreamer-plugins-base0.10-0
sudo apt-mark hold libgstreamer0.10
sudo apt --fix-broken install -y
sudo apt install libjpeg62 -y
sudo apt install libcurl4-openssl-dev
sudo dpkg -i rstudio-*-amd64.deb
sudo apt-get update
sudo apt-get upgrade -y
wget https://download1.rstudio.org/rstudio-1.0.44-amd64.deb
sudo gdebi rstudio-1.0.44-amd64.deb --n
rm rstudio-1.0.44-amd64.deb

#Htop
sudo apt-get install htop -y

#Actualizar controladores touchpad.
sudo apt-get install xserver-xorg-input-libinput -y
sudo apt autoremove -y
sudo apt purge xserver-xorg-input-synaptics -y

#Instalar Spotify
echo '-----------SPOTIFY----------'
# 1. Add the Spotify repository signing key to be able to verify downloaded packages
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
# 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
# 3. Update list of available packages
sudo apt-get update
# 4. Install Spotify
sudo apt-get install spotify-client -y

#Instalar Pycharm
sudo apt-get install pycharm-community -y
sudo apt-get install python-pip -y
sudo apt-get update

#Instalar Jupyter
sudo apt-get update
pip3 install jupyter
sudo apt upgrade -y

#Instalar Git
sudo apt-get install git -y

#Instalar sublime Text3
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer -y

#Instalar Oh My Sea zsh

sudo apt-get install zsh -y
sudo apt-get install git-core
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`


#Instalar Docker
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-xenial main'
sudo apt-get update
sudo apt-cache policy docker-engine
sudo apt-get install -y docker-engine
sudo systemctl status docker

sudo shutdown -r 0
