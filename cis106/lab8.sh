#!/bin/bash
cd $HOME
sudo apt install libtext-lorem-perl -y

mkdir -p lab8/question{1..4}
for dir in $(ls -1 $HOME/lab8) 
do
	mx=320;my=256;head -c "$((3*mx*my))" /dev/urandom | convert -depth 8 -size "${mx}x${my}" RGB:- $HOME/lab8/$dir/img.png
	lorem > $HOME/lab8/$dir/file.txt
	mkdir $HOME/lab8/$dir/directory
	echo "print('hello world')" > $HOME/lab8/$dir/program.py
done
tree $HOME/lab8
sleep 2
exit 0
