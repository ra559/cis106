#!/bin/bash
if [ $PWD != $HOME ]; then cd $HOME; fi
tar cf lab4olddir.tar lab4/ 2> /dev/null
rm -r lab4/ 2> /dev/null
mkdir -p lab4/question{1..4}
cd lab4/question1
touch {books,bots,creation,linux,rook.rock}.txt {home_page,about-page}.html {main,styles,page}.css {workload,download,pageload}.js
ls -la > pageload.js 
man ls > html_page.html
man tree > home_page.html
ls --help > about-page.html
echo "background-color: red" > page.css
cd ../question2/
mkdir xmlfiles
touch b{a,e,i}d.xml
touch cat.xml cool.xml casino.xml
touch .hiddenfile{A..D}.log
touch f{oo,ee,ea}t.json
cd ../question3/
touch .main.py Main1.py drill.py kcc.rb
touch .app.py .Anotherapp.py
