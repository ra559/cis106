#!/bin/bash
curl https://cis106.com/assets/textFiles.sh -o $HOME/.textFiles
chmod u+x $HOME/.textFiles
echo 'alias textFiles="/home/$USER/.textFiles"' >> .bash_aliases
source $HOME/.bashrc

