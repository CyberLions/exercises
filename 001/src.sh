#!/bin/bash

# update and install dependencies
sudo apt-get update #; sudo apt-get -y upgrade
sudo apt-get -y install curl nmap

# create users with home directory and bash as shell
sudo /usr/sbin/useradd -m -s /bin/bash ccso001

# set passwords
sudo echo ccso:Y2NzbyBjaGFsbGVuZ2UgMDAx | sudo chpasswd

# disable old motd
# and activate new one
sudo chmod -x /etc/update-motd.d/*
sudo curl https://raw.githubusercontent.com/CyberLions/ccso-exercises/exercises/001/motd/00_start > /etc/update-motd.d/00-start
sudo chmod +x /etc/update-motd.d/00-start
sudo run-parts /etc/update-motd.d/

# get log file and readme with challenge instructions
sudo curl https://raw.githubusercontent.com/CyberLions/ccso-exercises/exercises/001/files/access.log > ~/access.log
sudo curl https://raw.githubusercontent.com/CyberLions/ccso-exercises/exercises/001/files/readme001.txt > ~/readme001.txt

# only ccso001 user can access
sudo chown ccso001 ~/access.log
sudo chgrp ccso001 ~/access.log
sudo chmod 0660 ~/access.log
sudo chown ccso001 ~/readme001.txt
sudo chgrp ccso001 ~/readme001.txt
sudo chmod 0660 ~/readme001.txt

echo "==========================================================="
echo "Setup completed!"
echo "To start, type: su ccso001, with password: Y2NzbyBjaGFsbGVuZ2UgMDAx"
echo "and check out the readme001.txt file"
echo "==========================================================="
