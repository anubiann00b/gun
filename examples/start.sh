#!/bin/bash

# README
# This will install nodejs and npm on your system,
# should work on most places other than Windows.
# If you are on Windows, http://nodejs.org/download/ has
# a installer that will automatically do it for you.
# Copy paste and run each line into your terminal.

#debian/ubuntu
sudo apt-get update -y
sudo apt-get install curl git git-core -y
#fedora/openSUSE
sudo yum check-update -y
sudo yum install curl git git-core -y

#install nodejs
git clone http://github.com/isaacs/nave.git
sudo ./nave/nave.sh usemain stable
# If you just want nodejs and npm but NOT gun, stop here.

npm install gun

cd ./node_modules/gun/examples

npm install .

sudo /usr/local/bin/node ./all.js
