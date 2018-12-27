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
pip3 install ipython
pip3 install numpy
pip3 install pandas
pip3 install jupyter

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
sudo apt upgrade -y

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

sudo shutdown -r 0
