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
sudo apt update; $ sudo apt install gnome-session-flashback -y
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
Install the programs that you found using a single command. **Which command did you use?**
Remove all the programs that you installed in a single command. **Which command did you use?**
If you were to install the first and second program, but remove the other 3 in a single command, **Which command will you use?**

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


## Question 3 | The ls command
Download this compressed zip file: [lab3files.zip](/assets/lab3files.zip)

> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5.**


## Question 4 | The tree command
* For this question we are going to use Absolute path only.
* Clear your terminal screen.
1. List all the files inside the `Downloads` directory.
2. List all the files inside the `Downloads` directory showing the permissions(protections), file owner, group owner, and human readable file size.
3. List all the files inside the `Downloads` directory showing the date of last modified and sorted by modification time.
4. List all the files inside the `Downloads` directory in HTML format
5. List all the files inside the `Downloads` directory in HTML format and save it to a file.

> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5.**

## Question 5 | Bringing it all together
Utilities like `ls` are a bit old and many developers are starting to write replacements for these tools. One example, is the program `exa`. As per the project's website:

> exa is an improved file lister with more features and better defaults. It uses colours to distinguish file types and metadata. It knows about symlinks, extended attributes, and Git. And it’s small, fast, and just one single binary.

Unfortunately, exa is not available via the default repositories in Ubuntu 20.04. However, this package is available for Ubuntu 20.10 and further releases. This however, does not mean that we cannot install the program. As you saw during the presentation, we can also install software using `.deb files.` To download the `.deb file` for `exa` use this command:

* `wget http://archive.ubuntu.com/ubuntu/pool/universe/r/rust-exa/exa_0.9.0-4_amd64.deb`
* To install the .deb file we can use apt: `sudo apt install ./exa_0.9.0-4_amd64.deb`
* Once we have installed the package we do not need the `.deb file` so lets delete it with: `rm exa_0.9.0-4_amd64.deb`
* Open a second terminal a use the command `exa --help` to see all the options of the exa command. Using these options as a reference, answer the following questions:

1. Long list all the files in your Downloads directory.
2. Long list all the files in your Downloads directory with a header and modified by timestamps.

Another command that is also very useful is `tree`. This program allows you to list files in a tree like format which is very useful when you are working with multiple sub directories. 

3. Install the tree program. Open another terminal and use the `tree --help` command to list all (or most) of the options of the tree command
4. Use `tree` to list all the files in your home directory including the file owner and group.
5. Use `tree` to list all the files in your home directory including their file size and in human readable format.

> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1,2,4 and 5.**


## What to submit?
> **ADVICE!**
> Take a snapshot of your system. This will come handy in the case that you break your system.
## What will you Submit:
* Place all the screenshots and answers to your questions in a the lab3.md file. You can format the questions however you like to make it more readable.
* Push the changes to Github 
* and submit the URL of Lab3.md
* Convert your markdown file to pdf and submit it with the URL

