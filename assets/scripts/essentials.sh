#!/bin/bash

# Function to display spinner
spinner() {
    local pid=$1
    local delay=0.1
    local spinstr='/-\|'
    while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
        for (( i=0; i<${#spinstr}; i++ )); do
            printf "[%c] " "${spinstr:$i:1}"
            sleep $delay
            printf "\b\b\b\b\b\b"
        done
    done
    printf "   \b\b\b\b"
}

echo -e "Installing Essential packages:\n \
\t bzip2 tar build-essential linux-headers \n \
\t flameshot vlc geany tilix gcc make perl \n \
\t nemo git python3-pip  nemo git python3-pip \n \
\t net-tools vim screenfetch caffeine samba \n \
\t smbclient gnome-tweaks snapd flatpak \n \
\t gnome-software-plugin-flatpak gnome-software-plugin-snap \ 
\t toilet figlet lolcat boxes"

# Define the package string
packages="bzip2 tar build-essential linux-headers-$(uname -r) flameshot vlc geany tilix gcc make perl nemo git python3-pip nemo git python3-pip net-tools vim screenfetch caffeine samba smbclient gnome-tweaks snapd flatpak gnome-software-plugin-flatpak gnome-software-plugin-snap toilet figlet lolcat boxes"

# Split the string into an array using whitespace as delimiter
IFS=' ' read -r -a package_array <<< "$packages"

# Function to display progress bar
progressbar() {
    local duration=$1
    local progress=0
    local progress_char="#"
    local progress_bar=""

    while [ $progress -le $duration ]; do
        progress_bar+="="
        ((progress++))
    done

    echo -ne "\rProgress: [$progress_bar]"
}

# Loop through each package in the array
for package in "${package_array[@]}"; do
    echo "Installing $package...🔩"
    spinner $$ & spinner_pid=$!
    if sudo apt install -y "$package" &> /dev/null; then
        echo "$package has been installed! ✅"
    else
        echo "$package could not be installed! ❌" | tee -a $0.error.log 
    fi
    kill $spinner_pid
done

echo "Clean up...🧹"
sudo apt autoremove -y
sudo apt autoclean
sudo apt purge
echo "All Done!"

