#!/bin/bash
mkdir $HOME/wildcardpractice/
cd $HOME/wildcardpractice/
curl -s http://metaphorpsum.com/sentences/8 > randomtext.txt
curl -s http://metaphorpsum.com/sentences/5 > random_text.md
curl -s http://cis106.com/assets/cities.csv > _random.csv
wget -q http://cis106.com/assets/sample.pdf
wget -q http://cis106.com/assets/sample1.doc
wget -q http://cis106.com/assets/sample1.xls

# files for the ? wildcard
tree -H $HOME > samplesite.html
tree -J $HOME > samplejsonfile.json
echo "hiddenfile" > .hiddenFile.txt
cp $HOME/.bash_history ./
cp sample1.doc sample99.docx
cp sample1.xls sample123.csv
cp sample1.xls Sample1234.csv
touch b{oo,ai,eat,}k.{pdf,exe,xml} {fail,file}.log .hidden{1..2}.{doc,py}
# Files for [] wildcard
cp sample.pdf Sample.pdf
cp randomtext.txt 78food.txt
wget https://cis106.com/assets/logo100x100.png
cp logo100x100.png 2022-02-02-camera.jpg
cp logo100x100.png 2021-04-10-screenshot.jpeg
cp logo100x100.png 2020-08-27-capture.raw
tree $HOME > allfiles.lst
tree -l $HOME > Allfiles.lst