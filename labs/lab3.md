# Lab 3 | Installing software and navigating the file system

## IMPORTANT - READ ME
* You have to complete labs 0 1 and 2 before attempting lab 3.
* If you are using the Cloud environment (Apporto), Make sure that you have complete the Setup per this [video](https://youtu.be/w_nyTC-tuv8) before doing this lab. 
* Software installation cheat sheet available [here](https://bit.ly/3djIsfy)
* Presentation available [here](https://youtu.be/_PoTDzMfi0o)
* Navigating the filesystem cheat sheet available [here](https://rebrand.ly/3bdn1)
* Presentation available [here](https://bit.ly/3alPqPm)
* Amazing video explaining the linux file system [here](https://www.youtube.com/watch?v=HbgzrKJvDRw)

## Environment setup pre-work
Before you start working on this lab, do the following:
* In Ubuntu, Open VS Code and open your CIS-106 folder where you have all your files for this class.
* Inside the CIS106 repository (the folder in VS Code), create a file called lab3.md inside the labs folder. This is the file where you will put the answer to questions.
* Add the following text to the lab3.md file:

```
# Lab 3 | Installing software and navigating the file system | Answers
Assignment description [here](https://raw.githubusercontent.com/ra559/cis106/main/labs/lab3.md)

## Question 1

## Question 2

## Question 3

## Question 4

## Question 5
```

* Commit and push your changes to the repository using the following commands:

```
git pull
git add .
git commit -m "Task: started work on lab3"
git push
```

![Pre work](../imgs/lab3-prework.gif)

## Question 1 | Installing applications
1. Using the command line look for software packages that match the following search criteria:
* 'icon theme'
* 'gtk theme'
**Which command did you use?**

2. Using the command line, install one of the icon themes and one of the gtk themes that you got from your search. **Which command did you use?**
   
3. Set the new icon and gtk themes using Gnome tweaks.

![Gnome Tweaks](../imgs/GnomeTweaks.gif)
   
4. Use the command line to search for an alternative web browser (you already have chromium and firefox so look for something else). Install the alternative web browser. **Which commands did you use to find and install the web browser?**

5. Use the command line to find a 3D or 2D racing game. Answer the following questions about the game:
   1. **What is the name of the package?**
   2. **What dependencies are needed in order to install the package? (you can either take a screenshot of the terminal or copy and paste from the terminal)**
   3. **How much disk space will the package utilize after installation?**


## Question 2 | The pwd and cd command
**pwd**: Print the full filename of the current working directory.
**cd**: Change the shell working directory.

### Using pwd and cd with absolute path (remember to use bash autocompletion feature)

1. Start a terminal. What is your present working directory?
2. Change your present working directory to `/usr/share/themes`
3. What is your present working directory?
4. Change your present working directory to the root of the filesystem
5. Change your present working directory to `/etc/firefox/pref`
> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5.**

### Using pwd and cd with a relative path (remember to use bash autocompletion feature)
6. Clear your terminal window. Change the working directory to *YOUR* home directory.
7. Change the working directory to the Downloads directory.
8. Go back 2 directories.
9. Where are you now?. 
10. Change the working directory to the Documents directory.

> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 6-10.**


## Question 3 | The ls command
* For this question we are going to use relative path only.
* Clear your terminal.
* Download 3 files from the internet (pictures, audio, document, or anything else).
* Make sure that the files you downloaded are stored in your Downloads directory.
* Mare sure that your working directory is your home directory.

1. List all the files in your Downloads directory.
2. List all the files in your Downloads directory including hidden files.
3. Long list all the files in your Downloads directory including hidden files.
4. Long list all the files in your Downloads directory including hidden files and human readable file sizes.
5. Long list all the files in your Downloads directory excluding hidden files, file owner and group, and include human readable file sizes.

> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5.**


## Question 4 | The tree command
* For this question we are going to use Absolute path only.
* Clear your terminal screen.
1. List all the files inside the `/usr/share/themes` directory.
2. Long list all the files inside the `/usr/share/themes` directory showing the modification time, excluding hidden files, file owner and group.
3. List all the files inside the `/usr/share/themes` directory separated by a comma.
4. List all the files inside the `/usr/share/themes` directory sorted by modification time.
5. List all the files inside the `/usr/share/themes` directory by lines instead of columns and sorted alphabetically.

> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5.**

## Question 5 | Bringing it all together
Utilities like ls are a bit old and many developers are starting to write replacements for these tools. One example, is the program exa which is a modern replacement for the ls program. Using the decryption found the projects website:

> exa is an improved file lister with more features and better defaults. It uses colours to distinguish file types and metadata. It knows about symlinks, extended attributes, and Git. And it’s small, fast, and just one single binary.

Unfortunately, exa is not available via the default reposorities in Ubuntu 20.04. However, this package is available for Ubuntu 20.10 and further releases. This however, does not mean that we cannot install the program. As you saw during the presentation, we can also install software using .deb files. To download the .deb file for exa use this command:

* `wget http://archive.ubuntu.com/ubuntu/pool/universe/r/rust-exa/exa_0.9.0-4_amd64.deb`
* To install the .deb file we can use apt: `sudo apt install ./exa_0.9.0-4_amd64.deb`
* Once we have installed the package we do not need the .deb file so lets delete it with: `rm exa_0.9.0-4_amd64.deb`
* Open a second terminal a use the command `exa --help` to see all the options of the exa command. Using these options as a reference answer the following questions:

1. Long list all the files in your Downloads directory (using exa).
2. Long list all the files in your Downloads directory with a header and modified by timestamps.

Another command that is also very useful is `tree`. This program allows you to list files in a tree like format which is very useful when you are working with multiple sub directories. 

3. Install the tree program. Open another terminal and use the `tree --help` command to list all (or most) of the options of the tree command
4. Use tree to list all the files in your home directory including the file owner and group.
5. Use tree to list all the files in your home directory including their file size and in human readable format.

> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5.**


## What to submit?
> **ADVICE!**
> Take a snapshot of your system. This will come handy in the case that you break your system.
## What will you Submit:
* Place all the screenshots and answers to your questions in a the lab3.md file. You can format the questions however you like to make it more readable.
* Push the changes to Github 
* and submit the URL of Lab3.md

