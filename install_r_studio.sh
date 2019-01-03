#!/bin/bash

sudo apt update
sudo apt -y install r-base
sudo apt install gdebi-core

wget https://download1.rstudio.org/rstudio-xenial-1.1.442-amd64.deb
sudo gdebi rstudio-xenial-1.1.442-amd64.deb
rm rstudio-xenial-1.1.442-amd64.deb

sudo apt-get install libxml2-dev
sudo apt-get install libcurl4-openssl-dev 
