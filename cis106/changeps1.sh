#!/bin/bash
sudo apt update
sudo apt install curl -y
cd $HOME
mv .bashrc .bashrc.bk
curl https://raw.githubusercontent.com/ParrotSec/parrot-core/master/parrot-core/root/.bashrc > .bashrc
source .bashrc
