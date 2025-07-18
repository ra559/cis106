#!/bin/bash
#update
sudo apt update; sudo apt upgrade -y
#build_essentials
sudo apt install build-essential linux-headers-$(uname -r) -y
#Disable animations.
gsettings set org.gnome.desktop.interface enable-animations false
#unnecessary applications
sudo apt purge apport aisleriot gnome-mahjongg gnome-sudoku gnome-mines -y
#other software
sudo apt install flameshot vlc deluge geany tilix -y
sudo apt install gcc make perl nemo git python3-pip -y
sudo apt install curl wget tree htop net-tools vim -y
sudo apt install neofetch caffeine samba smbclient -y
#sudo apt install gnome-tweaks ubuntu-restricted-extras ubuntu-restricted-addons -y
sudo apt install snapd flatpak gnome-software-plugin-flatpak gnome-software-plugin-snap -y
