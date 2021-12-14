alias update='sudo apt update; sudo apt upgrade -y; sudo apt full-upgrade -y'
alias search='apt search '
alias install='sudo apt install -y '
alias remove='sudo apt autoremove -y'
alias clean='sudo apt autoremove -y; sudo apt autoclean; sudo apt purge;'
alias publicip="curl ifconfig.me && echo ''"
alias options="grep '^[[:space:]]*[[:punct:]]'"
alias iponly="grep -Eo '[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}'"
alias pdate="date '+%D %T' | toilet -f term -F border --gay"
alias hddspeedcheck="sudo hdparm -t --direct"
#------------------------#
#----- Git Aliases ------#
#------------------------#
alias add="git add ."
alias push="git push"
alias merge="git merge"
alias pull="git pull"
alias checkout="git checkout -b"
alias commit="git commit -m"
alias creategitignore="touch .gitignore"
#--------------------------#
#--- Virtualbox Aliases ---#
#--------------------------#
alias runningvms="VBoxManage list runningvms"
alias lsvms="VBoxManage list vms"
alias showvminfo="VBoxManage  showvminfo"
alias startvm="VBoxManage startvm --type gui"
alias rmvm="VBoxManage unregister --delete"
alias controlvm="VBoxManage controlvm"
# possible commands to control vm: reset, resume, pause, savestate, poweroff
#--------------------------#
#----------other-----------#
#--------------------------#
alias sshtogcp="ssh adrian@robertalberto.com"
#--------------------------#
#--- Random File Gen ------#
#--------------------------#
alias randomtrivia="curl http://numbersapi.com/random/trivia && echo ''"
alias quoteanime="curl https://animechanapi.xyz/api/quotes/random | jq | grep -E 'quote|character|anime'"
alias quoteron="curl https://ron-swanson-quotes.herokuapp.com/v2/quotes | tr '[\"]' ' ' && echo ''"
alias randomfile="head /dev/urandom -c"
alias randomimg='mx=320;my=256;head -c "$((3*mx*my))" /dev/urandom | convert -depth 8 -size "${mx}x${my}" RGB:-'
alias randomvid='mx=320; my=256; nframes=50; dd if=/dev/urandom bs="$((mx*my*3))" count="$nframes" | ffmpeg -r 25 -s "${mx}x${my}" -f rawvideo -pix_fmt rgb24 -i -'
