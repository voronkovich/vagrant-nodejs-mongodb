#!/usr/bin/env bash

apt-key adv --keyserver keyserver.ubuntu.com --recv 68576280
apt-add-repository "deb https://deb.nodesource.com/node_5.x $(lsb_release -sc) main"

apt-key adv --keyserver keyserver.ubuntu.com --recv EA312927
apt-add-repository "deb http://repo.mongodb.org/apt/ubuntu $(lsb_release -sc)/mongodb-org/stable multiverse"

apt-get -y update
apt-get install -y nodejs
apt-get install -y mongodb-org

# Fixing npm permissions. See https://docs.npmjs.com/getting-started/fixing-npm-permissions
sudo -iu vagrant -g vagrant <<EOF
mkdir ~/.npm-global;
npm config set prefix ~/.npm-global;
echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.profile
EOF

sudo -iu vagrant -g vagrant <<EOF
npm install -g nodemon;
nodemon -L /vagrant/app.js &
EOF
