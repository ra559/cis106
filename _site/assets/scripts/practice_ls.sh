#!/bin/bash
mkdir $HOME/practicels
wget https://github.com/ra559/cis106/raw/main/exercisefiles/ls_practice.tar.xz -O $HOME/practicels/ls_practice.tar.xz
cd $HOME/practicels/
xz -d $HOME/practicels/ls_practice.tar.xz
tar -xf $HOME/practicels/ls_practice.tar
rm $HOME/practicels/ls_practice.tar
echo "All Done.."
echo "all files downloaded"
ls -1X $HOME/practicels/
