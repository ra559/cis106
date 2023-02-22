---
layout: post
title: Lab 5 - Managing Files and Directories
---

# {{page.title}}

* Presentation [here](https://rapurl.live/f6n)
* Video [here](https://youtu.be/DehHVadtKww)


## Question 1: Creating Files and Directories
1. Create a Directory in **YOUR home directory** labeled: `lab5`. 
2. Change your current working directory to `~/lab5`. 
3. Create 3 directories: `pets`,`docs`,`songs`. Inside each directory, create 2 subdirectories called: `new` and `old`.
4. Inside the `new` and `old` directories, create 3 files: `file1`, `file2`, and `file3`.
5. Use the `tree` command to list the `lab5` directory.

> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5. Multiple screenshots is allowed**

## Question 2: Removing Files and Directories
1. Change your current working directory to: `/srv/`
2. Remove the `file1`, `file2`, `file3` files inside the `labs/pets/new/` directory without changing your current working directory.
3. Remove the `pets` directory without changing your current working directory.
4. Remove the `docs` and `songs` directories without changing your current working directory.
5. Remove the `lab5` directory without changing your current working directory.

> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5. Multiple screenshots is allowed**


## Question 3: Moving Files and Directories
1. Make sure that you are working on your home directory. 
2. Run the following command: `wget https://cis106.com/assets/lab5.zip && unzip lab5.zip && rm lab5.zip`
3. In your home directory, create the following directories: `lab5-imgs`, `lab5-audio`, `lab5-video`, `lab5-docs`
4. Move all the files inside the `lab5` directory to their respective new directories in your home directory. 
5. Inside the  `lab5` directory, you will find a directory called `Wallpaperslab5`. Move this directory to your `Pictures` directory and rename it to `NewWallpapers`.
6. Rename the `lab5` directory to `Lab-5`.

> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5. Multiple screenshots is allowed**


## Question 4: Copying Files and Directories
1. Go to [pexels.com](https://www.pexels.com/search/HD%20wallpaper/). Download at least 3 wallpapers.
2. Copy the wallpapers to your `Pictures/NewWallpapers` directory. 
3. Create a new directory in your `Downloads` directory (use whatever naming convention you want). Download 3 wallpapers and move them to your new directory.
4. Copy your new directory to the `Pictures` directory.
5. Remove the new directory in your `Downloads` directory.

> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5. Multiple screenshots is allowed**


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

