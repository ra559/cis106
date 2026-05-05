#!/bin/bash
# Script for installing VS Code and VS Code extensions
# Created date: May 5, 2024

echo -e "If you are having any issues, likely the script is outdated.\n\
Follow the guide here: https://code.visualstudio.com/docs/setup/linux\nPerforming update 🔩 ...."

# Function to display a spinner
spinner() {
	local pid=$1
	local delay=0.1
	local spinstr=('⠋' '⠙' '⠹' '⠸' '⠼' '⠴' '⠦' '⠧' '⠇' '⠏')

	tput civis

	while kill -0 "$pid" 2>/dev/null; do
		for s in "${spinstr[@]}"; do
			printf "[%s] " "$s"
			sleep "$delay"
			printf "\b\b\b\b\b\b"
		done
	done

	printf "   \b\b\b\b"
	tput cnorm
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
if [ -f '/etc/apt/sources.list.d/vscode.sources' ]; then
	echo "VS Code repository already exists. Skipping repository setup."
else
	echo "Setting up VS Code repository..."
	wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
	sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
	echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
	rm -f packages.microsoft.gpg
fi
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
        code --install-extension "$ext" && echo "$ext installed successfully ✅"
    fi
done

