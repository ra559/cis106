#!/bin/bash

sudo apt update &> /dev/null
sudo apt install curl -y &> /dev/null
mv $HOME/.bashrc $HOME/.bashrc_midterm
curl https://robertalberto.com/cis106/ubuntubashrcdefault > .bashrc
source $HOME/.bashrc
