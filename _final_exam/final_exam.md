---
layout: post
title: Final Exam Study Guide
---
# {{page.title}}

<p align="center" style="display:block"><img src="/assets/warning-icon.png" width="50" /></p>

## Special Note:
* The final exam is in person. 
* The exam is performance based and will require access to a Linux Virtual Machine. 
* If you do not have a laptop/computer you can bring to school, a Linux Computer will be made available to you. 


## Recommendations
1. **Arrive to the classroom 30 minutes before the exam starts (5:00 PM)**
   1. This will allow you to test your virtual machine, perform any maintenance, test your internet connection, clone your repository, ask any question, and troubleshoot any hardware problem. If you cannot make it to the classroom 30 minutes earlier, try to at least get to the classroom 10 minutes before the exam start. 
2. **Make sure your github repository is organized**
   1. Since you are allowed to use your notes during your exam, it is to your benefit to have all your notes organized.
   2. I recommend creating a single document with all of notes and converting it to pdf. This will make it easier to find information.
   3. BE AWARE that you can only use your notes - NOT YOUR LABS - for the exam. So if I catch you looking at your labs, presentations, book, or the internet during the exam, this will constitute cheating and your exam will be terminated
3. **Update Windows and Debian the day before the final exam**
   1. Before updating Debian, take a snapshot of your virtual machine.
   2. Do not update Virtualbox.
   3. Create a snapshot of your virtual machine after updating it. If anything goes wrong, you will be able to recover the state before and after the install.
4. **If you plan on using one of my computers:**
   1. Arrive 15 to 30 minutes early
   2. You will need to clone your repository
   3. You will need to make sure everything works for you before the exam starts.
      1. The computer has a proper internet connection
      2. All of necessary markdown extensions are installed
      3. You can open your notes
<br>

> *WARNING*
> Your lack of preparation does not constitute an emergency for me.
> There are no make up exams. You are either here for the exam or your are not!
> There is another class after our class. Which means that the exam starts at 5:40 and ends at 7:00 on the dot! You must save the last 10 minutes of the exam to prepare your submission. 


<br>

## Commands to study
* Make sure you understand them well. Include in your notes 3 - 5 examples that you understand and can use without any challenge.
* Don't memorize instead practice and understand the syntax and the output of each command. 

* `awk`
* `cat `
* `cp`
* `cut`
* `grep`
* `head`
* `ls`
* `man`
* `mkdir`
* `mv`
* `tac`
* `tail`
* `touch`
* `tr`
* `tree`

<hr>

## Concepts to study

### Working with Git, GitHub, and Markdown
* How to clone a github repository
* How to use the git commands
* How to write a markdown file that contains images and proper formatting
* How to convert a markdown file to pdf

### How to Practice?
* Create a repository in github. Give it any name you want.
* Clone the repository in your virtual machine
* Open the repository/folder/directory in vs code
* Create a markdown file inside containing random text. Make sure you have headings, images, paragraphs, bullet points etc...
* Convert the file to pdf
* Push everything to github
* Do you see the files there?
* Add a couple more pdf files by repeating the process.
* *Did you get lost? if so, you know what you need to study!*


### Linux Specific Concents
* How to compress (zip) a directory/folder (the same as in windows or mac)
* The linux filesystem
* Absolute path and relative path
* When should you use absolute vs relative
* Moving around the filesystem with absolute and relative (pwd,cd, ls, and tree)
* How to work with multiple terminals open?
* How to work with the manual pages (man command)?
* How to parse (search) for specific words in the manual page
* How to redirect output `(>, >>, and |) `
* How to append the output of a command to a file
* How and when to redirect the output of a command to another (pipes)
* How to use echo and output redirection to create a new file that contains some text
* How to use wildcards
    - *For copying and moving multiple files at the same time*
* How to use brace expansion
    - *For creating entire directory structures in a single command*

### How to practice? 
* Go through the presentations and try to do the practice without looking at the solutions. 
* Go over all the challenge questions. Do them again using only your notes as reference. That will allow you to know if you need to enhance them or if they are good enough for the final
* *Did you get lost?* Where? Why? Get to the answer without using google or chatgpt. Annotate and add those annotations to your notes
* Need more help? Take a look at the extra section of the website and the youtube channel


## Regarding shell scripting:
  * [Shell scripting chapter 1](https://docs.google.com/presentation/d/e/2PACX-1vSGaFVc1w27_WXIBJUGfPFjWB0nN3jL7jNFfCGuv3JaDI0DnS0OBPZnMvNPFzoRR58ClJikkDJFZwyf/pub?start=false&loop=false&delayms=3000&slide=id.p)
  * [Shell scripting chapter 2](https://docs.google.com/presentation/d/e/2PACX-1vSGaFVc1w27_WXIBJUGfPFjWB0nN3jL7jNFfCGuv3JaDI0DnS0OBPZnMvNPFzoRR58ClJikkDJFZwyf/pub?start=false&loop=false&delayms=3000&slide=id.g3828ac9dff4_0_144)

## How to practice shell scripting for your final exam.

Challenge yourself to write these scripts. Try to do them on your own simply using your notes and the presentation. Every time you find yourself lost, take notes of the problem and the solution so that you can have it for reference. 

### Script 1: Using Echo and environment variables
Write a shell script that will display the following output:

![script1](https://docs.google.com/drawings/d/e/2PACX-1vS2KVjCqfOpXUt-QYGMufQnLhr2K2JL2f3xagSW2eY2PxGenB-BCUSHnd1t2CPe9YzyI0-dpLqaQopJ/pub?w=1311&h=352)

<br>

**The challenge here is to:**
* Use echo to display messages that include tabs and new lines
* Use echo and environment variables together
* In this screenshot I use HOME, USER, PWD, and OLDPWD
* There is also a cd command in there


### Script 2: Drawing a box
Create a script that generates this output. Here are the special characters:
```bash
┌ 
┐
└ 
┘
│
─
```

![script4](https://docs.google.com/drawings/d/e/2PACX-1vS8Qz8boEDg88Q01XgGJzDwcuWvkIVkDql6RTYXd9bxLfK04S8Jc1eEs-Sb6A9uEpHyJjgNMtAHKeiv/pub?w=1154&h=356)