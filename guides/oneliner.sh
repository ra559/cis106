#!/bin/bash
#Update and upgrade
sudo apt update; sudo apt upgrade -y

# Remove unncessary software: 
sudo apt purge apport aisleriot gnome-mahjongg gnome-sudoku gnome-mines thunderbird transmission-common  -y

# Add essential software:
sudo apt install gcc make perl gnome-session-flashback nemo  \
 git python3-pip flameshot pandoc vlc \
gnome-tweaks curl snapd flatpak gnome-software-plugin-flatpak \
gnome-software-plugin-snap wget tree htop net-tools vlc peek \
vim deluge geany tilix neofetch caffeine samba smbclient cifs-utils -y

#Replace nautilus with nemo: 
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search

# Disable animations:
gsettings set org.gnome.desktop.interface enable-animations false

#Dark theme:
gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-dark'

#Replace default screenshot tool with flameshot (credit to: https://askubuntu.com/users/950843/philipp) (og: https://askubuntu.com/questions/1036473/ubuntu-18-how-to-change-screenshot-application-to-flameshot)
gsettings set org.gnome.settings-daemon.plugins.media-keys screenshot '[]'
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'flameshot'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command '/usr/bin/flameshot gui'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding 'Print'
