
# Lab 7 - Handling Files

> ### PRE-WORK
> you must complete this part of the lab before you start
> doing te questions. If you skip this part, you will not
> have the necessary files to work on this lab.
> 1 Install the script `textFiles.sh` using this command: <br>
> `curl https://cis106.com/assets/installTextFiles.sh | bash` <br>
> 2. Read the help section of the textFiles script to learn how to use it.
> 3. Download all the books, csv files and json files
> 4. You should now have these directories in your machine:
>  `~/Documents/Books`, `~/Documents/Csv`, `~/Documents/Json`

## READ ME
The `/etc/passwd` file stores user’s account information. Each account data occupies a single line in a file and when a new account is created a new entry with the new user’s information is added. The `/etc/passwd` records contain several fields, 7 in total. These fields are described in the image below. In this lab, we are going to use the passwd file in combination with the commands for handling text files. The goal is to demonstrate how to use these commands successfully for administering a system. 

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
4. The sort command is another amazing tool in any linux user’s tool box. Sort allows you to display data in a given order. Cut the first and 3rd field of the `/etc/passwd` field and sort the output. 
5. Repeat the previous command but this time only show the last 5 entries.


> Take a screenshot of **YOUR TERMINAL ONLY** showing all the commands that you used to complete this question
<hr>

## Question 3 Paste, wc, grep, head 
1. How many lines does the book dracula book have?
2. How many words does the book "Pride and Prejudice" have?
3. Download this file: https://cis106.com/assets/todo.md using curl and save the output to a file named `todo.md`. 
4. Display the first 3 tasks of the file
5. Display the last 3 shopping items.



> Take a screenshot of **YOUR TERMINAL ONLY** showing all the commands that you used to complete this question
<hr>

## Question 4 sort
1. Display only the names of the cerels in the `cereal.csv` file. *(Tip: use cut, awk and the pipe)*
2. Sort the output of the previous command  and save it to a file called `cereal-sorted.csv`
3. Display the names of the cereals and the amount of calories they have per serving.
4. Repeat the previous command but replace the `;` with a `,`
5. Sort the file `cereal-sugar-2.csv` by sugar content. Do not include the header of the file. Save the output to another file named `cereal-sugar-3.csv`
6.   



> Take a screenshot of **YOUR TERMINAL ONLY** showing all the commands that you used to complete this question
<hr>

## Question 5 grep

1. How many users can login with the `/bin/bash` shell?
2. How many users have the `/sbin/nologin` shell assigned?
3. Display your user’s information in `/etc/passwd` file
4. How many ford vehicles are there in the `cars.csv` file
5. How many American vehicles are there in the `cars.csv` file 


> Take a screenshot of **YOUR TERMINAL ONLY** showing all the commands that you used to complete this question
<hr>