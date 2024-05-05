#!/bin/bash
echo -e "Installing Essential packages:\n \
\t bzip2 tar build-essential linux-headers \n \
\t flameshot vlc geany tilix gcc make perl \n \
\t nemo git python3-pip  nemo git python3-pip \n \
\t net-tools vim screenfetch caffeine samba \n \
\t smbclient gnome-tweaks snapd flatpak \n \
\t gnome-software-plugin-flatpak gnome-software-plugin-snap \ 
\t toilet figlet lolcat boxes"

# Define the package string
packages="bzip2 tar build-essential linux-headers flameshot vlc geany tilix gcc make perl nemo git python3-pip nemo git python3-pip net-tools vim screenfetch caffeine samba smbclient gnome-tweaks snapd flatpak gnome-software-plugin-flatpak gnome-software-plugin-snap toilet figlet lolcat boxes er145"

# Split the string into an array using whitespace as delimiter
IFS=' ' read -r -a package_array <<< "$packages"

# Loop through each package in the array
for package in "${package_array[@]}"; do
    echo "Installing $package...🔩"
    if sudo apt install -y "$package" &> /dev/null
    then
        echo "$package has been installed! ✅"
    else
        echo "$package could not be installed! ❌" | tee -a $0.error.log 
    fi
done

echo "Clean up...🧹"
sudo apt autoremove -y
sudo apt autoclean
sudo apt purge
echo "All Done!"



