#!/bin/bash
sudo apt install curl -y
curl -s https://cis106.com/assets/bash_aliases >> $HOME/.bash_aliases
curl -sS https://starship.rs/install.sh | sh
echo 'eval "$(starship init bash)"' >> $HOME/.bashrc
curl -s https://cis106.com/assets/starship.toml -o $HOME/.conf/
source $HOME/.bashrc
