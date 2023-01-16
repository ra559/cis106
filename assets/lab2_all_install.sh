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
sudo apt install gnome-tweaks ubuntu-restricted-extras ubuntu-restricted-addons -y
sudo apt install snapd flatpak gnome-software-plugin-flatpak gnome-software-plugin-snap -y

read -p 'Enter Github UserName: ' gname
read -p 'Enter Github Email Address: ' gemail
git config --global user.name $gname
git config --global user.email $gemail
ssh-keygen -t ed25519 -C $gemail
cat $HOME/.ssh/id_ed25519.pub
echo "Enter the ssd id into your github account. Press enter when done"
ssh -T git@github.com
echo "you can now clone your github repository"
echo "example command:"
echo "cd; git clone git@github.com:yourGithub-User-Name-Here/your-Repository-Name-Here"



