#!/bin/bash

# Welcome sysinfo script

# Hostname
HOSTNAME=$(hostname)

# OS Version
OS_VERSION=$(source /etc/os-release && echo "$PRETTY_NAME")

# Current Network Name (Wi-Fi SSID if available)
NETWORK_NAME=$(iwgetid -r 2>/dev/null || echo "Not connected via Wi-Fi")

# IP Addresses
IPV4=$(hostname -I | awk '{print $1}')
#IPV6=$(ip -6 addr show scope global | awk '/inet6/ {print $2}' | cut -d/ -f1 | head -n 1)

# Open Ports (comma-separated)
# OPEN_PORTS=$(ss -tuln | awk 'NR>1 {print $5}' | grep -oE '[0-9]+$' | sort -n | uniq | paste -sd, -)

# Date of Install (filesystem creation date)
# INSTALL_DATE=$(sudo tune2fs -l $(df / | tail -1 | awk '{print $1}') 2>/dev/null | grep 'Filesystem created:' | cut -d':' -f2- | xargs)

# Date of Last Update (APT logs)
LAST_UPDATE=$(zgrep -h 'Start-Date' /var/log/apt/history.log* 2>/dev/null | tail -1 | cut -d' ' -f2-)
LAST_UPDATE=${LAST_UPDATE:-Unavailable}

# Total Installed Packages
TOTAL_PACKAGES=$(dpkg -l | grep ^ii | wc -l)

# Uptime
UPTIME=$(uptime -p)

# Prepare box content
INFO_LINES=(
" HOSTNAME:              $HOSTNAME"
" OS VERSION:            $OS_VERSION"
" CURRENT NETWORK NAME:  $NETWORK_NAME"
" IP V4 ADDRESS:         $IPV4"
" IP V6 ADDRESS:         N/A"
" LIST OF OPEN PORTS:    N/A"
" DATE OF INSTALL:       N/A"
" DATE OF LAST UPDATE:   $LAST_UPDATE"
" TOTAL PACKAGES:        $TOTAL_PACKAGES"
" UPTIME:                $UPTIME"
)

# Determine the width of the longest line
MAX_WIDTH=0
for line in "${INFO_LINES[@]}"; do
    [ ${#line} -gt $MAX_WIDTH ] && MAX_WIDTH=${#line}
done
BOX_WIDTH=$((MAX_WIDTH + 2))

# Print top border
printf "┌"
printf '─%.0s' $(seq 1 "$BOX_WIDTH")
printf "┐\n"

# Print each line with padding and vertical bars
for line in "${INFO_LINES[@]}"; do
    printf "│ %-*s │\n" "$MAX_WIDTH" "$line"
done

# Print bottom border
printf "└"
printf '─%.0s' $(seq 1 "$BOX_WIDTH")
printf "┘\n"

