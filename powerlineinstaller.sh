#!/bin/bash
# requirements
sudo apt update; sudo apt upgrade -y
sudo apt install curl git python3-pip fortune cowsay neofetch -y

# make sure pwd is home
if [ $PWD != $HOME ]; then cd $HOME; fi

# Download necessary files.
wget https://robertalberto.com/powerlinefiles.tar.gz
tar zxvf powerlinefiles.tar.gz

# backup current bashrc and copy new config
mv .bashrc .bash.bk 
cp powerlinefiles/.bashrc ./
cp powerlinefiles/.bash_aliases ./

# install powerline and git status
pip3 install --user powerline-status
pip3 install powerline-gitstatus
mv .bashrc .bash.bk 
cp powerlinefiles/.bashrc ./

# backup current powerline color scheme and theme
mv .local/lib/python3.8/site-packages/powerline/config_files/colorschemes/default.json .local/lib/python3.8/site-packages/powerline/config_files/colorschemes/default.json.bk
mv .local/lib/python3.8/site-packages/powerline/config_files/themes/shell/default.json .local/lib/python3.8/site-packages/powerline/config_files/themes/shell/default.json.bk

# copy config
cp powerlinefiles/default.json .local/lib/python3.8/site-packages/powerline/config_files/colorschemes/default.json
cp powerlinefiles/default-theme.json .local/lib/python3.8/site-packages/powerline/config_files/themes/shell/default.json

# Install fonts
cd Downloads
git clone https://github.com/powerline/fonts.git --depth=1 fonts
./fonts/install.sh
cd $HOME

# ensure that the configuration persists
mkdir -p .config/powerline/colorschemes/
mkdir -p .config/powerline/themes/shell/

cp .local/lib/python3.8/site-packages/powerline/config_files/colorschemes/default.json .config/powerline/colorschemes/
cp .local/lib/python3.8/site-packages/powerline/config_files/themes/shell/default.json .config/powerline/themes/shell/

# restart bash
source .bashrc
