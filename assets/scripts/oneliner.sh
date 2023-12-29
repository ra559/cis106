#!/bin/bash
arch=`uname -m`
#Update and upgrade
sudo apt update; sudo apt upgrade -y

# Remove unncessary software: 
sudo apt purge apport aisleriot gnome-mahjongg gnome-sudoku gnome-mines thunderbird transmission-common  -y

# Add essential software:
sudo apt install gcc make perl gnome-session-flashback nemo  \
 git python3-pip flameshot pandoc vlc \
gnome-tweaks curl snapd flatpak gnome-software-plugin-flatpak \
gnome-software-plugin-snap wget tree htop net-tools vlc peek \
vim deluge geany tilix neofetch caffeine chromium-browser samba smbclient cifs-utils -y

# VS Code installation:
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

#Replace nautilus with nemo: 
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search

# Disable animations:
gsettings set org.gnome.desktop.interface enable-animations false

#Dark theme:
gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-dark'
gsettings set org.gnome.desktop.interface icon-theme 'Yaru'

#Replace default screenshot tool with flameshot (credit to: https://askubuntu.com/users/950843/philipp) (og: https://askubuntu.com/questions/1036473/ubuntu-18-how-to-change-screenshot-application-to-flameshot)
gsettings set org.gnome.settings-daemon.plugins.media-keys screenshot '[]'
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'flameshot'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command '/usr/bin/flameshot gui'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding 'Print'
