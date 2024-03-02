#!/bin/bash
# Using cd in a script
changeMsg="Changing the current working directory ... "
currentDir="Current working directory is: $PWD"
echo "The current user is: $USER"
echo "$USER's home directory is " $HOME
echo -e "\n$currentDir\n$changeMsg"
cd $HOME/Documents/
echo -e "$currentDir\n$changeMsg"
cd $HOME/Downloads/
echo -e "\tPrevious PWD:\t$OLDPWD"
echo -e "\tCurrent PWD:\t$PWD"
cd $HOME
# Using ls in a script
echo -e "\nThis is the Linux File System: "
ls -lgGh --time-style=+%D --color=auto / 
echo -e "\nLong list of all non-hidden files in $HOME"
ls -lgGh --time-style=+%D --color=auto
echo -e "\nLong list of all non-hidden files in $HOME/Downloads"
ls -lgGh --time-style=+%D --color=auto $HOME/Downloads
echo -e "\nLong list of all non-hidden files in $HOME/Documents"
ls -lgGh --time-style=+%D --color=auto $HOME/Documents
echo -e "\nLong list of all non-hidden files in $HOME/Pictures"
ls -lgGh --time-style=+%D --color=auto $HOME/Pictures
