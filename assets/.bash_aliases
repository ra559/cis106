#----------------------#
#- Package Management -#
#----------------------#
alias update='sudo apt update; sudo apt upgrade -y; sudo apt full-upgrade -y; sudo snap refresh'
alias search='apt search '
alias install='sudo apt install -y '
alias sinstall='sudo snap install '
alias pinstall='pip3 install '
alias remove='sudo apt autoremove -y'
alias clean='sudo apt autoremove -y; sudo apt autoclean; sudo apt purge;'
alias totalpack='dpkg --get-selections | wc --lines'
alias isinstalled='dpkg --get-selections | grep -i '
alias publicip="curl ifconfig.me && echo ''"
alias options="grep '^[[:space:]]*[[:punct:]]'"
alias iponly="grep -Eo '[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}'"
alias pdate="date '+%D %T' | toilet -f term -F border --gay"
alias hddspeedcheck="sudo hdparm -t --direct"
alias intalive="/home/adrian/projects/bashscripts/intAlive.sh"
alias rpauto="sed 's/auto/\n/g'"
#------------------------#
#----- Ls Aliases -------#
#------------------------#
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -a'
alias lA='ls -A'
alias lr='ls -R'
alias lsoptions="man ls | grep '^[[:space:]]*[[:punct:]]'"
alias lshelp="ls --help | grep '^[[:space:]]*[[:punct:]]'"
alias lsnodir="ls -FSsh  | grep -v '/'"
alias lsdirsize="du -h --max-depth=1"
alias lsnoperm="ls -GAgthtl --color=always | sed -re 's/^[^^ ]* //'"

#------------------------#
#----- Git Aliases ------#
#------------------------#
alias add="git add ."
alias push="git push"
alias merge="git merge"
alias pull="git pull"
alias checkout="git checkout -b"
alias commit="git add .; git commit -m"
alias creategitignore="touch .gitignore"
alias qpush="git add .; git commit -m 'Task: quick push'; git push"
alias clone='git clone'
alias fpush="git add .; git commit -m 'Task: added quick fixes'; git push"
alias gitp='_gitp2() { git pull && git add . && git commit -m "$1" &&  git push; }; _gitp2'
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
#--------------------------#
#--- Random File Gen ------#
#--------------------------#
alias randomtrivia="curl http://numbersapi.com/random/trivia && echo ''"i
alias quoteron="curl --silent https://ron-swanson-quotes.herokuapp.com/v2/quotes | tr -d '[:punct:]'"
alias randomfile="head /dev/urandom -c"
alias randomimg='mx=320;my=256;head -c "$((3*mx*my))" /dev/urandom | convert -depth 8 -size "${mx}x${my}" RGB:-'
alias randomvid='mx=320; my=256; nframes=50; dd if=/dev/urandom bs="$((mx*my*3))" count="$nframes" | ffmpeg -r 25 -s "${mx}x${my}" -f rawvideo -pix_fmt rgb24 -i -'
alias wavesounds="play -n synth brownnoise synth pinknoise mix synth sine amod 0.3 10"
alias randomaudio="sox -c1 -n randomaudio.wav synth 10 whitenoise band -n 100 20 band -n 50 20 gain +25  fade h 1 10 1"
alias installStarshipShell="curl -sS https://starship.rs/install.sh | sh"
alias launchzoompccc="xdg-open https://pccc.zoom.us/j/94174220833?pwd=cGRLREEvb0tJOGFuWmRvemZYbzA5UT09"

alias textFiles="/home/$USER/.textFiles"
