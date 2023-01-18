
# Lab 7 - Handling Files
* Video [here](https://youtu.be/8xjoxIvG2xY)<br>
> ### PRE-WORK
> you must complete this part of the lab before you start
> doing the questions. If you skip this part, you will not
> have the necessary files to work on this lab.
> 
> 1 Install the script `textFiles.sh` using this command: 
> `curl https://cis106.com/assets/installTextFiles.sh | bash && source ~/.bashrc` 
> 2. Read the help section of the textFiles script to learn how to use it.
> 3. Download all the books, csv files and json files
> 4. You should now have these directories in your machine:
>  `~/Documents/Books`, `~/Documents/Csv`, `~/Documents/Json`

 * For the presentation go [here](https://rapurl.live/yzb)
 * Before you start working on this lab, complete all the practice slides in the presentation. You do not need to take screenshots.  

## READ ME
*The `/etc/passwd` file stores user’s account information. Each account data occupies a single line in a file and when a new account is created a new entry with the new user’s information is added. The `/etc/passwd` records contain several fields, 7 in total. These fields are described in the image below. In this lab, we are going to use the passwd file in combination with the commands for handling text files. The goal is to demonstrate how to use these commands successfully for administering a system.* 

![etc/passwd](https://rapurl.live/j37)

## Question 1: cat, tac, head, tail
1. Display the content of the `/etc/passwd` file.
2. Display the content of the `/etc/passwd` file in reverse order.
3. Display the content of the `/etc/passwd` file with line numbers and the $ to indicate the end of every line.
4. Display the first 5 lines of a the `/etc/passwd` file.
5. Display the last 5 lines of the `/etc/passwd` file.
> Take a screenshot of **YOUR TERMINAL ONLY** showing all the commands that you used to complete this question 
<hr>

## Question 2: cut
1. Display the first field of the `/etc/passwd` file.
2. Display the first and last field of the `/etc/passwd` file
3. Display the first and last field of the `/etc/passwd` file with the `=` as the output delimiter.
4. Display all the fields of the `/etc/passwd` file except the 3rd field.
> Take a screenshot of **YOUR TERMINAL ONLY** showing all the commands that you used to complete this question
<hr>

## Question 3 Paste, wc
1. Download these files using curl. Use the command: `curl -s URL-here -o name-of-file` where the name of the file is the one given in the URL. After Downloading the files, paste the files 
   * **https://cis106.com/assets/shopping.txt** 
   * **https://cis106.com/assets/tasks.txt** 
2. How many lines does the book dracula book have?
3. How many words does the book "Pride and Prejudice" have?
4. Sort the file `/etc/passwd`
> Take a screenshot of **YOUR TERMINAL ONLY** showing all the commands that you used to complete this question
<hr>

## Question 4 tr, grep
1. Replace the `;` for a `,` in the `cereal.csv` file
2. Display every line that contain the word love in the book *"Pride and Prejudice"*
3. Display every line that contains exactly the word love or hate in the book *"Pride and Prejudice"* with line numbers
4. Display every line that starts exactly  with the word **"love"** in the book *Dracula*
5. Display every line that starts with an upper case letter or a number in the book *Dracula*.
> Take a screenshot of **YOUR TERMINAL ONLY** showing all the commands that you used to complete this question
<hr>


## Question 5 awk and sed
1. Print the first and last field of the `cars.csv` file
2. Print the first and last field of the `cars.csv` file with the string `" made in "` as a delimiter
3. Print the `cars.csv` file in such a way that the output looks like this for every line:
> `The Chevy S-10 has 4 cylinders and is made in US`
4. Print the `cars.csv` file excluding the first 2 records (lines).
5. Print all the car names in upper case.
6. Replace all the instances of the word `Dracula` for the word `Alucard` in the book dracula.
7. Insert a blank line after each line in the `/etc/passwd` file
8. Replace all the repeated blank lines for a single blank line in the book *"Pride and Prejudice"*
> Take a screenshot of **YOUR TERMINAL ONLY** showing all the commands that you used to complete this question
<hr>

## Question 6 I/O Redirection
1. How many users can login with the `/bin/bash` shell? 
2. How many users have the `/sbin/nologin` shell assigned? 
3. How many ford vehicles are there in the `cars.csv` file
4. How many 4 letter words are there in the bible? 
> Take a screenshot of **YOUR TERMINAL ONLY** showing all the commands that you used to complete this question


## Challenge Question
1. Display only the names of the cereals in the `cereal.csv` file. *(Tip: use cut, awk and the pipe)*
2. Sort the output of the previous command  and save it to a file called `cereal-sorted.csv`. *(Beware that the first 2 lines need to be removed)*
3. Display the names of the cereals and the amount of calories they have per serving.
4. Repeat the previous command but replace the `;` with a `,`

> Take a screenshot of **YOUR TERMINAL ONLY** showing all the commands that you used to complete this question
<hr>