#!/bin/bash
# Script for installing VS Code and VS Code extensions
# Created date: May 5, 2024

echo -e "If you are having any issues, likely the script is outdated.\n\
Follow the guide here: https://code.visualstudio.com/docs/setup/linux\nPerforming update 🔩 ...."

# Function to display a spinner
spinner() {
    local pid=$1
    local delay=0.1
    local spinstr='|/-\'
    while ps -p "$pid" > /dev/null; do
        printf "[%c]" "$spinstr"
        spinstr=${spinstr:1}${spinstr:0:1}
        sleep $delay
        printf "\b\b\b"
    done
    printf "   \b\b\b"
}

# First update attempt
if ! sudo apt update &> /dev/null; then
    echo "Update failed ❌"
    echo "Trying again in 5 seconds..."
    for ((i=5; i>=1; i--)); do echo -ne "\r$i"; sleep 1; done
    echo -e "\nRetrying update..."
    
    if ! sudo apt update &> /dev/null; then
        echo "Update failed. Check your internet connection ❌"
        echo "Exiting now..."
        echo "Please use this to install VS Code instead:"
        echo "https://code.visualstudio.com/docs/setup/linux"
        exit 1
    fi
fi

echo "Installing VS Code 💻"

# Install VS Code
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg

# Install with spinner
sudo apt update &> /dev/null &
spinner $!
wait

sudo apt install -y code &> /dev/null &
spinner $!
wait

sudo apt autoremove -y
sudo apt autoclean

echo -e "\nVS Code installation completed! ✅"

# VS Code Path
CODEPATH=$(command -v code)
echo "Code's path is: $CODEPATH"
[ -f "$CODEPATH" ] && echo "Path exists.." || exit 1

# Ensure VS Code is in PATH
echo 'export PATH="$PATH:/usr/bin"' | sudo tee -a /etc/profile
source $HOME/.bashrc

# Get extensions list
mapfile -t extensions < <(curl -s https://cis106.com/assets/scripts/vscode_extensions.txt)
INSTALLED=$(code --list-extensions)

# Install Extensions
for ext in "${extensions[@]}"; do
    if echo "$INSTALLED" | grep -q "^$ext$"; then
        echo "Extension $ext is already installed ✅"
    else
        echo "Installing extension: $ext...🔩"
        code --install-extension "$ext" && echo "$ext installed successfully ✅"
    fi
done

