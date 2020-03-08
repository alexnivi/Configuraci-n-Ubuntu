#!/bin/bash

#Configuración Fecha
sudo apt-get install gks -y

#Instalar pyenv - python 3
echo '-----------------------------------------------'
echo '---------------------PYTHON 3------------------'
echo '-----------------------------------------------'
sudo apt-get update

sudo apt-get install -y python3-pip
python -m pip install --force-reinstall pip

pip3 install --upgrade pip
pip3 install numpy
pip3 install pandas

########## pg_config ####################
sudo apt-get install python-psycopg2

#Sublime text 3
echo '-----------------------------------------------'
echo '------------------SUBLIME TEXT-----------------'
echo '-----------------------------------------------'
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-add-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt install sublime-text

#Htop
echo '-----------------------------------------------'
echo '--------------------HTOP--------------------'
echo '-----------------------------------------------'
sudo apt-get install htop -y

#Actualizar controladores touchpad.
sudo apt-get install xserver-xorg-input-libinput -y
sudo apt autoremove -y
sudo apt purge xserver-xorg-input-synaptics -y

#Instalar Spotify
echo '-----------------------------------------------'
echo '--------------------SPOTIFY--------------------'
echo '-----------------------------------------------'

sudo snap install spotify

#Instalar Pycharm
echo '-----------------------------------------------'
echo '---------------------PYCHARM-------------------'
echo '-----------------------------------------------'
sudo snap install pycharm-community --classic

#Instalar Jupyter
echo '-----------------------------------------------'
echo '----------------------JUPYTER------------------'
echo '-----------------------------------------------'
sudo apt-get update
sudo pip install jupyter
sudo pip install jupyter_contrib_nbextensions
sudo pip install jupyter_nbextensions_configurator
sudo apt upgrade -y
jupyter nbextensions_configurator enable --user
jupyter contrib nbextension install --user
jupyter nbextension enable varInspector/main

#Instalar Git
echo '-----------------------------------------------'
echo '------------------------GIT--------------------'
echo '-----------------------------------------------'
sudo apt-get install git -y


#Instalar Oh My Sea zsh
echo '-----------------------------------------------'
echo '----------------OH MY SEASHELL-----------------'
echo '-----------------------------------------------'
sudo apt-get install zsh -y
sudo apt-get install git-core
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`


#Instalar Docker
echo '-----------------------------------------------'
echo '---------------------DOCKER--------------------'
echo '-----------------------------------------------'
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-xenial main'
sudo apt-get update
sudo apt-cache policy docker-engine
sudo apt-get install -y docker-engine
sudo systemctl status docker

#Instalar Adobe Reader
echo '-----------------------------------------------'
echo '------------------Adobe Reader-----------------'
echo '-----------------------------------------------'
sudo apt install gdebi-core libxml2:i386 libcanberra-gtk-module:i386 gtk2-engines-murrine:i386 libatk-adaptor:i386 58118E89F3A912897C070ADBF76221572C52609D
wget ftp://ftp.adobe.com/pub/adobe/reader/unix/9.x/9.5.5/enu/AdbeRdr9.5.5-1_i386linux_enu.deb
sudo gdebi AdbeRdr9.5.5-1_i386linux_enu.deb

#Instalar Controladores extras de video
echo '-----------------------------------------------'
echo '------------Controladores de Video-------------'
echo '-----------------------------------------------'
sudo apt-get install -y ubuntu-restricted-extras
sudo apt-get install gstreamer1.0-libav ffmpeg
sudo apt-get install -y libgstreamer1.0-0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-doc gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio

#Leer USB ExFat
echo '-----------------------------------------------'
echo '-------------------ExFat USBs------------------'
echo '-----------------------------------------------'
sudo add-apt-repository universe
sudo apt upgrade
sudo apt update
sudo apt install exfat-fuse exfat-utils

sudo shutdown -r 0
