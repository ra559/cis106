#!/bin/bash
echo "Basic System Information"
echo "------------------------"
echo -e "HST:\t$HOSTNAME"
echo -e "USR:\t$USER"
echo -e "WSY:\t$XDG_SESSION_TYPE"
echo -e "KRN:\t$(uname -r)"
echo -e "DST:\t$(uname -n)"
echo -e "RAM:\t"$(free -h | sed 's/ \{1,\}/,/g' | cut -d',' -f2 | head -2 | tail -1)
echo -e "CPU:\t$(lscpu | grep "CPU(s)" | head -1 | awk '{print $2}')"
echo -e "GPU:\t$(glxinfo | grep "video memory" | cut -d':' -f2 | head -1 | cut -d' ' -f2,3)"
echo -e "DSK:\t$( df -h / | awk '{print $2}' | tail -1)"
