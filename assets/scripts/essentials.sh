#!/bin/bash

# Update system
sudo apt update && sudo apt upgrade -y
sudo apt install linux-headers-$(uname -r) -y


# Determine log file name
script_name=$(basename "$0")
log_file="$HOME/${script_name}.error.log"

# Check desktop environment
if [[ "$XDG_CURRENT_DESKTOP" == "GNOME" ]]; then
	essential_packages=(
		pv tar gcc git vim vlc curl make perl nemo most bzip2 tilix geany
		samba snapd boxes xclip rsync figlet flatpak toilet lolcat cowsay 
		cmatrix fortune caffeine smbclient cpufetch flameshot linuxlogo   
		python3-pip net-tools screenfetch build-essential chromium
		gnome-screenshot fonts-recommended exfat-fuse ntfs-3g
		gnome-tweaks chrome-gnome-shell gnome-software-plugin-snap
		gnome-software-plugin-flatpak gnome-shell-extension-manager fonts-symbola
	)
else
	essential_packages=(
		pv tar gcc git vim vlc curl make perl nemo most bzip2 tilix geany
		samba snapd boxes xclip rsync figlet flatpak toilet lolcat cowsay 
		cmatrix fortune caffeine smbclient cpufetch flameshot linuxlogo   
		python3-pip net-tools screenfetch build-essential chromium
		gnome-screenshot fonts-symbola fonts-recommended exfat-fuse ntfs-3g
	)
fi

# Spinner function
spinner() {
	local pid=$1
	local delay=0.1
	local spinstr='/-\|'
	while kill -0 $pid 2>/dev/null; do
		for (( i=0; i<${#spinstr}; i++ )); do
			printf "[%c] " "${spinstr:$i:1}"
			sleep $delay
			printf "\b\b\b\b\b\b"
		done
	done
	printf "   \b\b\b\b"
}

# Set aliases
set_alias(){	
	echo "Setting up bash_aliases..."
	curl -fsSL https://cis106.com/assets/scripts/bash_aliases -o "$HOME/.bash_aliases"
	
	# Ensure .bashrc sources .bash_aliases
	if ! grep -q 'bash_aliases' "$HOME/.bashrc"; then
		echo 'if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases; fi' >> "$HOME/.bashrc"
	fi

	source "$HOME/.bashrc"
	echo "Aliases set!"
}

# Cleanup
broom(){
	echo "Cleaning up... 🧹"
	sudo apt autoremove -y
	sudo apt autoclean
	sudo apt purge -y
	echo "All done!"
}

# Main installer
run(){
	echo -e "The following packages will be installed:\n"
	local column_count=3
	local total_packages=${#essential_packages[@]}
	for ((i=0; i<total_packages; i+=column_count)); do
		printf "%-30s %-30s %-30s\n" \
			"${essential_packages[i]}" \
			"${essential_packages[i+1]:-}" \
			"${essential_packages[i+2]:-}"
	done

	echo -e "\nAny error messages or warnings will be logged in: $log_file"

	for package in "${essential_packages[@]}"; do
		echo "Installing $package... 🔩"
		sudo apt install -y "$package" &> /dev/null &
		install_pid=$!
		spinner $install_pid
		wait $install_pid
		if [[ $? -eq 0 ]]; then
			echo "$package has been installed! ✅"
		else
			echo "$package could not be installed! ❌" | tee -a "$log_file"
		fi
	done

	broom
	set_alias
}

# Help function
help(){
	echo -e "essentials.sh"
	echo -e "\n\033[1mNAME\033[0m"
	echo -e "\tessentials.sh - Install essential programs for cis106"
	echo -e "\n\033[1mSYNOPSIS\033[0m"
	echo -e "\tessentials.sh [OPTION]"
	echo -e "\n\033[1mDESCRIPTION\033[0m"
	echo -e "\tA basic bash script to install necessary software that will be used during the semester."
	echo -e "\n\033[1mOPTIONS\033[0m"
	echo -e "\t\033[1m-a\033[0m\tInstall all the necessary software and the bash_aliases"
	echo -e "\t\033[1m-b\033[0m\tInstall only the bash_aliases"
	echo -e "\t\033[1m-h\033[0m\tDisplays this help/man makeshift message"
	echo -e "\n\033[1mEXAMPLES\033[0m"
	echo -e "\t./essentials.sh -a\tInstalls the programs and aliases"
	echo -e "\t./essentials.sh -b\tInstalls only the bash_aliases"
}

# Internet check
if ! ping -c 1 google.com &>/dev/null; then
	echo "No internet connection. Please connect to the internet."
	exit 1
fi

# Parse options
while getopts ":ab:h" opt; do
	case "$opt" in
		a) run ;;
		b) set_alias ;;
		h) help; exit 0 ;;
		\?) echo "Invalid option: -$OPTARG"; exit 1 ;;
	esac
done
