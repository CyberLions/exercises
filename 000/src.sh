#!/bin/bash
# https://git.io/fx7XO
# update and install dependencies
echo "updating and installing dependencies ..."
sudo apt-get update >/dev/null 2>/dev/null
sudo apt-get -qq -y install curl nmap netcat git >/dev/null 2>/dev/null

# disable old motd
# and activate new one
echo "updating motd ..."
sudo chmod -x /etc/update-motd.d/*
sudo curl -s https://raw.githubusercontent.com/CyberLions/ccso-exercises/exercises/000/motd/00_start > /etc/update-motd.d/00-start
sudo chmod +x /etc/update-motd.d/00-start
sudo run-parts /etc/update-motd.d/ 

echo "getting challenges ..."
sudo mkdir /tmp/ccsotmp
sudo $(sudo curl -s https://raw.githubusercontent.com/CyberLions/ccso-exercises/exercises/001/setup001 > /tmp/ccsotmp/setup001) >/dev/null 2>/dev/null
sudo $(sudo curl -s https://raw.githubusercontent.com/CyberLions/ccso-exercises/exercises/002/setup002 > /tmp/ccsotmp/setup002) >/dev/null 2>/dev/null
sudo $(sudo curl -s https://raw.githubusercontent.com/CyberLions/ccso-exercises/exercises/003/setup003 > /tmp/ccsotmp/setup003) >/dev/null 2>/dev/null
sudo $(sudo curl -s https://raw.githubusercontent.com/CyberLions/ccso-exercises/exercises/004/setup004 > /tmp/ccsotmp/setup004) >/dev/null 2>/dev/null

echo "installing challenges ..."
sudo bash /tmp/ccsotmp/setup001 >/dev/null 2>/dev/null
sudo bash /tmp/ccsotmp/setup002 >/dev/null 2>/dev/null
sudo bash /tmp/ccsotmp/setup003 >/dev/null 2>/dev/null
sudo bash /tmp/ccsotmp/setup004 >/dev/null 2>/dev/null

echo "cleaning up ..."
sudo rm -rf /tmp/ccsotmp/* >/dev/null 2>/dev/null

echo "==========================================================="
echo "Update completed!"
echo "exercises 001,002,003,004 installed"
echo "ccso001:Y2NzbyBjaGFsbGVuZ2UgMDAx"
echo "ccso002:d2VsY29tZSB0byBsZXZlbCAy"
echo "ccso003:SGF2ZSB1IGJlZW4gbG9va2luZz8gIDop"
echo "ccso004:RGFpc3lEYWlzeUdpdmVNZVlvdXJBbnN3ZXJEb29v"
echo "==========================================================="
