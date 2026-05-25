---
layout: post
title: Week Report 2
---
# {{page.title}}

## Video
[Week Report 2 Spring 24](https://youtu.be/0h1efShVND4)

- [{{page.title}}](#pagetitle)
  - [Video](#video)
  - [1. Study Material](#1-study-material)
  - [2. List of Tasks](#2-list-of-tasks)
  - [3. Notes 2: What will you include in your notes?](#3-notes-2-what-will-you-include-in-your-notes)
  - [4.  Submission for Week Report 2](#4--submission-for-week-report-2)
  - [5. Week Report Grading](#5-week-report-grading)
  - [6. Notes Grading](#6-notes-grading)
  - [Available Extra Credit (2 pts)](#available-extra-credit-2-pts)
  - [Special Note 1: VM Snapshots](#special-note-1-vm-snapshots)
  - [Special Note 2: Git Commands Quick Reference](#special-note-2-git-commands-quick-reference)
  - [Special Note 3: Regarding the Final Exam](#special-note-3-regarding-the-final-exam)


## 1. Study Material
* [The basics of Virtualization](https://rapurl.live/est)
* [Using VirtualBox](https://rapurl.live/t0h)
* [Debian Installer](https://docs.google.com/presentation/d/e/2PACX-1vSN5c6pPHfnlbcl10KlrxZ4kh606rIkDwdFd6uo9VqpOiwHrlqOOYFA3_ypMp9MA_R65TtbQPgJYHnx/pub?start=false&loop=false&delayms=300)
* [Screenshots - creating a virtual machine](https://docs.google.com/presentation/d/e/2PACX-1vSL0uIh10efjylcStOP8r9AxUlq1mZ-mQ_ojA4ESu7eLgMJOdYlOpbXdplPlA6gIiIrTU4LS_6dCV27/pub?start=false&loop=false&delayms=3000)
* [Screenshots - Debian installer](https://docs.google.com/presentation/d/e/2PACX-1vSN5c6pPHfnlbcl10KlrxZ4kh606rIkDwdFd6uo9VqpOiwHrlqOOYFA3_ypMp9MA_R65TtbQPgJYHnx/pub?start=false&loop=false&delayms=3000)

## 2. List of Tasks

1. Complete [Lab 2 - Installing Debian 13](https://cis106.com/labs/lab2_debian/).
2. If you have not done so, complete Week Report 1. **You cannot proceed with the course assignment without first completing Week Report 1 including Lab 1.**
3. Finish **Discussion Board 1**. (This means you only need to reply to another student's post.)
4. Complete Notes 2. *From this point forward, all coursework must be completed inside Debian (your virtual machine)*. <br><b style="color:red">Windows/macOS will no longer be used to complete coursework assignments. </b>You **MUST** complete Lab 2 before starting the report or notes.
5. Complete Week Report 2. This is a Markdown file that will serve as proof of completion.


## 3. Notes 2: What will you include in your notes?

> **Attention:**<br> 
> * *folder* and *directory* mean the same thing! 
> * *“Local repository” refers to your* `cis106` *folder inside the virtual machine.*

1. If you have not done so, create a folder inside your `cis106` folder called `notes`
2. Inside the `notes` directory create a new folder called `notes2`
3. Open the `cis106` directory inside VS Code.
4. Using VS Code File Explorer, create a file inside the `notes2` directory called `notes2.md`
5. In the file `notes2.md`, answer the following questions. 
   1. Make sure to use proper markdown syntax to make your notes file look presentable. 
   2. Use headings, paragraphs, and bullet-point formatting
   3. All the information to answer the questions can be found in the Lecture 2 presentation [Introduction to Linux](https://rapurl.live/dbx) and [The basics of virtualization](https://rapurl.live/bt7)


```
Lecture 2 Introduction to Linux Notes (this is the title of the document - Heading 1 formatting please!)

1. What is an Operating System?
2. What is a kernel?
3. Which other parts aside from the kernel identify an OS?
4. What is Linux?
5. What is a Linux distribution?
6. List at least 4 Linux characteristics:
7. What is Debian?
8. List and define the different types of licensing agreements
9. What is Free Software? Define the 4 freedoms.
10. What is virtualization?
```

<hr>

## 4.  Submission for Week Report 2

> **Note:** <br> 
> Since you already completed Lab 2, the remaining coursework for this class will be completed inside the virtual machine. Windows/macOS will not be used for the remainder of the course. <b style="color: red">PLEASE DO NOT EDIT OR UPLOAD FILES THROUGH THE GITHUB WEBSITE. </b>You must use the VS Code terminal to commit and push changes to your repository. **If you ignore this requirement, troubleshooting will be your responsibility**. If you don't understand, please ask! 
> This report can only be completed after Lab 2!

1. If you have not done so, create a folder inside the `weekReports` folder called `wr2`. You probably did this already during Lab 2.
2. Open the `cis106` folder in VS Code
3. Inside the `wr2` folder, create a file called `wr2.md`
4. Add a link to your notes and Lab 2 Markdown files in your GitHub repository..
5. Add a screenshot of your Debian desktop with either a terminal window open or Firefox displaying the cis106.com website.
6. Add a screenshot of your Discussion Board reply
7. Convert the `wr2.md` file to PDF
8. Push all the changes to GitHub
9. In Blackboard, submit the URL to the `wr2.md` file and the PDF file `wr2.pdf`

## 5. Week Report Grading

| Item                                         | Points |
| -------------------------------------------- | ------ |
| Your GitHub repository is properly organized | 25pts  |
| Debian Desktop screenshot                    | 25pts  |
| Discussion Board reply screenshot            | 25pts  |
| Proper markdown syntax                       | 25pts  |

## 6. Notes Grading

| Item                             | Points |
| -------------------------------- | ------ |
| Proper markdown syntax           | 50 pts |
| PDF file was generated correctly | 50 pts |

> An example of proper notes formatting can be found [here](https://github.com/robertalberto0713/cis106/blob/main/notes/notes2/notes2.md) 

## Available Extra Credit (2 pts)
* [Practice Virtualization](https://cis106.com/extra/practice_virtualization/#practice-virtualization)


<p align="center" style="display:block"><img src="/assets/warning-icon.png" width="50" /></p>

## Special Note 1: VM Snapshots
* Please take a snapshot of your virtual machine after you complete the report. 
* The virtual machine must be off before you take the snapshot. 
* You should have at least 2 snapshots of your VM. **Keep in mind that snapshots take space.**

## Special Note 2: Git Commands Quick Reference
You’ll be using Git frequently this semester. Here’s a quick reminder of the most common commands:

| Command                            | Purpose                                                                  |
| ---------------------------------- | ------------------------------------------------------------------------ |
| `git clone repository/url/here`    | Download a GitHub repository to your computer.                           |
| `git pull`                         | Synchronize your repository with GitHub before starting work in VS Code. |
| `git add .`                        | Track all changes made to your files.                                    |
| `git commit -m "description here"` | Save a snapshot of your tracked changes with a short description.        |
| `git push`                         | Send your committed changes to GitHub.                                   |

**Order of Git Commands:**
```bash
git pull 
git add . 
git commit -m "message" 
git push
```

> ⚠️ Warning: ⚠️  <br> Please do not edit or upload files directly through the GitHub website. Use the VS Code terminal to commit and push changes to your repository. If you make changes through the GitHub website, you must run `git pull` before continuing local work.

## Special Note 3: Regarding the Final Exam
* The final exam will be in person.
* It is performance-based and requires access to a Linux Virtual Machine.
* If you do not have a laptop/computer you can bring to school:
  * A Linux workstation will be available on campus.
  * Request access early because available computers are limited.