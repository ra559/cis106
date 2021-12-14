#!/bin/bash
sudo apt install ffmpeg -y
if [ $PWD != $HOME ]; then cd $HOME; fi
mkdir -p midterm/q1
cd midterm/q1
wget http://robertalberto.com/cis106/audiofile.mp3
mv audiofile.mp3 theme-small.mp3
cp theme-small.mp3 theme-long.mp3
touch {main,footer,nav}.css
touch {home,about,contact}.html
touch script{.py,.js,.php,.rb}
wget https://robertalberto.com/cis106/audifile.mp3
cp audiofile.mp3 audiofilelong.mp3
mv audiofile.mp3 audiofileshort.mp3
mx=320
my=256
nframes=50
dd if=/dev/urandom bs="$((mx*my*3))" count="$nframes" | ffmpeg -r 25 -s "${mx}x${my}" -f rawvideo -pix_fmt rgb24 -i - shortvideo.mp4

dd if=/dev/urandom bs="$((mx*my*3))" count="$nframes" | ffmpeg -r 25 -s "${mx}x${my}" -f rawvideo -pix_fmt rgb24 -i - longvideo.mp4

wget http://robertalberto.com/cis106/imagefile.png
cp imagefile.png logo-small.png
mv imagefile.png logo-large.png




