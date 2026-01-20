echo -e "┌───────────────────────────────────────┐"
echo -e "│ Basic information about your system   │"
echo -e "└───────────────────────────────────────┘"
# Individual Characters:
#  * This is the line: ─
#  * These are the cornners:
# ┌ ┐
# └ ┘
# │ 
# This is the code for checking if $1 is set:
[ -z $1 ] && echo "No argument given exiting now" && exit
