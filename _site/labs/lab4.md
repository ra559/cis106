
# {{page.title}}

* Presentations:
  * [How to navigate the filesystem](https://rapurl.live/uz0)
  * Video [here](https://youtu.be/GhNYOWEc5qc)

> **Note:**
> Questions 1 AND 2 are worth 50 points. Question 3 has no grade. Question 4 and 5 are worth 50 points. So each question here is worth 25 points. In the video, I only complete question 1, 2 and 3. You have to do question 4 and 5 on your own. Your final exam will include questions similar to 4 and 5. I will answer questions 4 and 5 during class after the due date for this lab full has expired. 

## Question 1 | Moving around the file system
* **[pwd](https://rapurl.live/6gj)**: Print the absolute path of the current working directory.
* **[cd](https://rapurl.live/n6h)**: Change the shell current working directory.
* **[ls](https://rapurl.live/9v5)**: list files inside a given directory

> Before you start this lab, complete all the practice in the presentation. This will allow you to understand these commands better. This is part of your Week report so make sure to take screenshots. 

### Using pwd and cd with absolute path (remember to use the bash autocompletion feature)

1. Start a terminal. What is your present working directory?
2. Change your present working directory to `/usr/share/themes`
3. What is your present working directory now?
4. Change your present working directory to the root of the filesystem
5. Change your present working directory to `/snap/firefox/`
![lab 4.1](/assets/lab4-1.gif)<br>
> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5.**

### Using pwd and cd with a relative path (remember to use the bash autocompletion feature)
6. Clear your terminal window. Change the working directory to ***YOUR*** home directory.
7. Change the working directory to the `Downloads` directory.
8. Go back 2 directories.
9. Where are you now? 
10. Change the working directory to the `Documents/` directory.
![lab 4.1.1](/assets/lab4-1-1.gif)<br>
> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 6-10.**

<hr>

## Question 2 | The ls command
Download this compressed zip file: [lab4files.zip](/assets/lab4files.zip) Decompress the zip file in **your home** directory.
![lab 4 2.1](/assets/lab4-2-1.gif)<br>
1. Change your present working directory to `/usr/share/`. Using absolute path, list all the files inside the `lab4files` directory.
2. Change your present working directory to `~/lab4files`. Long list all the files inside your current working directory with human readable file sizes.
3. Long list all the files inside `lab4files` with human readable file size, and sorted by file size.
4. Long list all the files inside `lab4files` with human readable file size, sorted by file size, without the user nor the group name, and showing their inode number.
5. list all the files inside `lab4files` sorted by file extension and in reverse order. 

> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-5. Multiple screenshots may be **required****

<hr>


## Question 3 | The tree and exa command (Optional Question. No submission required)

![lab 4 3.1](/assets/lab4-3.gif)<br>
1. Using absolute path and having `/etc` as your present working directory. Display a tree of the directory `lab4files`.
2. Change your present working directory to your `Downloads` directory. Display a tree of the directory `lab4files` with the full path prefix for each file, the file permissions, and the file size in human readable format.
3. Display a tree of the directory `lab4files` sorted by last modified time and showing the file owner and group. 
4. Once you have installed exa, list all the options of the exa command.
5. Using exa, long list all the files inside `lab4files`
6. Long list `lab4files` showing the header that indicates what each column means.
7. Long list `lab4files` without the file owner nor group including the header and the date the file was created.

<hr>

## Question 4 | Challenge Question 1

Use this image as a visual aid during this question
<br>![visual aid linux FS](/assets/Linux-Filesystem-Incomplete-visual-aid.png)<br>

1. Open a new terminal. What is your present/current working directory?
2. Change your present/current working directory to the `default` directory located inside `/usr`
3. Change your present/current working directory to the `ipv4` directory located inside `/proc`
4. change your present/current working directory to the previous present/working directory.
5. List all the files inside `share/backgrounds` without changing your present working directory.
6. List all the files inside your `cis106` directory located in YOUR home directory.
7. List all the files inside your `Downloads` directory. Your present working directory has to be `/home` before your can list all the files.
8. Change your present/current working directory to `disk/by-id`  and from there long list all the files in your home directory including hidden files.
9. List all the files sorted by modification time inside the `share/themes` directory.
10. List all the files sorted by file extension inside the `/usr/share` directory.

> **Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer questions 1-10. Multiple screenshots may be required**


## Question 5 | Challenge Question 2

1. Go to the root of the filesystem. From there reach the `Downloads` directory.
   1. **Rules:**
      1. You are only allowed to move 1 directory at the time. Which means you cannot use shortcuts or absolute path
      2. Once you have reached the Downloads directory, show the absolute path of your current/present working directory.
      3. Take a screenshot of your terminal showing all the commands you use to solve this sub question.
>**Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer question**

2. Change your present working directory to `/usr/share/themes/Adwaita`. From there reach your Documents directory. 
   1. **Rules:**
      1. You are allowed to move more than 2 directories at a time.
      2. You can use shortcuts or use absolute paths.
      3. Once you haver reached the Documents directory, show your present working directory.
      4. Take a screenshot of your terminal showing all the commands you use to solve this sub question.
>**Take a screenshot of the terminal only. Your screenshot must show all the commands that you used to answer question**  



## What will you Submit:
* Place all the screenshots and answers to your questions in a the `lab4.md` file.
* Convert your markdown file to pdf 
* Push the changes to Github
  * `git pull; git add .; git commit -m 'lab3 completed'; git push`
* Submit the URL of `Lab4.md` and the pdf file
* Delete all the snapshopts and take a new one. Name it "Lab 4 complete" 


