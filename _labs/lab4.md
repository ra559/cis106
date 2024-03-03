---
layout: post
title: Lab 4 - The Linux FS
---
# Work in progress ignore this lab!

# {{page.title}}

* Presentations:
  * [How to navigate the filesystem](https://rapurl.live/2n3)
  * Video [here](https://youtu.be/GhNYOWEc5qc)

> **Note:**
> Questions 1 AND 2 are worth 50 points. Question 3 has no grade. Question 4 and 5 are worth 50 points. So each question here is worth 25 points. In the video, I only complete question 1, 2 and 3. You have to do question 4 and 5 on your own. Your final exam will include questions similar to 4 and 5. I will answer questions 4 and 5 during class after the due date for this lab has expired. 

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

### Description:
John wants to create a script to practice cd, ls, pwd, and variables. The script will output the following:

image here


### Solution
* The complete source code can be found [here](/assets/lab4/lab4_script.sh)


### Writing the code
1. Open Gedit.
2. Type the shell declaration/Shebang (`#!/bin/bash`) and save the file in the `lab4` directory (inside your cis106 directory/repository). Name the file `lab4-script1.sh`
3. 
 

> **Take a screenshot of the terminal and the text editor showing the source code.**





## Question 5 | Challenge write a script
Write a script that will produce the following output:




### Tips:
* You will need environment variables and user defined variables


1.  Go to the root of the filesystem. From there reach the `Downloads` directory.
   1. **Rules:**
      1. You are only allowed to move 1 directory at the time. Which means you cannot use shortcuts or absolute path
      2. Once you have reached the Downloads directory, show the absolute path of your current/present working directory.
      3. Take a screenshot of your terminal showing all the commands you use to solve this sub question.
>**Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer question**

1. Change your present working directory to `/usr/share/themes/Adwaita`. From there reach your Documents directory. 
   1. **Rules:**
      1. You are allowed to move more than 2 directories at a time.
      2. You can use shortcuts or use absolute paths.
      3. Once you haver reached the Documents directory, show your present working directory.
      4. Take a screenshot of your terminal showing all the commands you use to solve this sub question.
>**Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer question**  



## What will you Submit:
* Place all the screenshots and answers to your questions in a the `lab4.md` file.
* Convert your markdown file to pdf 
* Push the changes to Github
  * `git pull; git add .; git commit -m 'lab3 completed'; git push`
* Submit the URL of `Lab4.md` and the pdf file
* Delete all the snapshopts and take a new one. Name it "Lab 4 complete" 





## Extra practice (not mandatory but recommended)

### The tree and exa command (Optional Question. No submission required)

![lab 4 3.1](/assets/lab4-3.gif)<br>
1. Using absolute path and having `/etc` as your present working directory. Display a tree of the directory `lab4files`.
2. Change your present working directory to your `Downloads` directory. Display a tree of the directory `lab4files` with the full path prefix for each file, the file permissions, and the file size in human readable format.
3. Display a tree of the directory `lab4files` sorted by last modified time and showing the file owner and group. 
4. Once you have installed exa, list all the options of the exa command.
5. Using exa, long list all the files inside `lab4files`
6. Long list `lab4files` showing the header that indicates what each column means.
7. Long list `lab4files` without the file owner nor group including the header and the date the file was created.