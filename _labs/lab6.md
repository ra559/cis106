---
layout: post
title: Lab 6 - File Globing/wildcards
---

# Lab 6 | File Globing/wildcards



## A Brief description of the wildcards.


![wildcards](/assets/wildcardcheatsheet.png)
> Cheat Sheet [here](https://rapurl.live/zot)


Video here: 

> **Note:** Wildcards are all about pattern matching. They can be confusing but once you get a hold of them, you will never forget them. The table above gives you a summary of each wildcard. The goal of this lab is to give you enough practice for you to master wildcards in their basics form. Wildcards are very powerful because they can be combined to match pretty much any pattern that you can think of. 

## IMPORTANT!!! READ ME!!!!!
> Before working on this lab, run this command: <br>**`curl https://cis106.com/assets/lab6.sh | bash`**<br> This will create a directory called `lab6` in your home directory

<hr>


## Question 1 | Using the * Wildcard

1. List all the configuration files in the `etc` directory. (*Configuration files have the extension of .conf*)
2. Long list all the configuration files in the `etc` directory that start with letter `h` or letter `p` **sorted by file size**, **with human readable file size**, and showing the date formatted as: **month/day/year** as shown in the output. <br> Here is an example of the output (*Notice the date*):
```
-rw-r--r-- 1 7.5K 08/19/21 /etc/pnm2ppa.conf
```
> You can see a full list of control characters for the date [here](https://cis106.com/)

3. List all the `theme` files in the */usr/share/themes/* directory recursively. (*theme files have the .theme extension*)
4. In your home directory, you should have a directory called `lab6`, if you don't have it, make sure to run the curl command in the READ ME part of this lab. List all the `log` files located in the `lab6` directory. 
5. Create a directory called `log-files` inside the `lab6`. Move all the log files to the `log-files` directory.


**Take a screenshot of your terminal showing all the commands that you used to complete this question.**

<hr>

## Question 2 | Using the ? wildcard

1. List only the hidden files inside the `lab6` directory.
2. List all the files with a 2 letter file extension in the `lab6` directory
3. List all the files that start with letter `l`, have one character after letter `l`, and the letters `st`. The the rest of the file name is irrelevant.
4. List all the files that have an `_` and two characters before the file extension. 

<hr>

## Question 3 | Using the [] Wildcard

1. List all the files that start with an uppercase letter
2. List all the files that start with an uppercase letter or a number
3. List all the files that have a number in the file name
4. List all the files that start with a lowercase letter and have a number before the file extension.

**Take a screenshot of your terminal showing all the commands that you used to complete this question.**

<hr>

## Question 4 | Using brace expansion. 
The curly braces are not a wildcard but they are equally useful. The curly braces allow you to generate arbitrary strings to use with commands. 

**Problem 1:**<br>
In the `lab6` directory, create the following directory structure. Display a tree of the directory once you have created. Your directory tree must look exactly like mine. Take a screenshot:
```
wallpapers/
└── cars
    ├── 1080p
    ├── 2k
    └── 4k
```
**Problem 2:**<br>
Clear your terminal. in the `lab6` directory, create the following directory structure. Display a tree of the directory once you have created. Your directory tree must look exactly like mine. Take a screenshot:
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
Clear your terminal. in the `lab6` directory, create the following directory structure. Display a tree of the directory once you have created. Your directory tree must look exactly like mine. Take a screenshot:
```
docs/
└── books
    ├── history
    │   ├── fall
    │   │   └── book.pdf (this is a file not a directory)
    │   └── spring
    │       └── book.pdf (this is a file not a directory)
    └── math
        ├── fall
        │   └── book.pdf (this is a file not a directory)
        └── spring
            └── book.pdf (this is a file not a directory)
```
**Problem 4:**<br>
Clear your terminal. in the `lab6` directory, create the following directory structure. Display a tree of the directory once you have created. Your directory tree must look exactly like mine. Take a screenshot:
```
Research/
├── books
│   ├── math
│   │   ├── epub
│   │   └── pdf
│   └── science
│       ├── epub
│       └── pdf
└── magazines
    ├── computers
    │   ├── fanmade
    │   └── official
    ├── running
    │   ├── fanmade
    │   └── official
    └── videogames
        ├── fanmade
        └── official
```

**Take a screenshot of your terminal showing all the commands that you used to complete this question.**


**Problem 5:**
Brace expansion comes handy in other scenarios too. Here are some examples:

1. Create a directory in your home directory called `lab6-q5`. From the root of the filesystem create 3 files in the lab6-q5 directory called: `program.py`, `people.csv`, `data.xls`.
2. Change your current working directory to `/usr/share`. Create a directory in the `lab6-q5` directory called `movies`. Create 3 files in the `~/lab6-q5/movies` directory called `movies.lst`, `marvel.txt` and `disney.doc`.
3. Remove the files: `program.py`, `people.csv`, `disney.doc`, and `marvel.txt`.


**Take a screenshot of your terminal showing all the commands that you used to complete this question.**

<hr>

# Challenge Question


> Run this curl command: <br> **`curl https://cis106.com/assets/lab6cq.sh | bash`**



This will create a directory in your home directory called: `challenge-Lab6` This directory has a bunch of files. Organize these file so that each file type has its own directory. Each file type must be moved to its respective directory. In the end your `challenge-Lab6` directory should look like this:


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

<br>*Tips*<br>
* Try to create your directory structure in a single command.
* Try working with multiple terminal windows open.





## What will you Submit:
* Place all the screenshots and answers to your questions in a the `lab6.md` file.
* Convert your markdown file to pdf 
* Push the changes to Github: <br>`git pull; git add .; git commit -m "lab5 complete; git push"`
* Submit the URL of `lab6.md` and the pdf file
* Take a snapshot of your system and delete the previous snapshot.