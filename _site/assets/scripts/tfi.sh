#!/bin/bash
sudo apt update
curl -s https://cis106.com/assets/scripts/ansi_escape_codes.sh -o $HOME/.ansi_codes.sh
source $HOME/.ansi_codes.sh

dependencies(){
    echo "The following packages will be installed"
    echo -e "$Magenta\t1. Toilet\n\t2. Figlet\n\t3. Lolcat\n\t4. Boxes$Reset"
    echo "Installing dependencies"
    sudo apt update &> /dev/null
    sudo apt install toilet figlet boxes lolcat -y &> /dev/null
    clear
}

welcome(){
 echo -en " This script will download the script:$Magenta textFiles.sh$Reset\n\
$Magenta textFiles.sh $Reset can be used to download sample text files.\n The following files will be created if they don't exits\n\
$BrightYellow \t .basrc$Reset and $BrightYellow.bash_aliases$Reset \n CONTINUE? [$Green Y $Reset/$Red N$Reset ]: "
 read
 ans=$(echo "${REPLY:0:1}" | tr '[:lower:]' '[:upper:]')
}

check_for_files(){
    [ ! -e $HOME/.bashrc ] && cp /etc/skel/.bashrc $HOME/ || echo "$HOME/.bashrc exist" 
    [ ! -e $HOME/.bash_aliases ] && touch $HOME/.bash_aliases || echo "$HOME/.bash_aliases exist"
}

download_script (){
    curl -s https://cis106.com/assets/textFiles.sh -o $HOME/.textFiles.sh
    chmod +x $HOME/.textFiles.sh
    echo -e "$HOME/.textFiles.sh:""$BackgroundMagenta""$BrightWhite""Download complete""$Reset"
}

set_alias (){
    echo "alias textfiles='bash $HOME/.textFiles.sh'" >> $HOME/.bash_aliases
    source $HOME/.bashrc
    source $HOME/.bash_aliases
    echo -e "Setting Alias:""$BackgroundMagenta""$BrightWhite""Alias Set""$Reset"
}

dependencies 
welcome

if [ $ans != 'Y' ]
then
    toilet -f future "See you space cowboy"  | boxes -d parchment | lolcat
    exit 1
else
    echo -e "\n""$BrightRed""Checking if files exist:$Reset"
    check_for_files
    echo -e "\n""$BrightRed""Downloading textFiles.sh""$Reset"
    download_script
    set_alias
    alias | grep "textFiles"
    echo -e "\n"
    echo -e "\nYou are all set!\nTo use the script, type: textfiles + option.\nEx: textfiles -h for help\n" | boxes -d dog | lolcat
    echo -e "\n"
    
fi
