---
layout: post
title: Lab 3 - Using Ubuntu and Moving Around the Filesystem
---

# Lab 3 - Using Ubuntu and Moving Around the Filesystem

* Lab video [here]()
* You have to complete labs 0,1, and 2 before attempting lab 3.
* Software installation cheat sheet available [here](https://bit.ly/3djIsfy)
* Presentation available [here](https://youtu.be/_PoTDzMfi0o)
* Navigating the filesystem cheat sheet available [here](https://rebrand.ly/3bdn1)
* Presentation available [here](https://bit.ly/3alPqPm)
* Amazing video explaining the linux file system [here](https://www.youtube.com/watch?v=HbgzrKJvDRw)


## Question 1 | Using Ubuntu for basic tasks
Perform the following tasks. This question does not require a submission. The point of this question
is to get familiar with the system. The more you use Ubuntu, the less intimidating it becomes. 

1. **Take a screenshot**
   1. Since flameshot is installed in the system already and has replaced the gnome default a screenshot tool. Simply press the print screen key in your keyboard.
   2. There are other screenshot tools for linux. I advise you to research them for your own edification 
2. **Create a desktop shortcut for any web site**
   1. Open a text editor.
   2. Add the following text:
```
#!/usr/bin/evn xdg-open
[Desktop Entry]
Type=Application
Terminal=false
Exec=/usr/bin/firefox https://cis106.com
Name=cis106
Icon=/home/student/.cis106.png
```
> This will create a launcher for the course website.
   3. Save the file with the name: `cis106.desktop` and save it in your Desktop directory.
   4. On the desktop, right click on the file `cis106.desktop` and enable launching:
![allow launching](/assets/allowLanuching.gif)<br>  
1. **Write a Document**
   1. Open Libre office writer.
   2. Go on firefox and copy and paste some text from wikipedia
   3. Convert the file to pdf
2. **Create a Presentation in LibreOffice Impress**
3. **Install a new theme**
   1. Download a GTK theme, icon theme, cursor theme, and wallpaper from this [site](https://www.gnome-look.org/browse/)
   2. Create 2 hidden directories in your home directory: `.themes` and `.icons`
   3. Decompress the files you downloaded earlier.
   4. Move the theme to the `.themes` directory, the icon to the `.icons` directory and the cursor theme to the `.icons` directory
   5. Open the application `tweaks` and change to your new theme and icon. 
4. Install Gnome Classic. GNOME Classic is a GNOME Shell feature and mode for users who prefer a more traditional desktop experience. Read more [here](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/desktop_migration_and_administration_guide/what-is-gnome-classic#:~:text=GNOME%20Classic%20is%20a%20GNOME,The%20Applications%20and%20Places%20menus.) 
* Open a terminal and run this command:
```
sudo apt update; sudo apt install gnome-session-flashback -y
```
* Log out and select the gnome classic session in the gear icon. Log in.
<hr>

## Question 2 | Installing applications
Using the command line, look for a software to do each of the following tasks and then complete the table with the information you found.
1. Play a tetris game
2. Play a racing game
3. Browse the internet
4. Read your email
5. Play music 

```
| Program purpose     | Package Name | Version | Description |
| ------------------- | ------------ | ------- | ----------- |
| Play a tetris game  |              |         |             |
| Play a racing game  |              |         |             |
| Browse the internet |              |         |             |
| Read your email     |              |         |             |
| Play music          |              |         |             |
```
1. Install the programs that you found using a single command. **Which command did you use?**
2. Remove all the programs that you installed in a single command. **Which command did you use?**
3. If you were to install the first and second program, but remove the other 3 in a single command, **Which command will you use?**

> For this question, simple type the commands after the table. No screenshot is required. 

<hr>


## Question 2 | The pwd and cd command
* **pwd**: Print the full filename of the current working directory.
* **cd**: Change the shell current working directory.

### Using pwd and cd with absolute path (remember to use the bash autocompletion feature)

1. Start a terminal. What is your present working directory?
2. Change your present working directory to `/usr/share/themes`
3. What is your present working directory now?
4. Change your present working directory to the root of the filesystem
5. Change your present working directory to `/etc/firefox/`
> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5.**

### Using pwd and cd with a relative path (remember to use the bash autocompletion feature)
6. Clear your terminal window. Change the working directory to *YOUR* home directory.
7. Change the working directory to the `Downloads` directory.
8. Go back 2 directories.
9. Where are you now? 
10. Change the working directory to the Documents directory.

> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 6-10.**


<hr>

## Question 3 | The ls command
Download this compressed zip file: [lab3files.zip](/assets/lab3files.zip) Decompress the zip file in **your home** directory.

1. Change your present working directory to `/usr/share/`. Using absolute path, list all the files inside the `lab3files` directory.
2. Change your present working directory to `~/lab3files`. Long list all the files inside your current working directory with human readable file sizes.
3. Long list all the files inside `lab3files` with human readable file fizes, and sorted by file size.
4. Long list all the files inside `lab3files` with human readable file fizes,  sorted by file size, without the user nor the group name, and showing their inode number.
5. list all the files inside `lab3files` sorted by file extension and in reverse order. 

> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5. Multiple screenshots may be **required****

<hr>


## Question 4 | The tree command
* The tree command is not installed by default in Ubuntu. Make sure that the program is installed in your system before you continue with this question.

1. Using absolute path and having `/etc` as your present working directory. Display a tree of the directory `lab3files`.
2. Change your present working directory to your Downloads directory. Display a tree of the directory `lab3files` with the full path prefix for each file, the file permissions, and the file size in human readable format.
3. Display a tree of the directory `lab3files` sorted by last modified time and showing the file owner and group.
4. Display a tree of the directory `lab3files` in XML format.
5. Display a tree of the directory `lab3files` in JSON format.
   
> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5. Multiple screenshots may be required**


<hr>

## Question 5 | The exa command. A modern tool to replace ls
Exa is a tool that aims at replacing ls. Exa is not available in Ubuntu 20.04 default repositories. However, you can install it by running this command:
```
curl https://cis106.com/assets/installexa.sh | bash
```
1. Once you have installed exa, list all the options of the exa command.
2. Long list all the files inside `lab3files`
3. Display a tree of `lab3files`
4. Long list `lab3files` showing the header that indicates what each column means.
5. Long list `lab3files` without the file owner nor group including the header and the date the file was created.
> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5. Multiple screenshots may be required**

<hr>

## What will you Submit:
* Place all the screenshots and answers to your questions in a the lab3.md file. You can format the questions however you like to make it more readable.
* Push the changes to Github 
* and submit the URL of Lab3.md
* Convert your markdown file to pdf and submit it with the URL

> Take a snapshot of your system with your virtual machine off when you are done and have submitted this lab.

