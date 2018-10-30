#!/bin/bash

# create users with home directory and bash as shell
sudo /usr/sbin/useradd -m -s /bin/bash ccso004

# set passwords
sudo echo ccso004:RGFpc3lEYWlzeUdpdmVNZVlvdXJBbnN3ZXJEb29v | sudo chpasswd

# get log file and readme with challenge instructions
sudo curl -o /home/ccso004/readme004.txt https://raw.githubusercontent.com/CyberLions/ccso-exercises/exercises/004/files/readme004.txt
sudo curl -o /home/ccso004/make.py https://raw.githubusercontent.com/CyberLions/ccso-exercises/exercises/004/files/make-dist.py
sudo curl -o /home/ccso004/requirements.txt https://raw.githubusercontent.com/CyberLions/ccso-exercises/exercises/004/files/requirements.txt

sudo chown ccso004 /home/ccso004/*
sudo chgrp ccso004 /home/ccso004/*
sudo chmod 0660 /home/ccso004/*

echo "==========================================================="
echo "Setup completed!"
echo "To start, type: su ccso004, with password: RGFpc3lEYWlzeUdpdmVNZVlvdXJBbnN3ZXJEb29v"
echo "    cd ~"
echo "and check out the readme004.txt file"
echo "==========================================================="
