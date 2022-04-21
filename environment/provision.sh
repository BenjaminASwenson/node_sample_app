#!/bin/bash

# system updates
sudo apt-get update -y

sudo apt-get upgrade -y

# nginx
sudo apt-get install nginx -y

sudo systemctl start nginx

sudo systemctl enable nginx

# nodejs
sudo apt-get install python-software-properties -y

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

sudo apt-get install -y nodejs

# npm
cd

cd app/app/

npm install

npm start
