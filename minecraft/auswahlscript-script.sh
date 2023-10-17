#!/bin/bash

echo "###################################################################"
echo "#Script Name  	: MCServerInstaller                "                                                                          
echo "#Description   	: A powerful bash script for easy installation of a Minecraft server (Vanilla, Forge, Spigot & Paper)   "                                                                                                                                                                
echo "#Author       	: MindlessGamingDE       "                                       
echo "#GitHub           : https://github.com/Mindless-Gaming "                                        
echo "###################################################################"
echo
echo "1. Minecraft Forge"
echo "2. Minecraft Paper (soon)"
echo "3. Minecraft Bedrock (soon)"
echo "4. idk (soon)"
read -p "Please enter a number: " choice
if [ $choice == "1" ]
    then
    bash <(curl -s https://raw.githubusercontent.com/Mindless-Gaming/Gameserver-script/main/minecraft/Forge.sh)
fi
if [ $choice == "2" ]
    then
    #bash <(curl -s https://raw.githubusercontent.com/Sigma-Production/PteroFreeStuffinstaller/V1.10.1/resources/Addons.sh)
fi
if [ $choice == "3" ]
    then
    #echo "Installing Particles themes..."
    #bash <(curl -sSL https://raw.githubusercontent.com/Sigma-Production/PteroFreeStuffinstaller/V1.10.1/resources/ParticleJS/install.sh)
fi
if [ $choice == "4" ]
    then
    #echo "Installing Minecraft Theme..."
    #bash <(curl -sSL https://raw.githubusercontent.com/Sigma-Production/PteroFreeStuffinstaller/V1.10.1/resources/mcTheme/install.sh)
fi
