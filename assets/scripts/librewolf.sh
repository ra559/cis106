#!/bin/bash

echo "If the script hangs after the line: written to stdout, then enter your password and press enter!"
# Function to display spinner
spinner() {
    local pid=$1
    local delay=0.1
    local spinstr='|/-\'
    while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
        local temp=${spinstr#?}
        printf "[%c] " "$spinstr"
        local spinstr=$temp${spinstr%"$temp"}
        sleep $delay
        printf "\b\b\b\b\b\b"
    done
    printf "   \b\b\b\b"
}

# Check if source is already added
if grep -q "deb.librewolf.net" /etc/apt/sources.list.d/librewolf.sources; then
    echo "Librewolf source already added."
else
    # Add source if not already added
    distro=$(if echo " una bookworm vanessa focal jammy bullseye vera uma " | grep -q " $(lsb_release -sc) "; then lsb_release -sc; else echo focal; fi)

    wget -O- https://deb.librewolf.net/keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/librewolf.gpg

    sudo tee /etc/apt/sources.list.d/librewolf.sources << EOF > /dev/null
Types: deb
URIs: https://deb.librewolf.net
Suites: $distro
Components: main
Architectures: amd64
Signed-By: /usr/share/keyrings/librewolf.gpg
EOF
    echo "Librewolf source added."
fi

# Start spinner
spinner $$ & spinner_pid=$!

# Update and install Librewolf
if sudo apt update &> /dev/null; then
    sudo apt install librewolf -y > /dev/null 2> error_librewolfinstaller.log
    sudo apt autoremove -y
    sudo apt autoclean
    sudo apt purge
    echo -e "\nLibrewolf installation completed! ✅"
else
    echo -e "\nUpdate failed. Check your internet connection ❌"
    echo "Exiting now..."
    echo "Please use this to install Librewolf instead:"
    echo "https://librewolf.net/installation/debian/"
    exit 1
fi

# Stop spinner
kill $spinner_pid &> /dev/null

