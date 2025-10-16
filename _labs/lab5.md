---
layout: "page"
title: Lab 5 - The Linux File system
---

## Question 1 | Moving around the file system

| Command                        | Description                                               |
| ------------------------------ | --------------------------------------------------------- |
| [pwd](https://rapurl.live/lke) | Print the absolute path of the current working directory. |
| [cd](https://rapurl.live/w78)  | Change the shell current working directory.               |
| [ls](https://rapurl.live/wu5)  | list files inside a given directory                       |


### Using pwd and cd with absolute path (remember to use the bash autocompletion feature)

1. Open the Tilix or the terminal application. What is your present working directory?
2. Change your present working directory to `/usr/share/themes`. Other ways of saying the same thing are:
   1. Go to the directory: `/usr/share/themes`
   2. cd into `/usr/share/themes`
   3. Change directories to `/usr/share/themes`
3. What is your present working directory now?
4. Change your present working directory (PWD) to **the root of the filesystem (/)**
5. Change your present working directory (PWD) to `/dev/cpu/0` (if for whatever reason you don't have this directory then use: `/home/your-user-name-here/Downloads/`)

<p align="center" style="display:block"> <img src="/assets/lab4-1.gif" width="500" /> </p> 

> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer 1-5.**

### Using pwd and cd with a relative path (remember to use the bash autocompletion feature)
6. Clear your terminal window. Change the working directory to ***YOUR*** home directory.
7. Change the working directory to the `Downloads` directory.
8. Go back 2 directories.
9. Where are you now? 
10. Change the working directory to the `Documents/` directory.

<p align="center" style="display:block"> <img src="/assets/lab4-1-1.gif" width="500" /> </p> 


> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 6-10.**

<hr>

## Question 2 | The ls command
Download this compressed zip file: [lab5files.zip](/assets/lab5files.zip) Decompress the zip file in **your home** directory.
You can do this graphically like this:

<p align="center" style="display:block"> <img src="/assets/lab5/q2-demo.gif" width="500" /> </p> 

Or you can use these commands:

```bash
wget https://cis106.com/assets/lab5files.zip && unzip lab5files.zip
```


1. Change your present working directory to `/usr/share/`. Using absolute path, list all the files inside the `lab4files` directory.
2. Change your present working directory to `~/lab4files`. Long list all the files inside your current working directory with **human readable** file sizes.
3. Long list all the files inside `lab4files` with **human readable** file size, and **sorted by file size**.
4. Long list all the files inside `lab4files` with **human readable** file size, **sorted by file size**, **without the user nor the group name**, and **showing their inode number**.
5. List all the files inside `lab4files` **sorted by file extension** and in **reverse order**. 

> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5. Multiple screenshots may be **required****

<hr>

## Question 3 | Challenge question
For this challenge, we will bring all 3 commands together plus `realpath` and `tree`.

1. Download and execute this script: 
2. You can use the following commands:

```bash
wget https://cis106.com/assets/scripts/marstenhouse.sh
bash marstenhouse.sh
```
### Scenario:
You have been kidnapped by Barlow’s minions and brought to Marsten House. You wake up disoriented and surrounded by darkness. Your only light comes from your smartphone — the `pwd` and `ls` commands. Your legs are weak, but you can still move one room at a time using `cd` with relative paths. Somewhere within this house are five hidden keys. Each one contains a piece of the code you need to escape. Once you find a key, reveal its true location using `realpath`. Only then will you know where you truly are.

### Challenge:
* Explore Marsten House and locate all 5 hidden keys.
* You may only use relative paths when navigating with `cd`.
* You must use absolute paths only when revealing each key’s location with `realpath`.
* Commands allowed: `ls`, `pwd`, `cd`, `tree`, and `realpath`.

### Deliverables:
Submit screenshots of the following:

1. A full map of Marsten House generated using the tree command.
2. The absolute path to each hidden key, shown using the `realpath` command.

<hr>

## What will you submit:.
1. Place and properly label (using headings) all the screenshots
2. Convert the file to pdf
3. Push everything to github
4. In Blackboard, submit the pdf file `lab5.pdf`

## How I will grade you:
* Question 1: 25 pts 
* Question 2: 25 pts
* Question 3: 50 pts

## Special Note 1 - Practice navigating the file system
Navigating the file system via the command line (cd, pwd, ls) is the core of using the command line. It is the one skill you need to master because it is the most fundamental thing you can do in a computer that does not have a GUI. This will be required in your final exam.

## Special Note 2 - Git Command Quick Reference
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
  * Request it early—available computers are limited.