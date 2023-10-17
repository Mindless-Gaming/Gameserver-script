#!/bin/bash

echo "########################-Satisfactory-########################"

sudo dpkg --add-architecture i386
sudo apt update
sudo apt-get install steamcmd -y
sudo ln -s /usr/games/steamcmd steamcmd

./steamcmd +force_install_dir /usr/games/satisfactory +login anonymous +app_update 1690800 validate +quit

cd /usr/games/satisfactory

./start_server.sh
