---
layout: post
title: Final Exam Study Guide
---
# {{page.title}}

## Recommendations
1. **Arrive to the classroom 30 minutes before the exam starts (5:00 PM)**
   1. This will allow you to test your virtual machine, perform any maintenance, test your internet connection, do a test pull and push, and troubleshoot any hardware problem.
2. **Make sure your github repository is organized**
   1. Since you are allowed to use your notes during your exam, it is to your benefit to have all your notes organized.
   2. I recommend creating a single document with all of notes and converting it to pdf. This will make it easier to find information.
   3. BE AWARE that you can only use your notes - NOT YOUR LABS - for the exam. So if I catch you looking at your labs, presentations, book, or the internet during the exam, this will constitute cheating and your exam will be terminated
3. **Update Windows and Ubuntu the day before the final exam**
   1. Do not update virtualbox
   2. Create a snapshot of your virtual machine before updating. If anyting goes wrong, you will be able to recover.
4. If you plan on using one of my computers:
   1. Arrive 15 to 20 minutes early
   2. You will need to clone your repository
   3. You will need to make sure everything works for you

<br>

> *WARNING*
> Your lack of preparation does not constitute an emergency for me.
> There are no make up exams. You are either here for the exam or your are not!
> There is another class after our class. Which means that the exam starts at 5:40 and ends at 6:55 on the dot! You must save the last 10 minutes of the exam to prepare your submission. 


<br>

## Commands to study
* Make sure you understand them well. Then include 3 - 5 examples that you understand and can use without any challenge.
* Don't memorize. 

* awk
* cat 
* cp
* cut
* grep
* head
* ls
* man
* mkdir
* mv
* tac
* tail
* touch
* tr
* tree

<hr>

## Concepts to study

### Working with Git, GitHub, and Markdown
* How to create a github repository
* How to clone a github repository
* How to use the git commands
* How to write a markdown file that contains images and proper headings
* How to convert a markdown file to pdf

### How to Practice?
* Create a repository in github. Give it any name you want.
* Clone the repository in your virtual machine
* Open the repository/folder/directory in vs code
* Create a markdown file inside containing random text. Make sure you have headings, images, pagrapaths, bullet points etc...
* Convert the file to html and pdf
* Push everything to github
* Do you see the files there?
* Add a couple more html files by repeating the process.
* *Did you get lost? if so, you know what you need to study!*


### Linux Specific Concents
* How to compress (zip) a directory/folder
* The linux filesystem
* Absolute path and relative path
* When should you use absolute vs relative
* Moving around the filesystem with absolute and relative (pwd,cd, ls, and tree)
* How to work with multiple terminals open?
* How to work with manual pages?
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
* How to create and execute a basic script
  * The Bash Shell Lecture - [Page 28](https://docs.google.com/presentation/d/e/2PACX-1vSMW_nt1pQzuvuV3HlZ-3gw9ObsRqnTVSPRW34tPB-cJ_iUgwuVr1iKY8MdWxh4_ctfRq9PDpXPMdif/pub?start=false&amp;loop=false&amp;delayms=3000&slide=id.g303e062ccc4_0_48)
* How to create user defined variables and environment variables
  * The Linux Filesystem Lecture - [Page 40](https://docs.google.com/presentation/d/e/2PACX-1vRzi-pHAUV4x_mqsbAiiAwTtIGZcXMauEIOUfiBySC4sPr0gszaQmebawSQaj0r2gCIv4r2Dam-fgT4/pub?start=false&loop=false&delayms=3000&slide=id.g2bb3152a1f7_0_0) 
* How to use positional parameters
  * Shell Scripting - Getting user input Lecture - [page 3 - 6](https://docs.google.com/presentation/d/e/2PACX-1vQuXFxgHJnHr6w-JbrAgeCvN3cyM7-zDIkYKQ_RcEI1wX-8VRJDb5lLOACZWqHk7ze-3af6nR3yxZ06/pub?start=false&loop=false&delayms=3000&slide=id.g1f3ca28ad3c_0_0)
* How to use command substitution to store the output of a command in a variable
  * Shell Scripting - Getting user input Lecture - [Page 7](https://docs.google.com/presentation/d/e/2PACX-1vQuXFxgHJnHr6w-JbrAgeCvN3cyM7-zDIkYKQ_RcEI1wX-8VRJDb5lLOACZWqHk7ze-3af6nR3yxZ06/pub?start=false&loop=false&delayms=3000&slide=id.g1f3ca28ad3c_0_59)

## How to practice shell scripting for your final exam.

Challenge yourself to write these scripts. Try to do them on your own simply using your notes and the presentation. Everytime you find yourself lost, take notes of the problem and the solution so that you can have it for reference. 

### Script 1: Using Echo and environment variables
Write a shell script that will display the following output:

![script1](https://docs.google.com/drawings/d/e/2PACX-1vS2KVjCqfOpXUt-QYGMufQnLhr2K2JL2f3xagSW2eY2PxGenB-BCUSHnd1t2CPe9YzyI0-dpLqaQopJ/pub?w=1311&h=352)

<br>

**The challenge here is to:**
* Use echo to display messages that include tabs and new lines
* Use echo and environment variables together
* In this screenshot I use HOME, USER, PWD, and OLDPWD
* There is also a cd command in there


### Script 2: Using user defined variables and user input
Write a shell script that will ask the user several questions, store the responses in variables and then use those variables in a single echo command. The output should look like this:

![script2](https://docs.google.com/drawings/d/e/2PACX-1vRAyIXO_bFoHUEDJ-RNN5whVpO_t4nHSzb4lVxRKUkoqtbByTTKx4IUkCglkeF4tYatbF3oSwgqJkMh/pub?w=1397&h=418)

<br>

**The challenge here is to:**
* Collect user information and store in a variable
* Use the variables in an echo command to generate a multi line message
* You have to use a single echo command

### Script 3: Using positional parameters  
Write a shell script that will take 3 positional parameters. The first parameter is the name of a new directory, the second and third are file names. Use the mkdir to create the directory, and then touch to create the 2 files in the new directory. DO NOT USE CD! Here is the output of the script:

![script3](https://docs.google.com/drawings/d/e/2PACX-1vQ5vX6yDlspdziz-bIb_LdTkdXyEeCV0IShuAr9eyqcWI1c8LCE_O5W5jhWdTWKQ4L7vlNUuRHMIwoU/pub?w=1353&h=697)

**The challenge here is to:**
* Use positional parameters with echo, mkdir, touch and tree.
* Remember to use quotes around your variables. For example `tree "$1"`
* Use positional parameters and brace expansion to create the files

### Script 4: Extra!
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
