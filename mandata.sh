#!/bin/bash
# Required software
sudo apt update; sudo apt install ffmpeg fortune libtext-lorem-perl -y

mkdir -p $HOME/managingData/practice{1..5}
# Generate files
# For tar
fortune -l > $HOME/managingData/practice1/fortune-1.txt
fortune -l > $HOME/managingData/practice1/furtune-2.txt
fortune -l > $HOME/managingData/practice1/fortune-3.txt

# For cpio
wget -cO - https://picsum.photos/600/800 > $HOME/managingData/practice2/nature-1.png
wget -cO - https://picsum.photos/500/700 > $HOME/managingData/practice2/nature-2.png
wget -cO - https://picsum.photos/400/600 > $HOME/managingData/practice2/nature-3.png

# For ar
lorem -p 1 > $HOME/managingData/practice3/1-paragraph.txt
lorem -p 2 > $HOME/managingData/practice3/2-paragraph.txt
lorem -p 3 > $HOME/managingData/practice3/3-paragraph.txt
