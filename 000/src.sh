#!/bin/bash
# https://git.io/fx7XO
# update and install dependencies
sudo apt-get -qq update #; sudo apt-get -y upgrade
sudo apt-get -qq -y install curl nmap netcat git

# disable old motd
# and activate new one
sudo chmod -x /etc/update-motd.d/*
sudo curl https://raw.githubusercontent.com/CyberLions/ccso-exercises/exercises/000/motd/00_start > /etc/update-motd.d/00-start
sudo chmod +x /etc/update-motd.d/00-start
sudo run-parts /etc/update-motd.d/

sudo mkdir /tmp/ccsotmp
sudo curl https://raw.githubusercontent.com/CyberLions/ccso-exercises/exercises/001/setup001 > /tmp/ccsotmp/setup001
sudo curl https://raw.githubusercontent.com/CyberLions/ccso-exercises/exercises/002/setup002 > /tmp/ccsotmp/setup002
sudo curl https://raw.githubusercontent.com/CyberLions/ccso-exercises/exercises/003/setup003 > /tmp/ccsotmp/setup003

sudo bash /tmp/ccsotmp/setup001
sudo bash /tmp/ccsotmp/setup002
sudo bash /tmp/ccsotmp/setup003

sudo rm -rf /tmp/ccsotmp/*

echo "==========================================================="
echo "Update completed!"
echo "exercises 001,002,003 installed"
echo "ccso001:Y2NzbyBjaGFsbGVuZ2UgMDAx"
echo "ccso002:d2VsY29tZSB0byBsZXZlbCAy"
echo "ccso003:SGF2ZSB1IGJlZW4gbG9va2luZz8gIDop"
echo "==========================================================="
