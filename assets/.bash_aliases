# git aliases
alias add="git add ."
alias push="git push"
alias merge="git merge"
alias pull="git pull"
alias commit="git commit -m"
alias qpush="git add .; git commit -m 'quick push'; git push"
alias fpush='git add .; git commit -m '\''Task: added quick fixes'\''; git push'
alias gitp='_gitp2() { git pull && git add . && git commit -m "$1" &&  git push; }; _gitp2'

# ls aliases
alias lA="ls -A"
alias la="ls -a"
alias ll="ls -alF"
alias lr="ls -R"
alias lsnoperm="ls -lGAgtht1 --color=always | cut -d ' ' --complement -s -f1"
alias lsops='man ls | grep '\''^[[:space:]]*[[:punct:]]'\'''
alias lsdirsize='du -h --max-depth=1'
alias lstail='_tail_ls() { ls -l "$1" | tail ;}; _tail_ls'

# for generating files
alias randomfile='head /dev/urandom -c'
alias randomaudio='sox -c1 -n randomaudio.wav synth 10 whitenoise band -n 100 20 band -n 50 20 gain +25  fade h 1 10 1'
alias randomtrivia='curl http://numbersapi.com/random/trivia -s && echo ""'
alias randomimg='mx=320;my=256;head -c "$((3*mx*my))" /dev/urandom | convert -depth 8 -size "${mx}x${my}" RGB:-'
alias randomvid='mx=320; my=256; nframes=50; dd if=/dev/urandom bs="$((mx*my*3))" count="$nframes" | ffmpeg -r 25 -s "${mx}x${my}" -f rawvideo -pix_fmt rgb24 -i -'

# apt aliases
alias install='sudo apt install -y '
alias clean='sudo apt autoremove -y; sudo apt autoclean; sudo apt purge;'
alias isinstalled='dpkg --get-selections | grep -i '
alias totalpack='dpkg --get-selections | wc --lines'
alias search='apt search '

# virtualbox aliases
alias controlvm='VBoxManage controlvm'
alias lsvms='VBoxManage list vms'
alias rmvm='VBoxManage unregister --delete'
alias runningvms='VBoxManage list runningvms'
alias showvminfo='VBoxManage  showvminfo'
alias startvm='VBoxManage startvm --type gui'

# other useful aliases
alias publicip="echo $(curl -s ifconfig.me)"
alias pdate='date '\''+%D %T'\'' | toilet -f term -F border --gay'
alias iponly='grep -Eo '\''[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}'\'''
alias hddspeedcheck='sudo hdparm -t --direct'
alias options='grep '\''^[[:space:]]*[[:punct:]]'\'''
alias rpauto='sed '\''s/auto/\n/g'\'''
