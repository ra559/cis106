---
layout: post
title: Week Report 2
---
# {{page.title}}

## Video Here
[Week Report 2 Spring 24](https://youtu.be/0h1efShVND4)

## Complete the following tasks
1. Complete [lab 2 - Installing Debian 13](https://cis106.com/labs/lab2_debian/).
2. If you have not done so, complete Week Report 1.
3. Complete Discussion Board 1 - Open Source. **Note**: *you can do this later as the due date is the end of the semester.*
4. Complete Discussion Board 2 - The history of Linux. **Note**: *you can do this later as the due date is the end of the semester.*
5. Complete Notes 2. *This and everything else from this point on must be completed inside Debian (your virtual machine)*. <b style="color:red">Windows/MacOS will no longer be used. </b>Therefore you MUST complete lab 2 before attempting the report and the notes.
6. Complete this week's Week Report. 


## What will you include in your notes?

> **Notes:**<br> 
> 1. *folder* and *directory* mean the same thing! 
> 2. *local repository means your cis106 folder inside your virtual machine*

1. If you have not done so, create a folder inside your `cis106` folder called `notes`
2. Inside the `notes` directory/folder create a new folder called `notes2`
3. Open the `cis106` directory/folder inside vs code.
4. Using vs code file manager, create a file inside the `notes2` directory called `notes2.md`
5. In the file `notes2.md`, answer the following questions. Make sure to use proper markdown syntax to make your notes file look presentable. Use headings, paragraphs and bullet point formatting. This, at a minimum, should make your file look presentable. **NO SCREENSHOTS!**  All the information to answer the questions can be found in the Lecture 2 presentation [Introduction to Linux](https://rapurl.live/dbx) and [The basics of virtualization](https://rapurl.live/bt7)


```
Lecture 2 Introduction to Linux Notes (this is the tittle of the document - Heading 1 formatting please!)

1. What is an Operating System?
2. What is a kernel?
3. Which other parts aside from the kernel identify an OS?
4. What is linux and linux distribution?
6. List at least 4 linux characteristics:
7. What is Debian?
9. List and define the different types of licensing agreements
10. What is Free Software? Define the 4 freedoms.
11. What is virtualization?
```

<hr>

## What will you submit for your week report:

> **Note:** <br> 
> Since you already completed lab2, the remaining of the work in this course will be completed inside the virtual machine. Windows/MacOS will not be used for the remaining of the course!!! <b style="color: red">PLEASE DO NOT EDIT OR UPLOAD FILES TO GITHUB VIA THE WEBSITE. </b>You must use VS Code Terminal to commit and push to your repository. If you decide to ignore this. You are on your own. If you don't understand, please ask! 
> This report can only be completed after lab 2!

1. If you have not done so, create a folder inside the `weekReports` folder called `wr2`. You probably did this already during lab 2.
2. Open the `cis106` folder in VS Code
3. Inside the `wr2` folder, create a file called `wr2.md`
4. Add a link to your notes and lab2 markdown files in github.
5. Add a screenshot of your Debian Desktop (virtual machine) with a terminal open or firefox in the cis106.com website
6. Convert the `wr2.md` file to pdf
7. Push all the changes to github
8. In blackboard, submit the URL to the `wr2.md` file and the pdf file `wr2.pdf`

<hr>

<p align="center" style="display:block"><img src="/assets/warning-icon.png" width="50" /></p>

## Special Note 1 - VM Snapshots
> Please take a snapshot of your virtual machine after you complete the report. The virtual machine must be off before you take the snapshot. This process is show in the video
> You should have at least 2 snapshots of your vm. Keep in mind that snapshots take space.

## Special Note 2 – Git Command Quick Reference
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
  * Request it early-available computers are limited.