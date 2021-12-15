#!/bin/bash
# Update the system
sudo apt update; sudo apt upgrade -y

product=`sudo dmidecode -s system-product-name`

# install guest additions
if [ $product = 'VirtualBox' ]
then
	sudo apt install virtualbox-guest-additions-iso -y
	sudo apt install build-essential linux-headers-$(uname -r) -y
	sudo apt install virtualbox-guest-x11 -y
fi
# Remove unncessary software: 
sudo apt purge apport aisleriot gnome-mahjongg gnome-sudoku gnome-mines thunderbird transmission-common  -y

# add essential software
sudo apt install gcc make perl nemo git python3-pip flameshot vlc \
gnome-tweaks curl snapd flatpak gnome-software-plugin-flatpak \
gnome-software-plugin-snap wget tree htop net-tools peek \
vim deluge geany tilix neofetch caffeine samba smbclient cifs-utils -y

# add ubuntu restricted extras
sudo apt install ubuntu-restricted-extras -y
# Disable animations:
gsettings set org.gnome.desktop.interface enable-animations false

#Dark theme:
gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-dark'
gsettings set org.gnome.desktop.interface icon-theme 'Yaru'

#Replace default screenshot tool with flameshot 
# (credit to: https://askubuntu.com/users/950843/philipp) (og: https://askubuntu.com/questions/1036473/ubuntu-18-how-to-change-screenshot-application-to-flameshot)
gsettings set org.gnome.settings-daemon.plugins.media-keys screenshot '[]'
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'flameshot'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command '/usr/bin/flameshot gui'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding 'Print'

# Reboot the system
echo "System rebooting in 5 seconds"
COUNTER=0
for OUTPUT in $(seq 5)
do
        sleep 1
        echo "$COUNTER"
        let COUNTER++
done
echo "rebooting now"
reboot
