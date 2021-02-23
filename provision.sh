#!/usr/bin/env bash
sudo -u vagrant git clone https://github.com/juan-ruiz/movie-analyst-$(hostname).git
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install npm
sudo apt-get -y install nodejs
cd ./movie-analyst-$(hostname)/
sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo npm install
sudo nohup nodejs server.js &