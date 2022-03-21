# Lab 6 | File Globing/wildcards



## A Brief description of the wildcards.


![wildcards](/assets/wildcards.png)

Video here: https://youtu.be/tMzcAoITzR4

> **Note:** Wildcards are all about pattern matching. They can be confusing but once you get a hold of them, you will never forget them. The table above gives you a summary of each wildcard. The goal of this lab is to give you enough practice for you to master wildcards in their basics form. Wildcards are very powerful because they can be combined to match pretty much any pattern that you can think of. 

## IMPORTANT!!! READ ME!!!!!
> Before working on this lab, run this command: curl https://cis106.com/assets/lab6.sh | bash
> This will create a directory called website_lab6 in your home directory

<hr>


## Question 1 | Using the * Wildcard

1. List all the configuration files in the `etc` directory. (*Configuration files have the extension of .conf*)
2. Long list all the configuration files in the `etc` directory that start with letter `h` or letter `p` **sorted by file size**, **with human readable file size**, and showing the date formatted as: **month/day/year** as shown in the output. <br> Here is an example of the output (*Notice the date*):
```
-rw-r--r-- 1 7.5K 08/19/21 /etc/pnm2ppa.conf
```
> You can see a full list of control characters for the date [here](https://cis106.com/)

3. List all the `theme` files in the */usr/share/themes/* directory recursively. (*theme files have the .theme extension*)
4. In your home directory, you should have a directory called `website_lab6`, if you don't have it, make sure to run the curl command in the READ ME part of this lab. List all the `log` files located in the `website_lab6` directory. 
5. Create a directory called `log-files` inside the `website_lab6`. Move all the log files to the `log-files` directory.


**Take a screenshot of your terminal showing all the commands that you used to complete this question.**

<hr>

## Question 2 | Using the ? wildcard

1. List only the hidden files inside the `website_lab6` directory.
2. List all the files with a 2 letter file extension in the `website_lab6` directory
3. List all the files that start with letter `l`, have one character after letter `l`, and the letters `st`. The the rest of the file name is irrelevant.
4. 
<hr>

## Question 3 | Using the [] Wildcard


**Take a screenshot of your terminal showing all the commands that you used to complete this question.**

<hr>

## Question 4 | Using brace expansion. 
The curly braces are not a wildcard but they are equally useful. The curly braces allow you to generate arbitrary strings to use with commands. 

**Problem 1:**<br>
In the question4 directory, create the following directory structure. Display a tree of the directory once you have created. Your directory tree must look exactly like mine. Take a screenshot:
```
wallpapers/
├── cars
│   ├── 1080p
│   ├── 2k
│   └── 4k
└── ocean
    ├── 1080p
    ├── 2k
    └── 4k
```
**Problem 2:**<br>
Clear your terminal. in the question4 directory, create the following directory structure. Display a tree of the directory once you have created. Your directory tree must look exactly like mine. Take a screenshot:
```
assets/
├── imgs
│   ├── large
│   │   └── source
│   └── small
│       └── source
└── video
    ├── large
    │   └── source
    └── small
        └── source
```

**Problem 3:**<br>
Clear your terminal. in the question4 directory, create the following directory structure. Display a tree of the directory once you have created. Your directory tree must look exactly like mine. Take a screenshot:
```
docs/
├── books
│   ├── history
│   ├── math
│   ├── science
│   └── social
└── research
    ├── history
    ├── math
    ├── science
    └── social
```
**Problem 4:**<br>
Clear your terminal. in the question4 directory, create the following directory structure. Display a tree of the directory once you have created. Your directory tree must look exactly like mine. Take a screenshot:
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

**Problem 5**<br>
Clear your terminal. in the question4 directory, create the following directory structure. Display a tree of the directory once you have created. Your directory tree must look exactly like mine. Take a screenshot:
```
backup/
├── files
│   ├── personal
│   │   ├── feb
│   │   ├── jan
│   │   └── mar
│   ├── programs
│   │   ├── feb
│   │   ├── jan
│   │   └── mar
│   └── school
│       ├── feb
│       ├── jan
│       └── mar
├── images
│   ├── cars
│   │   ├── high
│   │   └── low
│   ├── classic
│   │   ├── high
│   │   └── low
│   ├── panorama
│   │   ├── high
│   │   └── low
│   └── world
│       ├── high
│       └── low
└── random
```
**Take a screenshot of your terminal showing all the commands that you used to complete this question.**


<hr>

## What to submit?
1. Place all your images in a markdown file titled lab5.1.md and submit the github url of the file in blackboard.