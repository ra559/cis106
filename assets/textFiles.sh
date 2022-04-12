#!/bin/bash
# -------------
# Name: textfiles
# Author: https://github.com/ra559
# Description: Download text files for practicing handling text files
# -------------

booksdir="$HOME/Documents/Books"
csvdir="$HOME/Documents/Csv"
# Files URLs
## Books
prideAndPrejudice="https://www.gutenberg.org/files/1342/1342-0.txt"
dracula="https://www.gutenberg.org/files/345/345-0.txt"
warAndPeace="https://www.gutenberg.org/files/2600/2600-0.txt"
greatExpectations="https://www.gutenberg.org/files/1400/1400-0.txt"
bible="https://cis106.com/assets/bible.txt"

## CSV Files
kingsbooks="https://cis106.com/assets/kingsBooks.csv"
contacts="https://cis106.com/assets/contacts.csv"
countries="https://cdn.wsform.com/wp-content/uploads/2018/09/country.csv"
cars="https://perso.telecom-paristech.fr/eagan/class/igr204/data/cars.csv"
cereal="https://perso.telecom-paristech.fr/eagan/class/igr204/data/cereal.csv"
movies="https://perso.telecom-paristech.fr/eagan/class/igr204/data/film.csv"

# Check if booksdir exist
[[ -d $booksdir ]] || mkdir -p $booksdir
[[ -d $csvdir ]] || mkdir -p $csvdir


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
	case $bookAns in
		1)
			bookName="$booksdir/pride-and-prejudice.txt"
			curl -s $prideAndPrejudice -o $bookName
			echo"$bookName Downloaded sucessfully"
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
			echo "All files Downloaded"
			ls -X1 $booksdir
			;;
		*)
		exit
		;;
	esac 
		
}

help(){
	echo -e "Description:\n\tUsed for Downloading sample files"
		echo -e "Usage:\n\ttextfiles + option\n \t\twhere options can be:"
		echo -e "\t\t\t -b or -B or --books for books to download"
		echo -e "\t\t\t -c or -C or --csv for sample csv files"
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
			echo "All files Downloaded"
			ls -X1 $csvdir
			;;		
		*)
			exit
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
	-h | -H | --help)
		help
			;;
	*)
		echo "No valid option given. Use textfiles -h for help"
		;;
esac	
