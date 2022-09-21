---
layout: post
title: Lab 4 - The Linux Filesystem 
---

# {{page.title}}

* Presentations:
  * [How to navigate the filesystem](https://rapurl.live/uz0)
  * Video [here](https://youtu.be/pwgbefPA0lU)


## Question 1:  The linux filesystem

Create a table that includes the following directories and their usage:
1. bin
2. dev
3. etc
4. home
5. media
6. opt
7. proc
8. srv
9. usr
10. var
<br>

Your table must look like this:

| Directory | Function                                                                                    |
| --------- | ------------------------------------------------------------------------------------------- |
| bin       | Nulla enim amet occaecat quis esse proident proident labore do magna laborum nostrud Lorem. |


Create a table of the commands used for navigating the file system (cd, pwd, ls). Your table must include the following:
* The command, 
* what the command does, 
* the syntax/formula of how to use the commands, 
* an example of the command in  use.
> You can get all of that information from the [presentation.](https://rapurl.live/9b5)

### Here is an example of how your table should look like with commands you already used in the past

| Command | What it does                           | Syntax                                     | Example                 |
| ------- | -------------------------------------- | ------------------------------------------ | ----------------------- |
| echo    | Display text to the screen             | `echo` + `option` + `text to display`      | `echo -n "Hello World"` |
| apt     | Set of tools for managing deb packages | `sudo` + `apt` + `option` + `package name` | `sudo apt install vlc`  |
| uname   | prints system information              | `uname` + `option`                         | `uname -a`              |

> Before you continue with this lab, I recommend you complete all the practices located in the [presentation](https://rapurl.live/wfp). If you are confident of your understanding of the commands then you can continue. 

<hr>


## Question 2 | Moving around the file system
* **[pwd](https://rapurl.live/6gj)**: Print the full filename of the current working directory.
* **[cd](https://rapurl.live/n6h)**: Change the shell current working directory.
* **[ls](https://rapurl.live/9v5)**: list files inside a give directory

### Using pwd and cd with absolute path (remember to use the bash autocompletion feature)

1. Start a terminal. What is your present working directory?
2. Change your present working directory to `/usr/share/themes`
3. What is your present working directory now?
4. Change your present working directory to the root of the filesystem
5. Change your present working directory to `/etc/firefox/`
> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5.**

### Using pwd and cd with a relative path (remember to use the bash autocompletion feature)
6. Clear your terminal window. Change the working directory to ***YOUR*** home directory.
7. Change the working directory to the `Downloads` directory.
8. Go back 2 directories.
9. Where are you now? 
10. Change the working directory to the `Documents/` directory.

> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 6-10.**


<hr>

## Question 3 | The ls command
Download this compressed zip file: [lab4files.zip](/assets/lab4files.zip) Decompress the zip file in **your home** directory.

1. Change your present working directory to `/usr/share/`. Using absolute path, list all the files inside the `lab4files` directory.
2. Change your present working directory to `~/lab4files`. Long list all the files inside your current working directory with human readable file sizes.
3. Long list all the files inside `lab4files` with human readable file size, and sorted by file size.
4. Long list all the files inside `lab4files` with human readable file size, sorted by file size, without the user nor the group name, and showing their inode number.
5. list all the files inside `lab4files` sorted by file extension and in reverse order. 

> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5. Multiple screenshots may be **required****

<hr>


## Question 4 | The tree command
> *The tree command is not installed by default in Ubuntu. Make sure that the program is installed in your system before you continue with this question.*

1. Using absolute path and having `/etc` as your present working directory. Display a tree of the directory `lab4files`.
2. Change your present working directory to your Downloads directory. Display a tree of the directory `lab4files` with the full path prefix for each file, the file permissions, and the file size in human readable format.
3. Display a tree of the directory `lab4files` sorted by last modified time and showing the file owner and group.
4. Display a tree of the directory `lab4files` in XML format.
5. Display a tree of the directory `lab4files` in JSON format.
   
> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5. Multiple screenshots may be required**

<hr>

## Question 5 | The exa command. A modern tool to replace ls
Exa is a tool that aims at replacing ls. Exa is not available in Ubuntu 20.04 default repositories. However, you can install it by running this command:
```
curl https://cis106.com/assets/installexa.sh | bash
```
1. Once you have installed exa, list all the options of the exa command.
2. Long list all the files inside `lab4files`
3. Display a tree of `lab4files`
4. Long list `lab4files` showing the header that indicates what each column means.
5. Long list `lab4files` without the file owner nor group including the header and the date the file was created.
> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5. Multiple screenshots may be required**

<hr>

## What will you Submit:
* Place all the screenshots and answers to your questions in a the `lab4.md` file.
* Convert your markdown file to pdf 
* Push the changes to Github 
* Submit the URL of `Lab4.md` and the pdf file
* Take a snapshot of your system and delete the previous snapshot.



