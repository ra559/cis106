

# {{page.title}}

## Video here
[VIDEO](https://youtu.be/WD1QNH05Nn4)

## Pre Work:
1. Open the file manager and navigate to the `labs` folder/directory inside the cis106 repository `(~/cis106/labs/)`
2. Create a folder/directory called `lab3`
3. Open VS Code and open the `cis106` directory/folder inside VS Code
4. Create a file called `lab3.md` inside the `lab3` folder/directory
5. Add the following markdown, save the file, close vs code, and start your lab

<hr>

```
---
Student: your name
semester: Spring 24
Assignment: Lab 3
---

# Lab 3 Submission

## Question 2
![q2](q2.1.png)

## Question 3
![q3](q3.png)

## Challenge Question
![q4](q4.png)

## Script Source code:
[lab3](lab3-script.sh)
```

<hr>

<p align="center" style="display:block"><img src="/assets/lab3/prework.gif" width="500" /></p>



## Question 1: Using Ubuntu's Desktop Environment (GNOME)
### Appearance  
1. Download a wallpaper that you like. You can use this website for downloading wallpapers: [wallheaven.cc](https://wallhaven.cc/) 
2. Create a directory/folder in the `Pictures` directory called `wallpapers`
3. Save the file in this newly created directory. Make sure to change the name to something more descriptive of the image. 
4. Right-click on the desktop and change the wallpaper to the one you downloaded recently.
5. Add the following applications to the favorites bar:
   1. VS Code
   2. Tilix
6. Customize the favorites bar to your liking
   1. Change its position
   2. Remove any application you do not use regularly
   3. Do you like the panel mode or the dock mode?
   4. How about the icon size?
<p align="center" style="display:block"><img src="/assets/lab3/apperance1.gif" width="500" /></p>
<p align="center" style="display:block"><img src="/assets/lab3/apperance2.gif" width="500" /></p>

### Custom Font

1. Download one of the following fonts from this [website](https://www.nerdfonts.com/font-downloads):
   1. Hack
   2. FiraCode
   3. Meslo
   4. Source Code Pro
   5. Terminus
   6. Monoid
   7. Noto
   8. Iosevka<br>
**Note**: you can use this [website](https://www.programmingfonts.org/#fira) to preview the font. Choose one you like and download it.

<p align="center" style="display:block"><img src="/assets/lab3/font1.gif" width="500" /></p>

2. Install the font
   1. Create a hidden folder/directory in your home directory called `.fonts` (In Linux, hidden folders start with a period therefore to create a hidden folder all you need to do is start its name with a period)
   2. Enable hidden folder view in the file manager by pressing CTRL + H. You should notice that a lot of more hidden folders appear. 
   3. Decompress the `font.zip` file you downloaded earlier and move all the `.ttf` files to the `.fonts` directory.
   4. Open a terminal and type the command `fc-cache -fv`. This command will scan your system for new fonts.
3. Close the terminal. Open the file manager and press CTRL + H again so we can hide the hidden folders/directories again. *You don't want to mistakenly delete those later!*
3. Open the terminal and type the following command: <br>`echo "hello world"`

<p align="center" style="display:block"><img src="/assets/lab3/font2.gif" width="500" /></p>



#### This question does no require screenshot

<hr>

## Question 2: Working with BASH in the terminal emulator 

> **Note:** I use tilix but you are welcome to use any other terminal emulator.

1. Open **Tilix** and then click on the hamburger menu (≡) and then on preference. Ignore the error message
2. Click on appearance. Enable “**Use a wide handle for splitters**”
3. Split the terminal in 2 horizontally. Open the man page of the `echo` command in one of the terminals.
4. Resize the terminal window so that you have enough space to work on both.
5. Using the man page of echo figure out how to do the following:
    * Display a line of text without the new line
    * Display a line of text that includes a horizontal tab
    * Display 2 lines of text in a single echo command
    * Display 2 lines of text in a single echo command, with the second line starting with a tab
    * Display 2 lines of text in a single echo command that starts with a tab

<p align="center" style="display:block"><img src="/assets/lab3/q1.1.gif" width="500" /></p>
<p align="center" style="display:block"><img src="/assets/lab3/q1.2.gif" width="500" /></p>


#### Take a screenshot of the terminal showing all the commands that you used and the man page open. Save your screenshot as q2.1.png

## Question 3: Write a basic shell script 
1. Open the text editor app (Gnome Text)
2. Click on the gear icon (⚙) then 
   1. Enable "**Show line numbers**"
   2. Enable "**Show right margin**"
   3. disable "**Check spelling**"
   4. In Spaces Per Tab, set it to "**4**"
3. Click on the hamburger menu (≡) and then properties
   1. Pick a a theme that you like
   2. Enable custom font and pick the font you downloaded earlier. Adjust the font size to your liking.
   3. Enable highlight current line
4. Type the following line: `#!/bin/bash` (double-check your spelling)
5. Save the file as: `lab3-script1.sh` in the `lab3` folder/directory inside `cis106/labs/`

<p align="center" style="display:block"><img src="/assets/lab3/q3.1.gif" width="500" /></p>

6. Add the following lines, then save the script.

```bash
echo "This is a shell script,"
echo -n "This script will print the current date"
date
echo "This is the machine's name:"
uname -n
echo "This is the current user:"
echo $USER
echo "This is the current date"
date +"%A, %B %d %R %Z"
```

7. Add the following comments at the top after the shell declaration/shebang `#!/bin/bash`

```bash
# Author: your name
# Date: current date in format mm/dd/yy
# Description: This is a basic script that
# uses environment variables and the date command
```

8. Save the script and close the text editor
9. Open a terminal and type the following commands to execute the script:
`bash ~/cis106/labs/lab3/lab3-script.sh`

<p align="center" style="display:block"><img src="/assets/lab3/q3.2.gif" width="500" /></p>



#### Take a screenshot of the terminal showing the output of the script. Double-check your spelling and follow every step correctly if you get any error messages.

## Question 4: Challenge Question
Write a shell script that displays the following output:

![cqo](/assets/lab3/challenngeQoutput1.png)

### Tips:
* You will need to read the man page of the `echo`, `uname`, and `date`, `df`, `free` and `figlet` commands. 
* You can use the `cheat` command
* Save the script in the same directory/folder as you saved the question 3 script `~/cis106/labs/lab3/`
* Name the script `challenge_lab3.sh`
* The command to run the script is `bash ~/cis106/labs/lab3/challenge_lab3.sh` if this does not work, it is because you saved the script in the wrong folder. *Retrace your steps to troubleshoot.* 
* You must complete this question alone. I cannot provide assistance here. Everything you need to complete this challenge has been covered in this lab and in the [presentations](https://bit.ly/3jS8fNa). While I cannot provide you with assistance answering the question, I can provide extra explanations or clarifications.

> **NOTE**: This script must use the `echo`, `uname`, and `date`, `df`, `free` and `figlet` command. Any other solution that does not involve these commands will not be accepted and you will receive 0 for this question. No exceptions!


## What will you submit:
1. Place and properly label (using headings) all the screenshots you took. See the markdown I gave you at the beginning of this document
2. Convert the file to pdf
3. Push everything to github
4. In Blackboard, submit the pdf file `lab3.pdf`

**Note**: I will read your script from github. If the script is not there, you will not receive credit. 

## How I will grade you:
* I will navigate to your GitHub repository and read your script. 
* I will download your script and run it on my machine. 
* If your script runs and I get the same output as the screenshot, you will get full credit for the challenge question. Otherwise, partial credit will be awarded.
* Every question in this lab is worth 25 points.


<hr>


<p align="center" style="display:block"><img src="/assets/warning-icon.png" width="50" /></p>

<hr>

## Special Note 
You are going to be using the git commands a lot. Here is a quick reference:
* `git clone repository/url/here`: is the command to clone a repository where cloning means downloading a repository to your computer
* `git pull`: to pull/synchronize your repository from github to your local machine. Always run this command BEFORE you start working VS Code
* `git add .`: to track all the changes made to your file. 
* `git commit -m "label for your changes here"`: this command will label all the changes you added with the `add` command
* `git push`: will send all your changes to your github repository

> Always run the commands in this order: <br>`pull` =>  `add` =>  `commit` => `push` 
> **Never use the github website to make changes to your repository unless you know what you are doing and can remember to pull the changes before working on your local repository!**

<p align="center" style="display:block"><img src="/assets/warning-icon.png" width="50" /></p>

## Special Note:
* The final exam is in person. 
* The exam is performance based and will require access to a Linux Virtual Machine. 
* If you do not have a laptop/computer you can bring to school, a Linux Computer will be made available to you.
