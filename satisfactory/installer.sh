#!/bin/bash

# Installiere SteamCMD
echo "Installiere SteamCMD..."
mkdir ~/steamcmd && cd ~/steamcmd
wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
tar -xvzf steamcmd_linux.tar.gz
rm steamcmd_linux.tar.gz

# Installiere den Satisfactory Dedicated Server
echo "Installiere den Satisfactory Dedicated Server..."
./steamcmd.sh +login anonymous +force_install_dir ~/satisfactory_server +app_update 1690800 validate +quit

# Konfiguriere den Server
echo "Konfiguriere den Server..."
cd ~/satisfactory_server/FactoryGame/Binaries/Linux/
cp FactoryGame.sh FactoryGame.sh.bak # Backup der Originaldatei erstellen

# Bearbeite die Startparameter des Servers nach Bedarf (z.B. Anzahl der Spieler, Weltgröße usw.)
sed -i 's/\<ServerName=.*$/ServerName=MeinServer/' FactoryGame.sh
sed -i 's/\<MaxPlayers=.*$/MaxPlayers=16/' FactoryGame.sh
sed -i 's/\<WorldSize=.*$/WorldSize=3/' FactoryGame.sh

# Starte den Server
echo "Starte den Satisfactory Dedicated Server..."
cd ~/satisfactory_server/FactoryGame/Binaries/Linux/
./FactoryGame.sh
