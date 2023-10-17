#!/bin/bash

echo "###################################################################"
echo "#Script Name  	: Gameserver-installer"                                                                                          
echo "#Description	  : A powerful bash script for easy installation of some Gameservers"                                                                                                                                                                   
echo "#Author       	: MindlessGamingDE"                                              
echo "#GitHub         : https://github.com/Mindless-Gaming"     
echo "#Discord        : (soon)"
echo "###################################################################"

echo "1. Minecraft Server erstellen"
echo "2. Satisfactory Server erstellen"
read -p "Please enter a number: " choice
if [ $choice == "1" ]
    then
    bash <(curl -s https://raw.githubusercontent.com/Mindless-Gaming/Gameserver-script/main/minecraftscript.sh)
fi
