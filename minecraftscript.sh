#!/bin/bash

###################################################################
#Script Name	: MCServerInstaller                                                                                          
#Description	: A powerful bash script for easy installation of a Minecraft server (Vanilla, Forge, Spigot & Paper)                                                                                                                                                                   
#Author       	: MindlessGamingDE                                              
#GitHub         : https://github.com/Mindless-Gaming                                         
##################################################################
print_brake 70
echo
echo "1. Minecraft Forge"
echo "2. Minecraft Paper"
echo "3. Minecraft Bedrock"
echo "4. Install MinecraftTheme"
read -p "Please enter a number: " choice
if [ $choice == "1" ]
    then
    bash <(curl -s https://raw.githubusercontent.com/Sigma-Production/PteroFreeStuffinstaller/V1.10.1/resources/DarkNColor.sh)
fi
if [ $choice == "2" ]
    then
    bash <(curl -s https://raw.githubusercontent.com/Sigma-Production/PteroFreeStuffinstaller/V1.10.1/resources/Addons.sh)
fi
if [ $choice == "3" ]
    then
    echo "Installing Particles themes..."
    bash <(curl -sSL https://raw.githubusercontent.com/Sigma-Production/PteroFreeStuffinstaller/V1.10.1/resources/ParticleJS/install.sh)
fi
if [ $choice == "4" ]
    then
    echo "Installing Minecraft Theme..."
    bash <(curl -sSL https://raw.githubusercontent.com/Sigma-Production/PteroFreeStuffinstaller/V1.10.1/resources/mcTheme/install.sh)
fi
