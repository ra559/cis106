#!/bin/bash
# need packages:
sudo apt update
sudo apt install imagemagick fortune unrar p7zip-full libtext-lorem-perl zip ffmpeg -y
cd $HOME
mkdir -p lab7/question{1..4}
#question1
# Generate some text files
cd lab7/question1/
fortune > my-fortune.txt
fortune > something.txt
curl http://metaphorpsum.com/sentences/5 > sentences.txt


# Generate some imgs
mx=320;my=256;head -c "$((3*mx*my))" /dev/urandom | convert -depth 8 -size "${mx}x${my}" RGB:- Banana_78.png
mx=400;my=600;head -c "$((3*mx*my))" /dev/urandom | convert -depth 8 -size "${mx}x${my}" RGB:- Pineapple-89.jpg
mx=700;my=300;head -c "$((3*mx*my))" /dev/urandom | convert -depth 8 -size "${mx}x${my}" RGB:- 89-Berries.svg
mx=100;my=300;head -c "$((3*mx*my))" /dev/urandom | convert -depth 8 -size "${mx}x${my}" RGB:- Mangoes.svg
mx=700;my=100;head -c "$((3*mx*my))" /dev/urandom | convert -depth 8 -size "${mx}x${my}" RGB:- Papaya.svg

# Generate a random video file
mx=320; my=256; nframes=50; dd if=/dev/urandom bs="$((mx*my*3))" count="$nframes" | ffmpeg -r 25 -s "${mx}x${my}" -f rawvideo -pix_fmt rgb24 -i - Video.mp4
#question3
curl http://metaphorpsum.com/paragraphs/4 > mynotes.txt
