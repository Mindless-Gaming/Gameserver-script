#!/bin/bash

echo "########################-Satisfactory-########################"

dpkg --add-architecture i386
apt update
apt-get install steamcmd -y
ln -s /usr/games/steamcmd steamcmd

./steamcmd +force_install_dir /usr/games/satisfactory +login anonymous +app_update 1690800 validate +quit

cd /usr/games/satisfactory

./start_server.sh
