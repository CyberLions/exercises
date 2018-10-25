#!/bin/bash

# create users with home directory and bash as shell
sudo /usr/sbin/useradd -m -s /bin/bash ccso003

# set passwords
sudo echo ccso003:SGF2ZSB1IGJlZW4gbG9va2luZz8gIDop | sudo chpasswd

# get log file and readme with challenge instructions
sudo curl -o /home/ccso003/readme003.txt https://raw.githubusercontent.com/CyberLions/ccso-exercises/exercises/003/files/readme003.txt
sudo curl -o /var/YSBzY3JpcHQgb3dv.sh https://raw.githubusercontent.com/CyberLions/ccso-exercises/exercises/003/files/secret.sh

sudo chown ccso003 /home/ccso003/*
sudo chgrp ccso003 /home/ccso003/*
sudo chmod 0660 /home/ccso003/*

sudo bash /var/YSBzY3JpcHQgb3dv.sh

echo "==========================================================="
echo "Setup completed!"
echo "To start, type: su ccso003, with password: SGF2ZSB1IGJlZW4gbG9va2luZz8gIDop"
echo "    cd ~"
echo "and check out the readme003.txt file"
echo "==========================================================="
