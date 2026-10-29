---
layout: page
title: Managing files in class challenge activities
---

# {{page.title}}


## Making Directories and Files: MKDIR & TOUCH
> **Quick overview:** <br>
> * `mkdir` is the command we use for making directories
> * `touch` is the command we generally use for creating empty files (there are other ways but this is the simplest)

1. In your home directory, create a directory called `projectx`
2. Inside `projectx`, create 3 directories called `data`, `logs`, and `code`
3. Inside the `code` directory, create an empty file called `index.html`
4. Inside the `data` directory, create an empty file called `data.json`
5. Inside the `logs` directory, create an empty file called `access.log`

<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" 
    onclick="var x = document.getElementById('files-practice1');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">Show Solution</button>
<p align="center" style="display:none" id='files-practice1'><img src="/assets/in-class/managing_files/mkdir_touch_1.png"/></p>

> Run the command `tree ~/projectx` and take a screenshot of your terminal

## RM
> **Quick overview:** <br>
> * `rm` is the command we use for removing files
> * `rmdir` is the command we use for removing **EMPTY** directories
> * `rm -r` is the command we use to remove files and **NON-EMPTY** directories

1. Remove the following files without using the `cd` command: <br> `index.html`, `data.json`, and `access.log` 
2. Remove the following directories: <br> `code` and `projectx`

<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" 
    onclick="var x = document.getElementById('files-practice2');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">Show Solution</button>
<p align="center" style="display:none" id='files-practice2'><img src="/assets/in-class/managing_files/rm_rmdir.png"/></p>

> Take a screenshot of your terminal showing the rm commands you used

## MV 
### Getting the required files
1. Create a directory called `homework-files` in your `~/Documents` directory. 
2. Change your current working directory to `~/Downloads`
3. Download the following files from the command line using `wget`. The `wget` command only requires the file’s URL and saves the file to your current directory. <br>
<br><br> `wget https://upload.wikimedia.org/wikipedia/commons/4/45/Linux-for-workgroups-boot.jpg`
<br><br> `wget https://ontheline.trincoll.edu/images/bookdown/sample-local-pdf.pdf`
<br><br> `wget https://example-files.online-convert.com/document/txt/example.txt`
### Moving files
1. Move the 3 files you downloaded earlier to the `homework-files` directory.
2. Move the `homework-files` directory to the `~/Downloads` directory.

### Renaming files
1. Rename the files you downloaded earlier in the following manner:
* `Linux-for-workgroups-boot.jpg` -> `logo.jpg`
* `sample-local-pdf.pdf` -> `report.pdf`
* `example.txt` -> `notes.txt`
2. Rename the directory `homework-files` to `submission` and at the same time, move it to the `~/Documents` directory

> Run the command `tree ~/Documents/submission` and take a screenshot of your terminal

## CP
1. Change your current working directory to `~/Downloads` and download the following files using `wget`:<br><br>`wget https://cis106.com/assets/change_font.gif`<br><br>`wget https://cis106.com/assets/example-logo.png`<br><br>`wget https://cis106.com/assets/shopping.txt`<br><br>
2. Create a directory in `~/Documents` called `new-files`
3. Copy the files you downloaded earlier to the `new-files` directory
4. Copy the `new-files` directory to the `~/Pictures` directory.
5. List both copies of `new-files`

> Take a screenshot of your terminal