#!/bin/bash
arch=`uname -m`
echo "Installing VS Code now"
if [ $arch = 'aarch64' ]
then
	echo "$arch detected! Extra Step required. Installing from deb package."
	echo "Download this file: https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-arm64"
	sleep 5s
	read -p "Is the download done? [y/n]: " ans
	while [ $ans != 'y' ]
	do
		sleep 3s
		read -p "Is it done now? [y/n]: " ans
	done
	sudo apt install $HOME/Downloads/*code*.deb
else
	echo $arch " detected! Installing Snap version."
	sudo snap install code --classic
fi


