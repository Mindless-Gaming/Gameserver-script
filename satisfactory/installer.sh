#!/bin/bash

echo "########################-Satisfactory-########################"

declare install_dir=$(pwd)
declare install_txt=$install_dir/install.txt

if [ -f $install_txt ]; then
  echo "Server already installed or you need to clean the directory and start fresh\."
  exit 6
fi

function install_steamcmd () {
  read -p "Do you want to install steamcmd in $install_dir?" -n 1 -r
  echo
  if [[ ! $REPLY =~ ^[Yy]$ ]]
  then
      echo "Installing steamcmd in $install_dir."
      echo "curl -sqL 'https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz' | tar zxvf -"
      echo "rm steamcmd_linux.tar.gz"
      echo

      curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -
      chmod +x steamcmd.sh
      rm steamcmd_linux.tar.gz
  fi
}

function install_satisfactory_server () {
  read -p "Do you want to install the Satisfactory dedicated server in $install_dir?" -n 1 -r
  echo
  if [[ ! $REPLY =~ ^[Yy]$ ]]
  then
      echo "Installing Satisfactory dedicated server in $install_dir."
      echo "./steamcmd.sh +login anonymous +force_install_dir $install_dir +app_update 1690800 validate +quit"
      echo

      ./steamcmd.sh +login anonymous +force_install_dir $install_dir +app_update 1690800 validate +quit
      echo "install=true" > install.txt
  fi
}

install_steamcmd
install_satisfactory_server
exit
