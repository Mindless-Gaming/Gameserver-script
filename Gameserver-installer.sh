#!/bin/bash

echo "###################################################################"
echo "#Script Name  	: Gameserver-installer"                                                                                          
echo "#Description	    : A powerful bash script for easy installation of some Gamesevers and even more :)"                                                                                                                                                                   
echo "#Author       	: MindlessGamingDE"                                              
echo "#GitHub           : https://github.com/Mindless-Gaming"     
echo "#Discord          : (soon)"
echo "###################################################################"

echo "1. Minecraft Server erstellen"
echo "2. Satisfactory Server erstellen"
echo "3. Coder-Server erstellen (benötigt docker)"
read -p "Please enter a number: " choice
if [ $choice == "1" ]
    then
    bash <(curl -s https://raw.githubusercontent.com/Mindless-Gaming/Gameserver-script/main/minecraft/mc-auswahlscript-script.sh)
fi
if [ $choice == "2" ]
    then
    bash <(curl -s https://raw.githubusercontent.com/Mindless-Gaming/Gameserver-script/main/satisfactory/installer.sh)
fi
if [ $choice == "3" ]
    then
    bash <(curl -s https://raw.githubusercontent.com/Mindless-Gaming/Gameserver-script/main/code-server/installer.sh)
fi
