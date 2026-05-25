#!/bin/bash
help(){
	bold=$(tput bold)
	reset=$(tput sgr0)
	tab=$(printf '\t')

cat << EOF
${bold}${0^^}${reset}
${script_name}
${bold}SYNOPSIS${reset}
${tab}essentials.sh [OPTION]

${bold}DESCRIPTION${reset}
${tab}A basic bash script to install necessary software that will be used during the semester.

${bold}OPTIONS${reset}
${tab}-a${tab}Install all the necessary software and the bash_aliases
${tab}-i${tab}Install all the necessary software only
${tab}-b${tab}Install only the bash_aliases
${tab}-f${tab}Install only the flatpak programs
${tab}-h${tab}Displays this help/man makeshift message

${bold}EXAMPLES${reset}
${tab}./essentials.sh -a${tab}Installs the programs and aliases
${tab}./essentials.sh -b${tab}Installs only the bash_aliases
EOF
}

help