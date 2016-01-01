#!/usr/bin/env bash

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 68576280
sudo apt-add-repository "deb https://deb.nodesource.com/node_5.x $(lsb_release -sc) main"

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv EA312927
sudo apt-add-repository "deb http://repo.mongodb.org/apt/ubuntu $(lsb_release -sc)/mongodb-org/stable multiverse"

sudo apt-get -y update
sudo apt-get install -y nodejs
sudo apt-get install -y mongodb-org

nodejs /home/vagrant/app/app.js &
