#!/bin/bash
mkdir $HOME/challenge-Lab6
cd $HOME/challenge-Lab6
wget https://raw.githubusercontent.com/ra559/cis106/refs/heads/main/assets/lab6/lab6ChallengeFiles.tar.xz 
tar --strip-components=1 -xvf lab6ChallengeFiles.tar.xz lab6ChallengeFiles/ -C ./
rm lab6ChallengeFiles.tar.xz
echo -e "\nThe $HOME/challenge-Lab6 directory has been created"
echo -e "Files in $HOME/challenge-Lab6\n"
ls -1X --color=always $HOME/challenge-Lab6/