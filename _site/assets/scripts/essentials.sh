#!/bin/bash
set -Eeuo pipefail
trap 'echo -e "\033[1;31m❌ Script failed at line $LINENO: $BASH_COMMAND\033[0m"' ERR

# --- Color helpers with emojis ---
info()    { echo -e "\033[1;34mℹ️  [INFO]\033[0m $*"; }
success() { echo -e "\033[1;32m✅ [SUCCESS]\033[0m $*"; }
warn()    { echo -e "\033[1;33m⚠️  [WARNING]\033[0m $*"; }
fatal()   { echo -e "\033[1;31m❌ [FATAL]\033[0m $*" >&2; exit 1; }

# Determine log file name
script_name=$(basename "$0")
log_file="$HOME/${script_name}.error.log"

# Package selection
if [[ "${XDG_CURRENT_DESKTOP:-}${DESKTOP_SESSION:-}" == *"GNOME"* ]]; then
	essential_packages=(
		pv git gcc vim vlc
		curl make most nemo perl tar tree wget
		bzip2 geany samba tilix xclip
		boxes cowsay figlet lolcat rsync snapd toilet
		ntfs-3g caffeine cmatrix flatpak flameshot fortune linuxlogo
		cpufetch exfat-fuse net-tools smbclient
		chromium screenfetch
		gnome-tweaks python3-pip
		build-essential fonts-symbola
		fonts-recommended gnome-screenshot
		chrome-gnome-shell
		gnome-software-plugin-snap gnome-software-plugin-flatpak
		gnome-shell-extension-manager
		gnome-shell-extension-caffeine
		gnome-shell-extension-dash-to-panel
		gnome-shell-extension-system-monitor
		gnome-shell-extension-tiling-assistant
	)
else
	essential_packages=(
		pv git gcc vim vlc
		curl make most nemo perl tar tree wget
		bzip2 geany samba tilix xclip
		boxes cowsay figlet lolcat rsync snapd toilet 
		ntfs-3g caffeine cmatrix flatpak flameshot fortune linuxlogo
		cpufetch exfat-fuse net-tools smbclient
		chromium screenfetch
		gnome-tweaks python3-pip
		build-essential fonts-symbola
		fonts-recommended gnome-screenshot
	)
fi

# Spinner function
spinner() {
	local pid=$1
	local delay=0.1
	local spinstr='/-\|'
	tput civis  # hide cursor
	while kill -0 $pid 2>/dev/null; do
		for (( i=0; i<${#spinstr}; i++ )); do
			printf "[%c] " "${spinstr:$i:1}"
			sleep $delay
			printf "\b\b\b\b\b\b"
		done
	done
	printf "   \b\b\b\b"
	tput cnorm  # restore cursor
}

# System update
sys_update(){
	if ping -q -c 1 -W 2 8.8.8.8 >/dev/null; then
		success "Internet Connection: OK"
		info "Updating system packages..."
		sudo apt update && sudo apt upgrade -y
		info "Installing headers for kernel: $(uname -r)"
		sudo apt install "linux-headers-$(uname -r)" -y
	else
		fatal "Internet Connection: Not available. Cannot proceed."
	fi
}

# Set aliases
set_alias(){
	info "Setting up bash_aliases from cis106.com..."
	curl -fsSL https://cis106.com/assets/scripts/bash_aliases -o "$HOME/.bash_aliases"

	if ! grep -q 'bash_aliases' "$HOME/.bashrc"; then
		info "Appending bash_aliases source line to ~/.bashrc"
		echo 'if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases; fi' >> "$HOME/.bashrc"
	fi

	source "$HOME/.bashrc"
	success "Aliases have been set!"
}

enable_flathub() {
	if command -v flatpak &>/dev/null; then
		info "Adding Flathub repository to Flatpak..."
		flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
		success "Flathub repository added (or already exists)"
	else
		warn "Flatpak is not installed. Skipping Flathub setup."
	fi
}

update_xdg_data_dirs() {
	info "Updating XDG_DATA_DIRS with Flatpak paths..."

	: "${XDG_DATA_DIRS:=/usr/local/share:/usr/share}"
	flatpak_paths="/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share"

	if [[ "$XDG_DATA_DIRS" != *"/var/lib/flatpak/exports/share"* ]]; then
		export XDG_DATA_DIRS="$flatpak_paths:$XDG_DATA_DIRS"
		info "Exported updated XDG_DATA_DIRS"
	fi

	if ! grep -q "XDG_DATA_DIRS=.*flatpak" "$HOME/.bashrc"; then
		echo "" >> "$HOME/.bashrc"
		echo "# Add Flatpak paths to XDG_DATA_DIRS" >> "$HOME/.bashrc"
		echo "export XDG_DATA_DIRS=\"$flatpak_paths:\$XDG_DATA_DIRS\"" >> "$HOME/.bashrc"
		success "Added XDG_DATA_DIRS to ~/.bashrc"
	else
		warn "XDG_DATA_DIRS already updated in ~/.bashrc"
	fi
}

# Cleanup
broom(){
	info "Cleaning up unused packages and cache..."
	sudo apt autoremove -y
	sudo apt autoclean
	sudo apt purge -y
	success "System cleanup complete!"
}

# Help screen
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

# Main installer
run(){
	sudo -v || fatal "You must have sudo privileges to run this script."

	sys_update
	clear
	info "The following packages will be installed:\n"

	local column_count=3
	local total_packages=${#essential_packages[@]}
	for ((i=0; i<total_packages; i+=column_count)); do
		printf "%-30s %-30s %-30s\n" \
			"${essential_packages[i]}" \
			"${essential_packages[i+1]:-}" \
			"${essential_packages[i+2]:-}"
	done

	echo -e "\n⚠️  Any error messages or warnings will be logged in: $log_file"

	for package in "${essential_packages[@]}"; do
		if dpkg -s "$package" &>/dev/null; then
			warn "$package is already installed. Skipping."
			continue
		fi

		info "Installing $package..."
		sudo apt install -y "$package" &> /dev/null &
		install_pid=$!
		spinner $install_pid
		wait $install_pid
		if [[ $? -eq 0 ]]; then
			success "$package installed"
		else
			warn "$package could not be installed!" | tee -a "$log_file"
		fi
	done

	broom
	set_alias
	enable_flathub
	update_xdg_data_dirs

	if [[ -s "$log_file" ]]; then
		warn "These are the error messages (if any):"
		cat "$log_file"
	else
		success "No errors recorded in $log_file"
	fi
}

# Option parsing
while getopts ":ab:h" opt; do
	case "$opt" in
		a) run ;;
		b) set_alias ;;
		h) help; exit 0 ;;
		\?) fatal "Invalid option: -$OPTARG" ;;
	esac
done
