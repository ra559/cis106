---
layout: page
title: Lab 7 - Wildcards & Brace Expansion 
---


# {{page.title}}

## WORK in PROGRESS


## A Brief description of the wildcards.

![wildcards](/assets/wildcardcheatsheet.png)
> Cheat Sheet [here](https://rapurl.live/zot)

## Video
Video [here](https://youtu.be/8GUIwzedyoQ) 
Presentation [here](https://rapurl.live/9j6)

> **Note:** Wildcards are all about pattern matching. They can be confusing but once you get a hold of them, you will never forget them. The table above gives you a summary of each wildcard. The goal of this lab is to give you enough practice for you to master wildcards in their basic form. Wildcards are very powerful because they can be combined to match pretty much any pattern that you can think of. 



## Question 1: Complete Practice exercise
1. Complete the practice exercise in the presentation. Take a screenshot of your terminal after finishing each practice. 
   1. [Practice 1: The * wildcard](https://docs.google.com/presentation/d/e/2PACX-1vTeIfbB0Hfh8D0h3ZgNVU4cEdORoRKERQnRroK6_aRkMMQKGRt1y0crrDmFgK81gHsflWUHqTrCh5ep/pub?start=false&loop=false&delayms=3000&slide=id.g3a010358aa1_0_7)
   2. [Practice 2: The ? wildcard](https://docs.google.com/presentation/d/e/2PACX-1vTeIfbB0Hfh8D0h3ZgNVU4cEdORoRKERQnRroK6_aRkMMQKGRt1y0crrDmFgK81gHsflWUHqTrCh5ep/pub?start=false&loop=false&delayms=3000&slide=id.g3a010358aa1_0_299)
   3. [Practice 3: The [] wildcard](https://docs.google.com/presentation/d/e/2PACX-1vTeIfbB0Hfh8D0h3ZgNVU4cEdORoRKERQnRroK6_aRkMMQKGRt1y0crrDmFgK81gHsflWUHqTrCh5ep/pub?start=false&loop=false&delayms=3000&slide=id.g3a010358aa1_0_564)
   4. [Practice 4: Brace Expansion](https://docs.google.com/presentation/d/e/2PACX-1vTeIfbB0Hfh8D0h3ZgNVU4cEdORoRKERQnRroK6_aRkMMQKGRt1y0crrDmFgK81gHsflWUHqTrCh5ep/pub?start=false&loop=false&delayms=3000&slide=id.g3a010358aa1_0_667)

### Deliverable of Question 1
* Add each screenshot to your `lab7.md` file
* Make sure to label each screenshot properly using heading 3 formatting or just a bold paragraph. Ex:

```
### Practice 1
![p1](prac1.png)
```

## Question 2: Challenge 1
Organize a directory using only wildcards. You are not allowed to operate on files individually. Every command you use to organize the files must use a wildcard.

1. Clone this directory to get all the files you need.
2. Once you finish organizing the files the directory most look like this:

### Deliverable of Question 2
* Take a screenshot (or more than 1) show each command you use to organize the directory
* Use the `tree` command to display a tree of the organized directory. 
* Place the screenshots in your `lab7.md` file as you always do in every lab

## Question 3: Challenge 2
Use brace expansion to create the following directories:


### Directory 1

```
wallpapers/
└── cars
    ├── 1080p
    ├── 2k
    └── 4k
```

### Directory 2

```
assets/
├── imgs
│   ├── large
│   └── small
└── video
    ├── large
    └── small
```

### Directory 3
* You need to create the pdf files as well. Remember mkdir creates directories while touch creates files. 

```
docs/
└── books
    ├── history
    │   ├── fall
    │   │   └── book.pdf (this is a file not a directory)https://rapurl.live/9j6
    │   └── spring
    │       └── book.pdf (this is a file not a directory)
    └── math
        ├── 2024
        │   └── book.pdf (this is a file not a directory)
        └── 2025
            └── book.pdf (this is a file not a directory)
```

### Deliverable of Question 3
* Take a screenshot (or more than 1) show each command you use to create the directories 
* Use the `tree` command to display a tree of each directory directory. 
* Place the screenshots in your `lab7.md` file as you always do in every lab


<hr>


## What will you submit:
1. After placing every screenshot in your `lab7.md` file, convert the file to pdf
2. Push everything to GitHub
3. In Blackboard, submit the pdf file `lab7.pdf` and the URL of `lab7.md` in GitHub

## How I will grade you:
* Question 1: 50 pts 
* Question 2: 25 pts
* Question 3: 25 pts


<hr>

## Special Note 1 - Practice navigating the file system
* Focus on the steps you took to answer the challenge questions. You will have 1 question in the final that requires the same workflow.

## Special Note 2 - Git Command Quick Reference
You’ll be using Git frequently this semester. Here’s a quick reminder of the most common commands:

| Command                            | Purpose                                                                                                                     |
| ---------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `git clone repository/url/here`    | Download a GitHub repository to your computer.                                                                              |
| `git pull`                         | Synchronize your local repository with the latest changes from GitHub. Always run this **before** starting work in VS Code. |
| `git add .`                        | Track all changes made to your files.                                                                                       |
| `git commit -m "description here"` | Save a snapshot of your tracked changes with a short description.                                                           |
| `git push`                         | Send your committed changes to GitHub.                                                                                      |

**Command Order:**
```bash
git pull 
git add . 
git commit -m "message" 
git push
```

> ⚠️ Warning: ⚠️  <br> Avoid making changes directly in the GitHub website unless you:
> * Know exactly what you are doing, and
> * Remember to run git pull before working locally.

## Special Note Regarding the Final Exam
* The final exam will be in person.
* It is performance-based and requires access to a Linux Virtual Machine.
* If you do not have a laptop/computer you can bring to school:
  * A Linux workstation will be available on campus.
  * Request it early—available computers are limited.