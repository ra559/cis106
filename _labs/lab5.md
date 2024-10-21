---
layout: post
title: Lab 5 - Managing Files and directories
---

# {{page.title}}

* Presentation [here](https://rapurl.live/f6n)
* Video [here](https://youtu.be/u0O72FLxeVc)

## Question 1.1: Creating Files and Directories - Part 1
* Create the following directory structure. Here are the rules:
  * ***YOU ARE NOT ALLOWED TO USE CD!***
  * You can create more than 1 directory at the same time
  * You can only use **relative path** for all the directory and file names
  * All the commands must be run from your home directory (**$HOME**)

```bash
lab5/
└── q1.1
    └── games
        ├── action
        │   └── action_games.txt
        ├── fps
        │   └── fps_list.txt
        └── rpg
            └── mods.py

5 directories, 3 files
```

* To complete this question, follow these instructions:

1. Create a Directory in **YOUR home directory ($HOME)** labeled: `lab5`. 
2. Inside `lab5` create the directory `q1.1` and the subdirectory `games`. Inside `games`, create the subdirectory `action`. You must use the `-p` option of the    `mkdir` command. Then, inside `games`, create the remaining 2 subdirectories. `-p` is not necessary here anymore because the parents directory already exist. 
3. Inside each respective directory, create the text files: `action_games.txt`,`fps_list.txt`, and `mods.py`
4. Use the `tree` command to list the `lab5` directory. Alternatively, you can use `ls -R` for a recursive list of the `lab5` directory.

> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer this question. Multiple screenshots are allowed**

### Question 1.2: Creating Files and Directories - Part 2

To the previous directory structure, add the missing directories and files. Here are the rules:
  * ***YOU ARE NOT ALLOWED TO USE CD aside from step 1***
  * You can create more than 1 directory at the same time
  * You can only use **absolute path** for all the directory and file names
  * All the commands must be run from your home directory (**/etc**)

```bash
/home/adrian/lab5/
├── q1
│   └── games
│       ├── action
│       │   └── action_games.txt
│       ├── fps
│       │   └── fps_list.txt
│       └── rpg
│           └── mods.py
└── q1.2
    ├── hmw
    │   └── linux.txt
    └── notes
        └── math.pdf

8 directories, 5 files
```
* To complete this question, follow these instructions:

1. Change your current working directory to `/etc`. The remaining of this questions will be completed from this directory.
2. Create the directories and subdirectories: `q1.2`,  `hmw` and `notes`. Remember to use `-p` when necessary.
3. Create the files `linux.txt` and `math.pdf` in their respective directories. 
4. Use the `tree` command to list the `lab5` directory. Alternatively, you can use `ls -R` for a recursive list of the `lab5` directory.

> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer this question. Multiple screenshots are allowed**

<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" onclick="var x = document.getElementById('q1');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">Show Solution</button>
<p align="center" style="display:none" id='q1'><img src="/assets/lab5/q1-solution.png"/></p>


## Question 2: Removing Files and Directories
1. Change your current working directory to: `/srv/`
2. Remove the files: `math.pdf` and `linux.txt` located in the `q1.2` directory.
3. Change your current working directory to `$HOME`
4. Remove the directories `q1.1` and `q1.2`. Use relative path. Remember the `-r` option of the `rm` command

<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" onclick="var x = document.getElementById('q2');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">Show Solution</button>
<p align="center" style="display:none" id='q2'><img src="/assets/lab5/q2-solution.png"/></p>


> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-4. Multiple screenshots are allowed**


## Question 3: Moving Files and Directories
1. Change the current working directory to `$HOME` and remove the `lab5` directory.
2. Run the following command: <br> `wget https://cis106.com/assets/lab5/lab5.zip && unzip lab5.zip && rm lab5.zip` <br> You will notice that you have a new `lab5` directory in `$HOME`. Split your terminal in 2 or open a new terminal window. List the `lab5` directory **sorted by file extensions and in a single column**. This will make it easy to work.
3. In `$HOME`, create the following directories: `lab5-img`, `lab5-audio`, `lab5-video`, `lab5-doc`
4. Move all the files inside the `lab5` directory to their respective new directories in `$HOME`.  
5. Inside the  `lab5` directory, you will find a directory called `wallpapersLab5`. Move this directory to your `Pictures` directory and rename it to `NewWallpapers`. **You must achieve this in a single command.**
6. List the directories: `lab5-img`, `lab5-audio`, `lab5-video`, `lab5-doc` and `NewWallpapers` in a single command using absolute path for each directory path. 
7. Remove `lab5`, `lab5-img`, `lab5-audio`, `lab5-video`, `lab5-doc` and `NewWallpapers`  
8. List `$HOME`. Use this command to list directories only: `ls -d1 ~/*/`

<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" onclick="var x = document.getElementById('q3');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">Show Solution</button>
<p align="center" style="display:none" id='q3'><img src="/assets/lab5/q3-solution.png"/></p>

> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-8. Multiple screenshots are allowed**


## Question 4: Copying Files and Directories
* Rules for this question:
  *  You are not allowed to use CD
  *  You have to use absolute path

1. Go to [Pexels.com](https://www.pexels.com/search/HD%20wallpaper/). Filter the results by Horizontal images. Download at least 3 wallpapers.
2. Split your terminal in 2. In one side, list the wallpapers you downloaded. 
3. In your `~/Pictures` directory, create a new directory called `lab5wallpapers`
4. Copy the newly downloaded wallpapers to the directory `lab5wallpapers` 
5. Copy the `lab5wallpapers` directory to the `Downloads` directory 

<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" onclick="var x = document.getElementById('q4');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">Show Solution</button>
<p align="center" style="display:none" id='q4'><img src="/assets/lab5/q4-solution.png"/></p>


> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5. Multiple screenshots are allowed**


## Challenge Question:

**Problem Description:**<br> Joe is working on a web development assignment. The goal is to create a slide show that can show different images when the user clicks the next and previous button. He has sent you the code that makes the website. Your job is to test it to make sure it works. To download the site use this command:

```bash
cd $HOME && wget https://cis106.com/assets/lab5/website-lab5.zip && unzip website-lab5.zip && rm website-lab5.zip
```

This will create the following directory: `~/website-lab5`. That contains `index.html`. **There is no need to edit this file**. 

If you open the site, you will notice that the site is just a black screen. That is because the directory `website-lab5` is missing 3 image files that you need to test it. Here are the steps to complete this challenge:


1. Use the given command in the problem description to download the directory and file. (`website-lab5/index.html`)
2. Download 3 images from [Pexels.com](https://www.pexels.com/search/HD%20wallpaper/). Make sure the images are horizontal and the file format is jpg
3. Rename and move the images using the following naming convention. You have to rename and move using 1 command. This part should take 3 commands because there are only 3 files.
   1. old_name1.jpg -> img1.jpg
   2. old_name2.jpg -> img2.jpg
   3. old_name3.jpg -> img3.jpg
4. List the `website-lab5` directory. It should look like this:
   
   <p align="center"><img src="/assets/lab5/challenge-q.png"/></p>

5. Open the `index.html` file in firefox and take a screenshot. Test the slideshow by clicking the next and previous buttons. The images you downloaded should be shown there. 


> Take a screenshot of the commands you used to answer this question and of firefox showing the index.html file open.


## What will you Submit:
* Place all the screenshots and answers to your questions in a the `lab5.md` file. Label each question submission correctly using headings.
* Convert your markdown file to pdf 
* Push the changes to Github: `git pull; git add .; git commit -m "lab5 complete; git push"`
* Submit the URL of `Lab5.md` and the pdf file
* If you are using virtualbox, this will be a good time to take a snapshot. 

## How will you be graded:
* You will lose points if you do not include the full screenshot of firefox. I need to see the complete firefox window showing the URL. 
* You will lose points if you use more than 3 mv commands to get the job done.
* The value of each question is: 20pts

### Special Note
You are going to be using the git commands a lot. Here is a quick reference:
* `git clone repository/url/here`: is the command to clone a repository where cloning means downloading a repository to your computer
* `git pull`: to pull/synchronize your repository from github to your local machine. Always run this command BEFORE you start working VS Code
* `git add .`: to track all the changes made to your file. 
* `git commit -m "label for your changes here"`: this command will label all the changes you added with the `add` command
* `git push`: will send all your changes to your github repository

> Always run the commands in this order: `pull` =>  `add` =>  `commit` => `push` 
> **Never use the github website to make changes to your repository unless you know what you are doing and can remember to pull the changes before working on your local repository!**
