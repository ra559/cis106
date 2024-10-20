---
layout: post
title: Lab 5 - Managing Files and directories
---

# {{page.title}}

* Presentation [here](https://rapurl.live/f6n)
* Video [here](https://youtu.be/DehHVadtKww)

# NOTE: WORK IN PROGRESS!!!

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


> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5. Multiple screenshots are allowed**


## Question 3: Moving Files and Directories
1. Change the current working directory to `$HOME` and remove the `lab5` directory.
2. Run the following command: <br> `wget https://cis106.com/assets/lab5/lab5.zip && unzip lab5.zip && rm lab5.zip`. <br> You will notice that you have a new `lab5` directory in `$HOME`. Split your terminal in 2 or open a new terminal window. List the `lab5` directory **sorted by file extensions and in a single column**. This will make it easy to work.
3. In `$HOME`, create the following directories: `lab5-imgs`, `lab5-audio`, `lab5-video`, `lab5-docs`
4. Move all the files inside the `lab5` directory to their respective new directories in `$HOME`.  
5. Inside the  `lab5` directory, you will find a directory called `wallpapersLab5`. Move this directory to your `Pictures` directory and rename it to `NewWallpapers`. You must achieve this in a single command.
6. List the directories: `lab5-imgs`, `lab5-audio`, `lab5-video`, `lab5-docs` and `NewWallpapers` in a single command using absolute path for each directory path. 
7. Remove `lab5`, `lab5-imgs`, `lab5-audio`, `lab5-video`, `lab5-docs` and `NewWallpapers`  
8. List `$HOME`. Use this command to list directories only: `ls -d1 ~/*/`

<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" onclick="var x = document.getElementById('q3');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">Show Solution</button>
<p align="center" style="display:none" id='q2'><img src="/assets/lab5/q3-solution.png"/></p>

> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5. Multiple screenshots are allowed**


## Question 4: Copying Files and Directories
1. Go to [pexels.com](https://www.pexels.com/search/HD%20wallpaper/). Download at least 3 wallpapers.
2. Copy the wallpapers to your `Pictures/NewWallpapers` directory. 
3. Create a new directory in your `Downloads` directory (use whatever naming convention you want). Download 3 wallpapers and move them to your new directory.
4. Copy your new directory to the `Pictures` directory.
5. Remove the new directory in your `Downloads` directory.

> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5. Multiple screenshots are allowed**


## Challenge Question:

1. In your home directory, create a directory called: `lab5ChallengeQuestion` and inside this new directory create one directory called `assets` you must achieve this in a single command.
2. Download an image from this website: [pexels.com](https://www.pexels.com/search/HD%20wallpaper/) and rename it `newPicture.png`. Move this image to your `assets directory`. You must move and rename the file in a single command. 
3. From the root of the file system, create a file in the `lab5ChallengeQuestion` directory called `site.html`
4. open the file `site.html` in a text editor (do not use vs code) and add the following text. Save the file and close the text editor.

```
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Challenge Question Lab 5</h1>
    <img src="./assets/newPicture.png" alt="">
</body>
</html>
```

5. Open the `site.html` file in firefox and take a screenshot. The image you downloaded should be shown there. 

> Take a screenshot of the commands you used to answer this question and of firefox showing the site.html file open.



## What will you Submit:
* Place all the screenshots and answers to your questions in a the `lab5.md` file.
* Convert your markdown file to pdf 
* Push the changes to Github: `git pull; git add .; git commit -m "lab5 complete; git push"`
* Submit the URL of `Lab5.md` and the pdf file
* Take a snapshot of your system and delete the previous snapshot.

### Special Note
You are going to be using the git commands a lot. Here is a quick reference:
* `git clone repository/url/here`: is the command to clone a repository where cloning means downloading a repository to your computer
* `git pull`: to pull/synchronize your repository from github to your local machine. Always run this command BEFORE you start working VS Code
* `git add .`: to track all the changes made to your file. 
* `git commit -m "label for your changes here"`: this command will label all the changes you added with the `add` command
* `git push`: will send all your changes to your github repository

> Always run the commands in this order: `pull` =>  `add` =>  `commit` => `push` 
> **Never use the github website to make changes to your repository unless you know what you are doing and can remember to pull the changes before working on your local repository!**
