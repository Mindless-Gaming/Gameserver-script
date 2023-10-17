#!/bin/bash

echo "########################-Satisfactory-########################"

#!/usr/bin/bash
set -e
sudo -v

sudo groupadd steam
sudo useradd -g steam -m steam -s /bin/bash

sudo tee -a /etc/apt/sources.list > /dev/null <<EOT
deb http://deb.debian.org/debian stretch main contrib non-free
deb-src http://deb.debian.org/debian stretch main contrib non-free

deb http://deb.debian.org/debian stretch-updates main contrib non-free
deb-src http://deb.debian.org/debian stretch-updates main contrib non-free

deb http://security.debian.org/ stretch/updates main contrib non-free
deb-src http://security.debian.org/ stretch/updates main contrib non-free
EOT

sudo add-apt-repository multiverse
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install lib32gcc1 steamcmd

set -e

sudo -v

sudo apt install libsdl2-2.0-0:i386
sudo -H -u steam bash -c '/usr/games/steamcmd +login anonymous +force_install_dir ~/satisfactory +app_update 1690800 validate +quit'

sudo cp ./systemd/satisfactory.service /etc/systemd/system
sudo systemctl enable satisfactory
sudo systemctl start satisfactory
