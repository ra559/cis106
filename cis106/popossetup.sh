#!/bin/bash

# UPDATE
sudo apt update; sudo apt upgrade -y; sudo apt full-upgrade -y 2>> errors.log

# Essentials
sudo apt install build-essential dkms linux-headers-$(uname -r) apt-transport-https ca-certificates -y 2> errors.log
sudo apt install curl gnupg-agent software-properties-common -y 2>> errors.log
sudo apt install pip3 vim ubuntu-restricted-extras rar unrar p7zip-full p7zip-rar wget curl snapd -y 2>> errors.log

# check if machine is a VM
mac=`sudo dmidecode -s system-manufacturer`
if [[ $mac = 'innotek GmbH' ]]
then
   sudo apt install virtualbox-guest-x11 2>> errors.log
fi

# Software installation
## Web browsers
sudo snap install brave chromium  2>> errors.log


## Development
### Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - 
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-compose -y 2>> errors.log
sudo groupadd docker; sudo usermod -aG docker $USER; newgrp docker
sudo apt install geany git-all -y 2>> errors.log
sudo snap install code --classic


# Entertaiment
sudo apt install steam -y 2>> errors.log

# Utilities
sudo apt install vlc ffmpeg simplescreenrecorder bashtop htop -y 2>> errors.log
sudo snap install todoist 2>> errors.log


# Communication
sudo snap install slack --classic 2>> errors.log
sudo snap install zoom-client 2>> errors.log

# Fun commands
sudo apt install sl fortune rev cawsay cawthink toilet cmatrix figlet aview lolcat -y 2>> errors.log