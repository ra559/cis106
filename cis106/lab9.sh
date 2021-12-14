#!/bin/bash
if [ $PWD != $HOME ]; then cd $HOME; fi
mkdir -p lab4/question{1..3}
cd lab9/question1
touch {books,bots}.txt {home,about}.html {main,styles}.css {workload,download}.js
cd ../question2/
mkdir xmlfiles
touch b{a,e,i}d.xml
touch cat.xml cool.xml casino.xml
touch .hiddenfile{A..D}.log
touch f{oo,ee,ea}t.json
cd ../question3/
touch .main.py Main1.py drill.py kcc.rb

