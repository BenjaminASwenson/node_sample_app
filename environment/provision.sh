#!/bin/bash

# first we communicate with os that this is going to be a bash script

# system update
# we ensure all packages are up to date
# we updates our packages using our package manager (apt-get) as admin (sudo)
sudo apt-get update -y
# we upgrades our packages using our package manager (apt-get) as admin (sudo)
sudo apt-get upgrade -y

# nginx
# we install nginx using our package manager (apt-get) as admin (sudo)
# details on nginx: https://www.nginx.com/
sudo apt-get install nginx -y

# "start" spawns the daemon process
# we start nginx using our package manager (apt-get) as admin (sudo)
sudo systemctl start nginx

# "enable" will hook the specified unit into relevant places, so that it will 
# automatically start on boot
# we enable nginx using our package manager (apt-get) as admin (sudo)
sudo systemctl enable nginx

# nodejs
sudo apt-get install python-software-properties -y

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

sudo apt-get install -y nodejs

# npm
cd app/app/

npm install

npm start &
