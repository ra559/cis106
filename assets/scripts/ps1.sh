download_sysinfo(){
        wget https://cis106.com/assets/scripts/sysinfo.sh
        mv sysinfo.sh .sysinfo.sh
}

PROMPT_COMMAND='PS1_CMD1=$(ip route get 1.1.1.1 | awk -F"src " '"'"'NR == 1{ split($2, a," ");print a[1]}'"'"')'; PS1='╭(\[\e[1m\]\u\[\e[0m\]@\[\e[1m\]\h\[\e[0m\]) ─ [\[\e[96m\]\w\[\e[0m\]] ─ \[\e[92m\]\d\[\e[0m\] \[\e[92m\]\t\[\e[0m\] ─ [\[\e[38;5;196m\]${PS1_CMD1}\[\e[0m\]]\n╰\[\e[1m\]\$\[\e[0m\] '
[ -f "$HOME/.sysinfo.sh" ] && source "$HOME/.sysinfo.sh" || download_sysinfo
