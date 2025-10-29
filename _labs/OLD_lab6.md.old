
layout: page
title: Lab 6 - Wildcard 



# {{page.title}}

## A Brief description of the wildcards.

![wildcards](/assets/wildcardcheatsheet.png)
> Cheat Sheet [here](https://rapurl.live/zot)


Video [here](https://youtu.be/8GUIwzedyoQ) 

> **Note:** Wildcards are all about pattern matching. They can be confusing but once you get a hold of them, you will never forget them. The table above gives you a summary of each wildcard. The goal of this lab is to give you enough practice for you to master wildcards in their basics form. Wildcards are very powerful because they can be combined to match pretty much any pattern that you can think of. 

## IMPORTANT!!! READ ME!!!!!
> Before working on this lab, run this command: <br>**`curl https://cis106.com/assets/lab6/lab6.sh | bash`**<br> This will create a directory called `lab6` in your home directory.

<hr>


## Question 1 | Using the * Wildcard


> In your home directory, you should have a directory called `lab6`, if you don't have it, make sure to run the curl command in the `READ ME` part of this lab.<br> 

1. List all the `log` files located in the `lab6/q1` directory.
2. Create a directory called `log-files` inside the `lab6` directory. Move all the log files to the `log-files` directory.
3. Long list all the configuration files in the `lab6/q1` directory. **sorted by file size**. Modify the ls command with the proper options so that the output looks like this: (*Notice the date*). Then create the directory `lab6/config-files` and move all the config files in `lab6/q1`.
```
-rw-r--r-- 1 7.5K 08/19/21 /etc/pnm2ppa.conf
```
> You can see a full list of control characters for the date [here](https://cis106.com/guides/format-control-char-date-command/)

<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" onclick="var x = document.getElementById('q1');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">Show Solution</button>
<p align="center" style="display:none" id='q1'><img src="/assets/lab6/q1-solution.png"/></p>

**Take a screenshot of your terminal showing all the commands that you used to complete this question.**

<hr>

## Question 2 | Using the ? and [] wildcard

1. Create the directory: `hidden-files` inside the `lab6` directory. 
2. List only the hidden files inside `lab6/q2` directory then copy them to the `hidden-files` directory.
3. List all the files with a 2 letter file extension in the `lab6/q2` directory then remove them.
4. List and then remove all the files with a 4 letter file extension in the `lab6/q2` directory that start with letter `T` and end with letter `x`
5. List all the files, inside the `lab6/q2` directory, that start with letter `l` (lowercase L) or letter `r`, have one vowel after letter `l` or letter `r`, and and a number before the file extension. 
6. Create a directory called `random` inside the `lab6` directory.
7. Use the wildcard in step 5 to move the files to the `random` directory


<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" onclick="var x = document.getElementById('q2');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">Show Solution</button>
<p align="center" style="display:none" id='q2'><img src="/assets/lab6/q2-solution.png"/></p>

**Take a screenshot of your terminal showing all the commands that you used to complete this question.**


<hr>


## Question 3 | Using brace expansion. 
The curly braces are not a wildcard but they are equally useful. The curly braces allow you to generate arbitrary strings to use with commands. 

**Problem 1:**<br>
In the `lab6` directory, create the following directory structure. Display a tree of the directory. **Take a screenshot**:
```
wallpapers/
└── cars
    ├── 1080p
    ├── 2k
    └── 4k
```
**Problem 2:**<br>
Clear your terminal. in the `lab6` directory, create the following directory structure. Display a tree of the directory. **Take a screenshot**:
```
assets/
├── imgs
│   ├── large
│   └── small
└── video
    ├── large
    └── small
```

**Problem 3:**<br>
Clear your terminal. in the `lab6` directory, create the following directory structure. You need to create the pdf files as well. Remember mkdir creates directories while touch creates files. Display a tree of the directory. **Take a screenshot**:
```
docs/
└── books
    ├── history
    │   ├── fall
    │   │   └── book.pdf (this is a file not a directory)
    │   └── spring
    │       └── book.pdf (this is a file not a directory)
    └── math
        ├── 2024
        │   └── book.pdf (this is a file not a directory)
        └── 2025
            └── book.pdf (this is a file not a directory)
```

**Problem 4:**
Brace expansion comes handy in other scenarios too. Here are some examples:

1. From the root of the filesystem, create 3 files in the `~/lab6/q3` directory called: `program.py`, `people.csv`, `data.xls`.
2. From the root of the filesystem, remove the files: `_file0.old` `_file1.old`, `_file2.old` located in `~/lab6/q3`



<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" onclick="var x = document.getElementById('q3');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">Show Solution</button>
<p align="center" style="display:none" id='q3'><img src="/assets/lab6/q2-solution.png"/></p>


**Take a screenshot of your terminal showing all the commands that you used to complete this question.**

<hr>

## Challenge Question


> Run this curl command: <br> **`curl https://cis106.com/assets/lab6/lab6cq.sh | bash`**



This will create a directory in your home directory called: `challenge-Lab6` This directory has a bunch of files. Organize these file so that each file type has its own directory. Each file type must be moved to its respective directory. When you are done, the `challenge-Lab6` directory should look like this:

> Note: The directory tree you see here is just an example, you may or may not have the same files. 


```
challenge-lab6/
├── audio
│   ├── aac
│   │   └── all-aac-files-here
│   └── mp3
│       └── all-mp3-files-here
├── docs
│   ├── docx
│   │   └── all-docs-files-here
│   ├── pdf
│   │   └── all-pdf-files-here
│   └── xls
│       └── all-xls-files-here
└── images
    ├── jpg
    │   └── all-jpg-files-here
    └── png
        └── all-png-files-here
```

> Note: The directory tree you see here is just an example, you may or may not have the same files. 

### Here is what you are not allowed to do:
1. Create a directory for every file type. It defeats the purpose of the question. There are a lot of file types but you should be able to logically categorize them.
2. Move the files 1 by 1. It defeats the purpose of learning how to use wildcards. 
3. Create the directories 1 by 1. It defeats the purpose of learning brace expansions.

### Tips
* List the directory sorted by file extension. 
* Write down all the different file types and come up with a categorization
* There should be a directory for every category.
* Create the directory tree using brace expansion. By this point you should know how many and which directories you will need. There should not be a single directory with only 1 file. 


**Take a screenshot of your terminal showing all the commands that you used to complete this question.**


## What will you Submit:
* Place all the screenshots and answers to your questions in a the `lab6.md` file.
* Convert your markdown file to pdf 
* Push the changes to Github: <br>`git pull; git add .; git commit -m "lab5 complete; git push"`<br>
* Submit the URL of `lab6.md` and the pdf file
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
