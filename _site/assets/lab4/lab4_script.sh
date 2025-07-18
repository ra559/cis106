#!/bin/bash
# A script to practice:
# 1. Environment variables
# 2. User defined variables
# 3. ls, pwd, and cd

# Creating some variables
cis="$HOME/cis106"
downloads="$HOME/Downloads"
msg1="The current directory is: \t"
msg2="\nAll files (including hidden files ) in"

# Using cd in a script
echo "The current user is $USER. It's 'home directory is $HOME"
cd $downloads 
echo -e $msg1 
pwd
cd $cis
echo -e $msg1 
pwd 

#Using ls in a script
echo -e "$msg2 /"
ls -mA --color=auto / 

echo -e "$msg2 $HOME"
ls -mA --color=auto $HOME

echo -e "$msg2 $downloads"
ls -mA --color=auto $downloads

echo -e "$msg2 $cis"
ls -mA --color=auto $cis
