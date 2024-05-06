#!/bin/bash
# Quick VS Code installer script
# Does the same as downloading the deb file
# Created date: May 5, 2024
# Source: https://code.visualstudio.com/docs/setup/linux

echo -e "If you are having any issues, likely the script is outdated.\n\
Follow the guide here: https://code.visualstudio.com/docs/setup/linux\nPerforming update 🔩 ...."

# Function to display spinner progress
spinner() {
    local pid=$1
    local delay=0.1
    local spinstr='|/-\'
    while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
        local temp=${spinstr#?}
        printf "[%c]" "$spinstr"
        local spinstr=$temp${spinstr%"$temp"}
        sleep $delay
        printf "\b\b\b"
    done
    printf "   \b\b\b"
}

if sudo apt update &> /dev/null 
then
    echo "Update Successful ✅" 
else
    echo "Update failed ❌"
    echo "Trying again in 5 seconds..."
    for ((i=5; i>=1; i--)); do echo -ne "\r$i"; sleep 1; done
    echo -e "\nRetrying update..."
    if sudo apt update &> /dev/null 
    then
        echo "Update failed. Check your internet connection ❌"
        echo "Exiting now..."
        echo "Please use this to install VS Code instead:"
        echo "https://code.visualstudio.com/docs/setup/linux"
        exit 1
    fi
fi

echo "Installing VS Code 💻"

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg

# Start spinner
spinner $$ & spinner_pid=$!

sudo apt update &> /dev/null
sudo apt install code &> /dev/null
sudo apt autoremove -y
sudo apt autoclean
sudo apt purge

# Stop spinner
kill $spinner_pid &> /dev/null

echo -e "\nVS Code installation completed! ✅"

