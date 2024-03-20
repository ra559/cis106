---
layout: post
title: Lab 4 - The Linux FS
---

# {{page.title}}

* Presentations:
  * [How to navigate the filesystem](https://rapurl.live/2n3)
  * Video [here](https://youtu.be/t2vXzYX2ZL8)

> **Note:**
> Your final exam will include questions similar to 4 and 5. I will answer questions 4 and 5 during class after the due date for this lab has expired. 

## Question 1 | Moving around the file system

| Command                            | Description                                               |
| ---------------------------------- | --------------------------------------------------------- |
| **[pwd](https://rapurl.live/6gj)** | Print the absolute path of the current working directory. |
| **[cd](https://rapurl.live/n6h)**  | Change the shell current working directory.               |
| **[ls](https://rapurl.live/9v5)**  | list files inside a given directory                       |

> Before you start this lab, complete all the practice in the presentation. This will allow you to understand these commands better. This is part of your Week report so make sure to take screenshots. 

### Using pwd and cd with absolute path (remember to use the bash autocompletion feature)

1. Start a terminal. What is your present working directory?
2. Change your present working directory to `/usr/share/themes`
3. What is your present working directory now?
4. Change your present working directory to **the root of the filesystem (/)**
5. Change your present working directory to `/snap/firefox` if for whatever reason you don't have this directory then use: `/home/your-user-name-here/Downloads/`
![lab 4.1](/assets/lab4-1.gif)<br>
> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5.**

### Using pwd and cd with a relative path (remember to use the bash autocompletion feature)
6. Clear your terminal window. Change the working directory to ***YOUR*** home directory.
7. Change the working directory to the `Downloads` directory.
8. Go back 2 directories.
9. Where are you now? 
10. Change the working directory to the `Documents/` directory.
![lab 4.1.1](/assets/lab4-1-1.gif)<br>
> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 6-10.**

<hr>

## Question 2 | The ls command
Download this compressed zip file: [lab4files.zip](/assets/lab4files.zip) Decompress the zip file in **your home** directory.
![lab 4 2.1](/assets/lab4-2-1.gif)<br>
1. Change your present working directory to `/usr/share/`. Using absolute path, list all the files inside the `lab4files` directory.
2. Change your present working directory to `~/lab4files`. Long list all the files inside your current working directory with **human readable** file sizes.
3. Long list all the files inside `lab4files` with **human readable** file size, and **sorted by file size**.
4. Long list all the files inside `lab4files` with **human readable** file size, **sorted by file size**, **without the user nor the group name**, and **showing their inode number**.
5. List all the files inside `lab4files` **sorted by file extension** and in **reverse order**. 

> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5. Multiple screenshots may be **required****

<hr>

## Question 3 | Shell scripting

Use this image as a visual aid during this question
<br>![visual aid linux FS](/assets/Linux-Filesystem-Incomplete-visual-aid.png)<br>

> If you want your Gedit (Text Editor) to look like mine. Take a moment to follow this [guide.](https://cis106.com/guides/custimizeGedit/)

### Description:
John wants to create a script to practice cd, ls, pwd, and variables. The script will output the following:

![script_output](/assets/lab4/script_output.png)


### Solution
* The complete source code can be found [here](/assets/lab4/lab4_script.sh)
1. Use the screenshot and write a script that can produce the same output. 
2. Modify the script to use variables where needed.

> **Take a screenshot of the terminal and the text editor showing the source code.**



## Question 4 | Challenge write a script
Write a script that will produce the following output:

![challenge question](/assets/lab4/challenge_question_4.png)


### Tips:
* You will need environment variables and user defined variables. 
* Use the `env` command to display a list of all environment variables
* The ls command is using a time-style. Use the man page and [this guide](https://cis106.com/guides/format-control-char-date-command/) to figure out the right option. Time style is not the only option in used here.

> **Take a screenshot of the terminal after executing the script**


## What will you Submit:
* Place all the screenshots and answers to your questions in a the `lab4.md` file.
* Convert your markdown file to pdf 
* Push the changes to Github
  * `git pull; git add .; git commit -m 'lab3 completed'; git push`
* Submit the URL of `Lab4.md` and the pdf file
* Delete all the snapshopts and take a new one. Name it "Lab 4 complete" 

## How I will grade you:
* Every question is worth: 25 pts
* I will go to your github repository and read/download your script. If it produces the required output and matches the screenshot, you will get full credit for the challenge question.


## Extra practice (not mandatory but recommended)

### The tree and exa command (Optional Question. No submission required)

1. Using absolute path and having `/etc` as your present working directory. Display a tree of the directory `lab4files`.
2. Change your present working directory to your `Downloads` directory. Display a tree of the directory `lab4files` with the full path prefix for each file, the file permissions, and the file size in human readable format.
3. Display a tree of the directory `lab4files` sorted by last modified time and showing the file owner and group. 
4. Install exa then list all the options of the exa command.
5. Using exa, long list all the files inside `lab4files`
6. Long list `lab4files` showing the header that indicates what each column means.
7. Long list `lab4files` without the file owner nor group including the header and the date the file was created.

### Solution:
1. `cd /etc`  
2. `tree ~/lab4files/`
3. `cd ~/Downloads`
4. `tree -fph ~/lab4files/`
5. `tree -tgu ~/lab4files`
6. `sudo apt install exa -y`
7. `exa --help`
8. `exa -l ~/lab4files/`
9. `exa -lh ~/lab4files/`
10. `exa -lhU --no-permissions --no-user  ~/lab4files/`

![Solution exa and tree](/assets/lab4/exaAndTree.gif)

### Special Note
You are going to be using the git commands a lot. Here is a quick reference:
* `git clone repository/url/here`: is the command to clone a repository where cloning means downloading a repository to your computer
* `git pull`: to pull/synchronize your repository from github to your local machine. Always run this command BEFORE you start working VS Code
* `git add .`: to track all the changes made to your file. 
* `git commit -m "label for your changes here"`: this command will label all the changes you added with the `add` command
* `git push`: will send all your changes to your github repository

> Always run the commands in this order: `pull` =>  `add` =>  `commit` => `push` 
> **Never use the github website to make changes to your repository unless you know what you are doing and can remember to pull the changes before working on your local repository!**
