#!/bin/bash 
set -euo pipefail # prevents continuation on invalid state 
shopt -s nullglob # to suppress null matches (when a glob matches nothing) 
# --- 
# Basic script to practice the tar and cpio command 
# Last edited: April 28th 2026 
# -- 

dir="$HOME/managingData" 
dirtree=("$dir"/practice{1..2}) 
# Creates array of directories 
mkdir -p "${dirtree[@]}" 
printf 'The following directories were created:\n\t%s\n' "${dirtree[@]}" 

# If fortune is missing:
# ---------------------
# set -e exits when a simple command fails (non-zero exit),
# unless the command is used in a control-flow context (if, &&, ||, etc.)
#
# Pipelines:
# ----------
# - Without pipefail: only the last command affects exit status
# - With pipefail (enabled above): any failure causes the pipeline to fail
#
# WARNING:
# --------
# set -e is not a global safety net. Its behavior is context-dependent.
# For explicit control, prefer:
# command -v fortune >/dev/null || {
#     printf 'fortune not found\n' >&2
#     exit 1
# }
command -v fortune >/dev/null

# Simple loop to generate the files in each directory
# Will create 5 files in each directory
# If more directories are needed, first increase the expansion practice{1..N}
# Then add the code after the second fortune command
for i in {1..5}; do 
    fortune > "${dirtree[0]}/fortune_$i.txt" 
    fortune > "${dirtree[1]}/quote_$i.txt" 
done 

# Reports to the user the files created
for d in "${dirtree[@]}"; do 
    printf '\n%s:\n' "$d" 
    files=("$d"/*) 
    if (( ${#files[@]} )); then 
        printf '\t%s\n' "${files[@]}" 
    else 
        printf '\t(no files)\n' 
    fi 
done

# Note: 
# See the following resources for examples: 
#  - https://cis106.com/bash/arrays
#  - https://cis106.com/bash/controlflow/
