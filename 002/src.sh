#!/bin/bash

# update and install dependencies
sudo apt-get -qq update #; sudo apt-get -y upgrade
sudo apt-get -qq -y install curl nmap

# create users with home directory and bash as shell
sudo /usr/sbin/useradd -m -s /bin/bash ccso002

# set passwords
sudo echo ccso002:d2VsY29tZSB0byBsZXZlbCAy | sudo chpasswd

# get log file and readme with challenge instructions
sudo curl -o /home/ccso002/readme002.txt https://raw.githubusercontent.com/CyberLions/ccso-exercises/exercises/002/files/readme002.txt
sudo curl -o /home/ccso002/DSC_0043.JPG https://raw.githubusercontent.com/CyberLions/ccso-exercises/exercises/002/files/DSC_0043.JPG

# only ccso002 user can access
sudo chown ccso002 /home/ccso002/*
sudo chgrp ccso002 /home/ccso002/*
sudo chmod 0660 /home/ccso002/*

echo "==========================================================="
echo "Setup completed!"
echo "To start, type: su ccso002, with password: d2VsY29tZSB0byBsZXZlbCAy"
echo "    cd ~"
echo "and check out the readme002.txt file"
echo "==========================================================="
