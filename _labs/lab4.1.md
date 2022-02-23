# Lab 4 | Managing files and directories

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





## IMPORTANT - READ ME
Lab video [here](https://youtu.be/HpkJghX_P1Q)
* You have to complete labs 0, 1, 2, and 3 before attempting lab 4.
* If you are using the Cloud environment (Apporto), Make sure that you have complete the Setup per this [video](https://youtu.be/w_nyTC-tuv8) before doing this lab. 
* [Managing files and directories](https://rebrand.ly/enooum3)
* All the questions in this lab will be in your midterm. 
* Questions 1 - 4 are worth 25 points
* Questions 5 does not require a submission.

# Question 1: Creating Files and Directories
1. Create a Directory in **YOUR** home directory labeled: `lab4`. Change your current working directory to `~/lab4`. 
2. Create 3 directories: `pets`,`docs`,`songs`. Inside each directory, create 2 subdirectories called: `new` and `old`.
3. Inside the `new` and `old` directories, create 3 files: `file1`, `file2`, and `file3`.
4. list the `lab4` directory recursively.
5. Use the `tree` command to list the lab4 directory.

> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5. Multiple screenshots is allowed**

# Question 2: Removing Files and Directories
1. Change your current working directory to: `/srv/`
2. Remove the `file1`, `file2`, `file3` files inside the `labs/pets/new/` directory without changing your current working directory.
3. Remove the `pets` directory without changing your current working directory.
4. Remove the `docs` and `songs` directories without changing your current working directory.
5. Remove the `lab4` directory without changing your current working directory.

> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5. Multiple screenshots is allowed**


# Question 3: Moving Files and Directories
1. Make sure that you are working on your home directory. Run the following command: `wget https://robertalberto.com/public/lab4.zip && unzip lab4.zip && rm lab4.zip`
2. In your home directory, create the following directories: `lab4-imgs`, `lab4-audio`, `lab4-video`, `lab4-docs`
3. Move all the files inside the lab4 directory to their respective new directories in your home directory. 
4. Inside the  `lab4` directory, you will find a directory called `Wallpaperlab4`. Move this directory to your `Pictures` directory and rename it to `NewWallpapers`.
5. Rename the `lab4` directory to `Lab-4`.

> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5. Multiple screenshots is allowed**


# Question 4: Copying Files and Directories
1. Go to [pexels.com](https://www.pexels.com/search/HD%20wallpaper/). Download at least 3 wallpapers.
2. Copy the wallpapers to your `Pictures/NewWallpapers` directory. 
3. Create a new directory in your Downloads directory (use whatever naming convention you want). Download 3 wallpapers and move them to your new directory.
4. Copy your new directory to the Pictures directory.
5. Remove the new directory in your Downloads directory.

> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5. Multiple screenshots is allowed**


# Question 5: Getting Help
This part of this question requires no screenshot! It is just to practice the man command. You can use the less pager commands to move around the man page:

![Less pager commands](../imgs/less-pager-commands.png)
<br>*From the book on page: 19.*

1. Open the man page of the ls command.
2. Open the help page of the man page. Read it!
3. Make sure that you learn how to Quit and Move around.

## What to submit?
1. Place all your images in a markdown file titled lab4.1.md and submit the github url of the file in blackboard.