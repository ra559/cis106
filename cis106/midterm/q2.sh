#!/bin/bash
if [ $PWD != $HOME ]; then cd $HOME; fi
wget https://robertalberto.com/cis106/samplesite.tar.xz
xz -d samplesite.tar.xz




