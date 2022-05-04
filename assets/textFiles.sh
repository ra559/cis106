#!/bin/bash
# -------------
# Name: textfiles
# Author: https://github.com/ra559
# Description: Download text files for practicing handling text files
# -------------

#color formatting
RESTORE=$(echo -en '\033[0m')
RED=$(echo -en '\033[00;31m')
GREEN=$(echo -en '\033[00;32m')
YELLOW=$(echo -en '\033[00;33m')
BLUE=$(echo -en '\033[00;34m')
MAGENTA=$(echo -en '\033[00;35m')
PURPLE=$(echo -en '\033[00;35m')
CYAN=$(echo -en '\033[00;36m')
LIGHTGRAY=$(echo -en '\033[00;37m')
LRED=$(echo -en '\033[01;31m')
LGREEN=$(echo -en '\033[01;32m')
LYELLOW=$(echo -en '\033[01;33m')
LBLUE=$(echo -en '\033[01;34m')
LMAGENTA=$(echo -en '\033[01;35m')
LPURPLE=$(echo -en '\033[01;35m')
LCYAN=$(echo -en '\033[01;36m')
WHITE=$(echo -en '\033[01;37m')
ITALLICS=$(echo -en '\e[3m')
TAB="\t"
BLINK='\033[5m'

# Needed Directories
booksdir="$HOME/Documents/Books"
csvdir="$HOME/Documents/Csv"
jsondir="$HOME/Documents/Json"


# Books URLS
prideAndPrejudice="https://www.gutenberg.org/files/1342/1342-0.txt"
dracula="https://www.gutenberg.org/files/345/345-0.txt"
warAndPeace="https://www.gutenberg.org/files/2600/2600-0.txt"
greatExpectations="https://www.gutenberg.org/files/1400/1400-0.txt"
bible="https://cis106.com/assets/bible.txt"

# CSV ULRS
kingsbooks="https://cis106.com/assets/kingsBooks.csv"
contacts="https://cis106.com/assets/contacts.csv"
countries="https://cdn.wsform.com/wp-content/uploads/2018/09/country.csv"
cars="https://perso.telecom-paristech.fr/eagan/class/igr204/data/cars.csv"
cereal="https://perso.telecom-paristech.fr/eagan/class/igr204/data/cereal.csv"
movies="https://perso.telecom-paristech.fr/eagan/class/igr204/data/film.csv"


help(){
		echo -e $GREEN"Description:"$RESTORE"\n\tUsed for Downloading sample files"
		echo -e $GREEN"Usage:"$RESTORE"\n\ttextfiles + option"
		echo -e $RED $ITALLICS $TAB"Where options can be:"$RESTORE
		echo -e $TAB$YELLOW"-b"" or -B or --books $TAB $RESTORE for books to download"
		echo -e $TAB$YELLOW"-c"" or -C or --csv $TAB $RESTORE for sample csv files"
		echo -e $TAB$YELLOW"-j"" or -J or --json $TAB $RESTORE for sample json files"
}


menu_books(){
	echo "All files will be stored in $booksdir"
	echo "Enter a number to Download the text file:"
	echo "1- Pride And Prejudice - Jane Austen"
	echo "2- Dracula - Bram Stocker"
	echo "3- War and Peace - Leo Tolstoy"
	echo "4- Great Expectations - Charles Dickens"
	echo "5- The Bible - King James Version"
	echo "6- All of the books"
	read bookAns
	[[ -d $booksdir ]] || mkdir -p $booksdir
	case $bookAns in
		1)
			bookName="$booksdir/pride-and-prejudice.txt"
			curl -s $prideAndPrejudice -o $bookName
			echo "$bookName Downloaded sucessfully"
			;;
		2)
			bookName="$booksdir/dracula.txt"
			curl -s $dracula -o $bookName
			echo "$bookName Downloaded sucessfully"
			;;
		3)
			bookName="$booksdir/war-and-peace.txt"
			curl -s $warAndPeace -o $bookName
			echo "$bookName Downloaded sucessfully"
			;;
		4)
			bookName="$booksdir/great-expectations.txt"
			curl -s $greatExpectations -o $bookName
			echo "$bookName Downloaded sucessfully"
			;;
		5)
			bookName="$booksdir/bible.txt"
			curl -s $bible -o $bookName
			echo "$bookName Downloaded sucessfully"
			;;
		6)
			for url in $(echo $prideAndPrejudice $dracula $warAndPeace $greatExpectations $bible) 
			do
				curl -s $url -o "$booksdir/$(basename $url)"
			done
			mv $booksdir/1342-0.txt $booksdir/pride-and-prejudice.txt
			mv $booksdir/345-0.txt $booksdir/dracula.txt
			mv $booksdir/2600-0.txt $booksdir/war-and-peace.txt
			mv $booksdir/1400-0.txt $booksdir/great-expectastions.txt
			echo -e $PURPLE$TAB"\033[5mAll BOOKS Downloaded Successfully" $RESTORE
			ls -lgGh --time-style=+%D $booksdir | awk '{print $1 " ▬ " $4 " ▬ " $5}'
			;;
		*)
		exit
		;;
	esac 
		
}

menu_csv(){
	echo "All files will be stores in $csvdir"
	echo "Enter a number to Download the text file:"
	echo "1- All Stephen King Books List"
	echo "2- A list of contacts"
	echo "3- A list of countries"
	echo "4- A list of 400 cars with characteristics"
	echo "5- A list of 80 cereal products - food"
	echo "6- A list of 1600 movies with properties"
	echo "7- All CSV files"
	read csvAns
	[[ -d $csvdir ]] || mkdir -p $csvdir
	case $csvAns in
		1)
			curl -s $kingsBooks -o $(basename $kingsBooks)
			echo "$(basename $kingsBooks) Downloaded sucessfully"
			;;
		2)
			curl -s $contacts -o $(basename $contacts)
			echo "$(basename $kingsBooks) Downloaded sucessfully"
			;;
		3)
			curl -s $countries -o $(basename $countries)
			echo "$(basename $countries) Downloaded sucessfully"			
			;;
		4)
			curl -s $cars -o $(basename $cars)
			echo "$(basename $kingsBooks) Downloaded sucessfully"						
			;;		
		5)
			curl -s $cereal -o $(basename $cereal)
			echo "$(basename $cereal) Downloaded sucessfully"					
			;;		
		6)
			curl -s $movies -o $(basename $movies)
			echo "$(basename $movies) Downloaded sucessfully"					
			;;		
		7)
			for url in $(echo $kingsBooks $contacts $countries $cars $cereal $movies) 
			do
				curl -s $url -o "$csvdir/$(basename $url)"
			done 
			echo -e $PURPLE$TAB"\033[5mAll files Downloaded Sucessfully"$RESTORE
			ls -lgGh --time-style=+%D $csvdir | awk '{print $1 " ▬ " $4 " ▬ " $5}'
			;;		
		*)
			exit
			;;
	esac
}

menu_json(){
	echo "All files will be stores in $jsondir"
	echo "Enter a number to Download the json file:"
	echo "1- Margarita"
	echo "2- Recreational activity"
	echo "3- Joke"
	echo "4- holidays"
	echo "5- Random dog image"
	echo "6- Download all"
	read jsonAns
	[[ -d $jsondir ]] || mkdir -p $jsondir
	case $jsonAns in
		1)
			#Source https://www.thecocktaildb.com/api.php
			curl -s https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita -H "Accept: applicaton/json" -o $jsondir/margarita.json
			echo "$jsondir/margarita.json Downloaded suscessfully"
			;;
		2)
			#source https://www.boredapi.com/
			curl -s http://www.boredapi.com/api/activity?type=recreational -o $jsondir/recreational.json
			echo "$jsondir/recreational.json Downloaded suscessfully"
			;;
		3)
			#source https://v2.jokeapi.dev/
			curl -s https://v2.jokeapi.dev/joke/Any?safe-mode -o $jsondir/joke.json
			echo "$jsondir/joke.json Downloaded suscessfully"
			;;
		4)
			#source https://date.nager.at/
			curl -s https://date.nager.at/api/v2/publicholidays/2020/US -o $jsondir/holidays.json
			echo "$jsondir/holidays.json Downloaded suscessfully"
			;;
		5)
			#source https://random.dog/
			curl -s https://random.dog/woof.json -o $jsondir/random-dog.json
			echo "$jsondir/random.json Downloaded suscessfully"
			;;
		6)
			curl -s https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita -H "Accept: applicaton/json" -o $jsondir/margarita.json
			curl -s http://www.boredapi.com/api/activity?type=recreational -o $jsondir/recreational.json
			curl -s https://v2.jokeapi.dev/joke/Any?safe-mode -o $jsondir/joke.json
			curl -s https://date.nager.at/api/v2/publicholidays/2020/US -o $jsondir/holidays.json
			curl -s https://random.dog/woof.json -o $jsondir/random-dog.json
			echo -e $PURPLE$TAB"\033[5mFiles Downloaded Sucessfully"$RESTORE
			ls -lgGh --time-style=+%D $jsondir/ | awk '{print $1 " ▬ " $4 " ▬ " $5}'
			;;
	esac

}

case "$1" in
	-b | -B | --book)
		menu_books
		;;
	-c | -C | --csv)
		menu_csv
		;;
	-j | -J | --json)
		menu_json
		;;
	-h | -H | --help)
		help
		;;
	*)
		echo -e $PURPLE "No valid option given. Use textfiles -h for help" $RESTORE
		;;
esac	