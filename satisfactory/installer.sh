#!/bin/bash

echo "########################-Satisfactory-########################"

echo " DIESES SCRIPT MUSS ALS ROOT AUSGEFÜHRT WERDEN!!!!!#"
echo " dieses Script wird in 20 sekunden weiter ausgeführt"

sleep 20

sudo dpkg --add-architecture i386
sudo apt update
sudo apt-get install steamcmd -y
sudo ln -s /usr/games/steamcmd steamcmd

./steamcmd +force_install_dir /usr/games/satisfactory +login anonymous +app_update 1690800 validate +quit

cd /usr/games/satisfactory

./start_server.sh
