#!/bin/bash
mkdir $HOME/lab6
cd $HOME/lab6
for file in $(find /var -iname "*.log" 2> /dev/null)
do
	cp $file $HOME/lab6/ 2> /dev/null
done
for hidden in $(find $HOME -iname ".??*" 2> /dev/null)
do
	cp $hidden $HOME/lab6 2> /dev/null
done

touch l{a,i,o}st.txt 
touch file_{00..05}.sh
touch Document.doc Expenses.xls 25Games.lst 88_Application-log.log apache01-error.log trip22-info.doc apache22.log apache03.err http404.log

