---
layout: post
title: Lab 3 - Using Ubuntu 
---
# {{page.title}}
* *Video [here](video here)*

* You have to complete labs 1, and 2 before attempting lab 3.
* Software installation cheat sheet available [here](https://bit.ly/3djIsfy)
  * Video of Presentation available [here](https://youtu.be/_PoTDzMfi0o)
  * Presentation available [here](https://shorturl.at/BDO39)


## Question 1 | Using Ubuntu for basic tasks
Perform the following tasks. The point of this question is to get you familiar with the system. The more you use Ubuntu, the less intimidating it becomes. 

1. Open a terminal and type the `date` command. Take a screenshot of the terminal and highlight the date command. Add some text to the screenshot. Save your screenshot in your `lab3` directory inside your github repository. If the `lab3` directory does not exist, create it.

2. **Create a desktop shortcut for the cis106 website**
* Open a text editor.
* Add the following text:
```
#!/usr/bin/evn xdg-open
[Desktop Entry]
Type=Application
Terminal=false
Exec=/snap/bin/firefox https://cis106.com
Name=cis106
Icon=$HOME/.cis106.png
```
* Save the file with the name: `cis106.desktop` and save it in your Desktop directory.
* On the desktop, right click on the file `cis106.desktop` and enable launching (can also be called: `Allow executing as program`):

![allow launching](/assets/allowLanuching.gif)<br>  

3. **Write a Document**
   1. Open Libre office writer.
   2. Go on firefox and copy and paste some text from wikipedia
   3. Convert the file to pdf
   4. Save the pdf file in the `lab3` directory inside your github repository.
4. **Create a Presentation in LibreOffice Impress**
   1. save the presentation in the `lab3` directory
5. **Play around with the settings of Ubuntu**
   1. Click on the System Tray. Open "Settings"
   2. Change the background.
   3. Go to this [site](https://wallhaven.cc/) and download a new wallpaper and add it as a background. 
   4. Play around with the appearance of Ubuntu.
   5. Play around with the notifications
   6. Disable search for everything except software
   7. Change the screen blank to "Never" in the power settings
   8. Take a look at the rest of the settings
6. **Install a Font**

> This question requires no screenshot

## Question 2 | Using a different desktop environment

4. Install Gnome Classic. GNOME Classic is a GNOME Shell feature and mode for users who prefer a more traditional desktop experience. Read more [here](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/desktop_migration_and_administration_guide/what-is-gnome-classic#:~:text=GNOME%20Classic%20is%20a%20GNOME,The%20Applications%20and%20Places%20menus.) 
* Open a terminal and run this command:
```
sudo apt update; sudo apt install gnome-session-flashback -y
```
* Log out and select the gnome classic session in the gear icon. Log in.
![switchingde](/assets/switchinge-de.gif)

> Take a screenshot of your ubuntu system.

> **Note:** *You can go back to Gnome 42 if you want.*
<hr>

## Question 3 | Installing applications
Using the command line, look for a software to do each of the following tasks and then complete the table with the information you found.
1. Play a tetris game
2. Play a video file
3. Browse the internet
4. Read your email
5. Play music 

```
| Program purpose     | Package Name | Version |
| ------------------- | ------------ | ------- |
| Play a tetris game  |              |         |
| Play a video file   |              |         |
| Browse the internet |              |         |
| Read your email     |              |         |
| Play music          |              |         |
```
### CHALLENGE!
1. Install the programs that you found using a single command. **Which command did you use?**
2. Remove all the programs that you installed in a single command. **Which command did you use?**
3. If you were to install the first and second program, but remove the other 3 in a single command, **Which command will you use?**

> For this question, simply complete the table and answer the questions. No screenshot required.

<hr>

## Question 4 | Trying out simple commands (CHALLENGE QUESTION)

Almost all Linux commands include manual pages. Manual pages (man page for short) is a documentation that explains the usage of a command. Man pages are not user friendly and are not meant to be guides but references on how a program works. The more you read man pages the more sense they make. It is normal to feel lost in the beginning. 

To read the manual of a command simply type: `man command` for example, `man date` opens the manual of the date command. 

To move around the man page, use the arrow keys in the keyboard. You can also use the mouse wheel if you are working in a terminal emulator. To get help on how to read the manual press letter `h` to  quit the manual page press `q`

Try the following commands in the terminal
   1. date
   2. free -h
   3. uname -a
   4. du / 
* Install these programs: `fortune cowsay toilet figlet rig lolcat boxes`
* Run these commands on your terminal:
   1. `echo "I Like Linux!" | lolcat`
   2. `fortune | cowsay | lolcat`
   3. `figlet "Linux is cool"`
   4. `fortune | toilet -f term -F border --metal`
   5. `rig | boxes -d boy`

Use the man page to find out what each of these programs do.
```
| command | what it does |
|---------|--------------|
| echo    |              |
| fortune |              |
| cowsay  |              |
| lolcat  |              |
| figlet  |              |
| toilet  |              |
| rig     |              |
```

## What will you submit
* Create a markdown file named `lab3.md` and answer all the questions there.
* Submit the URL to the lab3.md file in github and a pdf version of lab3.md file.