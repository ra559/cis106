---
layout: post
title: Lab 8 Handling text files part 2
---

# {{page.title}}

## Input and output redirection

## Video 
* [here](https://youtu.be/LuqYlMvJ-ic)

### Note:
* I/O redirection involves the manipulation of input and output. To achieve this, we use the following:
  * `>` To redirect the output of a command to a file. Essentially saving the output of a command to a file
  * `>>` to append (add) the output of a command to a file
  * `|` to pass the output of a command to another
* Output redirection uses the file descriptors:
  * `1 (STDOUT)` Standard output = the regular output of a successfully executed command
  * `2 (STDERR)` Standard error = any error message returned by a command


### Question 1: Working with saving commands output to a file:

1. Write an `echo` command that displays the following text **“All files in my home directory”**
2. Save the output of the echo command to a file called: `file_report.txt`
3. List all the files (including hidden but not the .. and .)  in your home directory in a comma-separated format and append the output to the `file_report.txt` file
4. Display the content of the `file_report.txt` file

> **Take a screenshot showing the commands that you used to answer the question and another screenshot showing the output of the file_report.txt file**

### Question 2: Working with the | (pipe)

1. Write an echo command that displays the following text: **“Total number of files in my home directory”**
   1. Append the output to the file `file_report.txt`
2. Long list all the files in your home directory (*including hidden but not the .. and .*). 
   1. Pipe the output of the ls command to a grep command that will filter only the entries that are not directories. 
   2. Pipe the output to the wc command to count the number of lines in the output.
   3. Append the output to the file: `file_report.txt`
3. Write an echo command that displays the following text: **“Total number of directories in my home directory”**
   1. Append the output to the file `file_report.txt`
4. Long list all the files in your home directory (*including hidden but not the .. and .*) 
   1. Pipe the output of the ls command to a grep command that will filter only the directories
   2. Pipe the output to the wc command to count the number of lines in the output 
   3. Append the output to the file: `file_report.txt`
5. Display the last 10 lines of the `file_report.txt` file

> **Take a screenshot showing the commands that you used to answer the question and another screenshot showing the output of the file_report.txt file**

## Awk and Sed

> **Notes: READ ME PLEASE!** <br>
> * `AWK` is a scripting language used for processing text files. AWK supports almost if not all of the features of a programming language. AWK can be tricky to learn however, every Linux user should be familiar with its basic functionality. <br><br>
> * `SED` is a stream editor that performs operations on files. Just like AWK, SED can be complex and tough to master however, as a Linux user you must at least be familiar with its basic functionality. AWK and SED are used by programmers everywhere so you will eventually come across them in your day-to-day work. <br><br>
> * `/etc/passwd` file contains information about every account on your computer. This includes user accounts and system accounts. Every line in this file represents a user. See the image here to understand what each field means. This is one of those files that you have to know about as a Linux user.


### Question 3
1. First, let’s practice the most basic awk command: Printing! 
   1. Print the first field of the `/etc/passwd` file
   2. Print the first and last field of the `/etc/passwd` file
2. Now let’s put this into context:
   1. Display a list of every user in the system, including
      1. Their username,
      2. Their login shell,
      3. Their Home Directory
3. This is good but let's make it easier to read by adding some text between each column.
   1. Modify the command so that the output looks like this <br> 
`The user: adrian logs in with: /bin/bash and is home dir is: /home/adrian` <br> 
4. Run the previous command but save the output to a file name: `report_users.txt`
5. Now let's combine grep, awk, and append the output to a file:
   1. Using grep, display a list of users who can log in to the system. That would be any user whose login shell is **/bin/bash**
   2. Then use awk to modify the output so that it shows: **username = login shell** (PS: you can use cut as well if you want)
   3. Then append the output of the command to the file: `report_users.txt`

> **Take a screenshot showing the commands that you used to answer the question and another screenshot showing the output of the report_users.txt file**

### Question 4

1. Use grep to generate a CSV file that contains only the cars manufactured by **Honda**. Here is how you are going to do it:
   1. Display the first line of the `cars.csv` file and save it to a file called `honda1.csv`
   2. In a separate terminal, display the content of the `honda1.csv` file. Do you see all the fields/columns? Now lets populate the file.
   3. Use grep to get all the cars manufactured by Honda and append the output to `honda1.csv`
   4. In a separate terminal display the content of the `honda1.csv` file. Is the file populated as expected? 
2. Now using sed, let's replace all the “;” with “,”. Save the output to a file called `honda2.csv`
3. Now let's create a csv file of our own:
   1. From the `honda2.csv` file we will extract the following fields:
      1. Car
      2. Cylinders
      3. Horsepower
   2. Create the header for every column/field. Use an echo command to generate and save this string to a file called `Honda3.csv`: `model,cylinders,hp`
   3. Use awk to print the 1st, 3rd, and 5th fields of the `honda2.csv` file excluding the first line, and with commas after every field.  
   4. Now let's use sed to clean up the CSV:
      1. Pipe the output of the previous awk command to sed to replace every “` , `” with “`,`”
      2. Pipe the previous command to another sed command to replace “`Honda `“with “`Honda_`”
      3. Append the output to `Honda3.csv`
4. In a separate terminal, install the command bat
5. Now use `batcat` to display the csv file
   1. **Note**: *`batcat` is an improved version of cat that gives us syntax highlighting.*

> **Take a screenshot showing the commands that you used to answer the question and another screenshot showing the output of batcat**

<hr>

## Managing Aliases
### Question 5 - Optional!

> **Note:** <br>
> * Aliases are cool because they allow us to save time. We can write an entire command and save it as an alias and when we type the alias name in the shell the entire command is run. We can even alias scripts or just text! <br>
> * Aliases are set with the alias command. But unless you save them in the .bash_aliases or .bashrc file they do not persist in your system. In this question, we will create some aliases. <br>

1. Open the `.bash_aliases` file (located in your home directory) in your text editor. If you do not have the file, create it and save it in your home directory. 
2. Create the following aliases:
   1. `alias gotocis="cd $HOME/cis106"`
   2. `alias update="sudo apt update"`
   3. `alias upgrade="sudo apt upgrade"`
   4. `alias install="sudo apt install "`
   5. `alias clean="sudo apt autoremove -y; sudo apt autoclean; sudo apt purge;"`
   6. `alias lsx="exa -T -l --sort=ext --no-permissions --no-user --no-time"`
3. Save the file and close the text editor. 
4. Open a terminal and let’s try out the aliases

> No screenshot required!


## Challenge Question
### Problem Description
Ramon is a web development student. His friend Marco gave him a zip file of a project they were working on. When he opened the index.html file in Firefox, he noticed that the website was broken. There is nothing wrong with the code/markup so there is no need to modify the HTML, JS, or CSS. The problem is that files are not in their right place. Use the commands that you learned in this lab to inspect the `index.html`, `styles.css`, and `script.js` files to find the correct place for each file. Then create the necessary directories and move the files to their respective directory. When you finish, open the `index.html` file in Firefox. The site should be working now. 

### Tips:
* In HTML, images and other assets in a website are used with the following element attributes:
  * `href="path/to/asset"`
  * `src="path/to/.asset`
* Notice that the file path is specified here so that the asset can be loaded to the page. 
* The goal here is to inspect/parse/scan the index.hml file because this is the main page document. Then identify which directory structure needs to be created
* Once all the necessary directories are created, move the files to their respective directories. 
* The end result should be a properly formatted index.html page. 


### What you need
* You can download the file from [here](https://cis106.com/assets/lab8/broken.zip) 
* You will need to unzip the file. You can do it graphically or via the command line with the unzip command. 

### What you need to provide
1. To prove that you completed this question, provide screenshots of the following:
   1. All the commands that you used to fix the website. 
   2. Firefox showing `index.html` fixed

> **Note:** You will have a similar question in your final exam. 

<hr>

## What will you Submit:
* Place all the screenshots and answers to your questions in a the `lab8.md` file.
* Convert your markdown file to pdf 
* Push the changes to Github: <br>`git pull && git add . && git commit -m "lab8 complete" && git push"`<br>
* Submit the URL of `lab8.md` and the pdf file
* Take a snapshot of your system and delete the previous snapshot.

### Special Note
You are going to be using the git commands a lot. Here is a quick reference:
* `git clone repository/url/here`: is the command to clone a repository where cloning means downloading a repository to your computer
* `git pull`: to pull/synchronize your repository from github to your local machine. Always run this command BEFORE you start working VS Code
* `git add .`: to track all the changes made to your file. 
* `git commit -m "label for your changes here"`: this command will label all the changes you added with the `add` command
* `git push`: will send all your changes to your github repository

> Always run the commands in this order: `pull` =>  `add` =>  `commit` => `push` 
> **Never use the github website to make changes to your repository unless you know what you are doing and can remember to pull the changes before working on your local repository!**


<p align="center" style="display:block"><img src="/assets/warning-icon.png" width="50" /></p>

## Special Note:
* The final exam is in person. 
* The exam is performance based and will require access to a Linux Virtual Machine. 
* If you do not have a laptop/computer you can bring to school, a Linux Computer will be made available to you.
