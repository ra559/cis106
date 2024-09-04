
# {{page.title}}

## Video
* [here](https://youtu.be/rpu30qMEZhQ)

## Notes: 
* Make sure to download the text files. See [Slide numbers: 3 and 4](https://rapurl.live/he6) from the presentation.
* There is no challenge question for this lab. All we are going to do is practice so try to understand the commands before you run them. Part 2 will use this command differently so you need to understand the basic function of the command well
* All of these commands will be used in your final exam in one way or the other. 

## Question 1: cat, head, tail
1. Display the content of the `cereal.csv` file
2. Display the content of the `cereal.csv` file in reverse order
3. Display the content of the `cereal.csv` file with line numbers, showing non-printable characters and the $ indicating the end of each line.
4. Display the first 2 lines of the `cereal.csv` file
5. Display the last 2 lines of the `cereal.csv` file

> Take a screenshot of your terminal showing the commands you used to complete this question. You will need more than 1 screenshot. You will receive full credit if I can see the screenshot and at least a portion of the output. 

## Question 2: cut and sort
1. Display the first field of the `cars.csv` file
2. Display the first and the 3rd fields of the `cars.csv` file
3. Repeat the previous command but replace the delimiter with an equal sign and 2 spaces. Like this (` = `)
4. Sort the `cars.csv` file
5. Sort the `cereal.csv` file by **“calories”**

> Take a screenshot of your terminal showing the commands you used to complete this question. You will need more than 1 screenshot. You will receive full credit if I can see the screenshot and at least a portion of the output. 

## Question 3:  grep
1. Display every line that contains the word **“War”** in the book `war-and-peace`
2. Repeat the previous command with case sensitivity disabled 
3. Repeat the previous command but this time only display the total number of lines that contain the word **“war”**
4. The previous command will match the word **war** even if it is part of another word. Now, instead, let's match only the word war. How would you do this? 
5. Display every line that starts with the word **peace**. Include line numbers in the command.
6. Display every line that starts with the word **The**. Include line numbers in the command.
7. Display every line that contains the word **love** inside every book file. It cannot be a variation of the word love. It has the be the exact word regardless of the case. 
8.  Search for any 5-letter word that starts with **l** (el) and ends in the letter **d** in every book file. (notice lower case L and lower case d). Make sure to include line numbers.
9.  Search for any 4-letter word that starts with **d**, contains a vowel after **d**, and 3 more characters in every book.
10. Search for every word that contains 2 repeated **a** letters in the book `dracula`



> Take a screenshot of your terminal showing the commands you used to complete this question. You will need more than 1 screenshot. You will receive full credit if I can see the screenshot and at least a portion of the output. 

## What will you Submit:
* Place all the screenshots and answers to your questions in a the `lab7.md` file.
* Convert your markdown file to pdf 
* Push the changes to Github: <br>`git pull; git add .; git commit -m "lab7-p1 complete; git push"`<br>
* Submit the URL of `lab7.md` and the pdf file
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
