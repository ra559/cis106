---
layout: page
title: Mkdir, touch, and rm
---

# {{page.title}}

<!-- vscode-markdown-toc -->
* 1. [Commands reference table](#Commandsreferencetable)
* 2. [MKDIR](#MKDIR)
	* 2.1. [Description](#Description)
	* 2.2. [Formula/usage](#Formulausage)
	* 2.3. [Examples](#Examples)
	* 2.4. [Practice](#Practice)
		* 2.4.1. [Description](#Description-1)
		* 2.4.2. [Solution](#Solution)
* 3. [TOUCH](#TOUCH)
	* 3.1. [Description](#Description-1)
	* 3.2. [Formula/usage](#Formulausage-1)
	* 3.3. [Examples](#Examples-1)
	* 3.4. [Practice](#Practice-1)
		* 3.4.1. [Description](#Description-1)
		* 3.4.2. [Solution](#Solution-1)
* 4. [RM](#RM)
	* 4.1. [Description](#Description-1)
	* 4.2. [Formula/usage](#Formulausage-1)
	* 4.3. [Examples](#Examples-1)
	* 4.4. [Practice](#Practice-1)
* 5. [MV](#MV)
	* 5.1. [Description](#Description-1)
	* 5.2. [Formula/usage](#Formulausage-1)
		* 5.2.1. [Moving](#Moving)
		* 5.2.2. [Renaming](#Renaming)
	* 5.3. [Examples](#Examples-1)
	* 5.4. [Practice](#Practice-1)
* 6. [CP](#CP)
	* 6.1. [Description](#Description-1)
	* 6.2. [Formula/usage](#Formulausage-1)
	* 6.3. [Examples](#Examples-1)
	* 6.4. [Practice](#Practice-1)

<!-- vscode-markdown-toc-config
	numbering=true
	autoSave=true
	/vscode-markdown-toc-config -->
<!-- /vscode-markdown-toc -->


##  1. <a name='Commandsreferencetable'></a>Commands reference table

These are the most basic commands to manage files and directories.

| Command | Definition                 | Formula                                            | Example                                                     |
| ------- | -------------------------- | -------------------------------------------------- | ----------------------------------------------------------- |
| mkdir   | makes directories          | `mkdir` + option + `new directory(ies) name`       | `mkdir ~/Downloads/games`                                   |
| touch   | makes files                | `touch` + option + `new file(s) name`              | `touch ~/Downloads/games/list.txt`                          |
| rm      | removes files              | `rm` + option + `files to delete`                  | `rm ~/Downloads/games/list.txt`                             |
| mv      | moves files & directories  | `mv` + option + `source path` + `destination path` | `mv ~/Downloads/games ~/Documents/`                         |
| mv      | rename files & directories | `mv` + option + `old name` + `new name`            | `mv ~/Documents/games/old.txt ~/Documents/games/mylist.txt` |
| cp      | copies files & directories | `cp` + option + `sources path` + `destination`     | `cp -r ~/Downloads/oldGames/ ~/Games/`                      |


##  2. <a name='MKDIR'></a>MKDIR

###  2.1. <a name='Description'></a>Description

* Used for create directories. Mkdir can make  1 or multiple directories by separating each directory name with a space. 

###  2.2. <a name='Formulausage'></a>Formula/usage
`mkdir` + `option` + `directory names`

***Where directory name can be:***
  * Just the name of the directory if you want to create them in the current working directory
  * `Absolute` or `relative` path if you want to create the directory in a different location

###  2.3. <a name='Examples'></a>Examples

* **Using relative path**: Create a directory in your current working directory called `games`
  * `mkdir games`
* **Using relative path:** Create 3 directories inside the games directories called: `action`, `adventure`,`fps`
  * `mkdir games/action games/adventure games/fps` 
* **Using absolute path:** Create a directory in the action directory called `wonderboy`
  * `mkdir ~/games/action/wonderboy`
* **Using absolute path:** Create 2 directories, one in `fps` and another in `adventure`. Call them `cod` and `uncharted`
  * `mkdir ~/games/fps/cod ~/games/adventure/uncharted`
* Create a parent and subdirectory at the same time
  * `mkdir -p ~/Documents/school/english/homework`
* Create a directory and display a message confirming the directory creation (verbose output)
  * `mkdir -pv ~/Downloads/games`
  * `mkdir -pv ~/Downloads/games/action games/fps/doom practice`


<p align="center">
  <img src="/assets/extras/mkdir.png" alt="mkdir gif"/>
</p>


###  2.4. <a name='Practice'></a>Practice

####  2.4.1. <a name='Description-1'></a>Description
You have just been assigned the task of organizing a new project called "ProjectPhoenix" on your company's server. For this project, you need to set up a directory structure that will hold various types of documents. The structure should look like this:

```bash
ProjectDelta/
├── planning/
│   ├── meetings/
│   └── drafts/
├── development/
│   ├── code/
│   └── documentation/
└── testing/
    ├── unit_tests/
    └── integration_tests/
```

####  2.4.2. <a name='Solution'></a>Solution

<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" onclick="var x = document.getElementById('mkdir-practice');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">Show Solution</button>
<p align="center" style="display:none" id='mkdir-practice'><img src="/assets/extras/mkdir_practice.png" alt="parent vs child directory"/></p>


##  3. <a name='TOUCH'></a>TOUCH

###  3.1. <a name='Description-1'></a>Description

`touch` is used to create an empty file or to update the timestamp of an existing file. If the specified file does not exist, touch will create it. If the file exists, touch will update its access and modification times to the current time.

###  3.2. <a name='Formulausage-1'></a>Formula/usage

* `touch` + `option` + `file(s) name`

***Where file name can be:***
  * Just the name of the files if you want to create them in the current working directory
  * `Absolute` or `relative` path if you want to create the directory in a different location


###  3.3. <a name='Examples-1'></a>Examples

* Create multiple files in the current working working directory
  * `touch notes.txt program.py page.html`
* Create multiple files in different directories using **absolute path**
  * `touch ~/games/action/wonderboy/run.txt ~/games/adventure/uncharted/todo.md`
* Create multiple files in different directories using **relative path**
  * `touch games/action/run.sh games/fps/readme.md`


<p align="center">
  <img src="/assets/extras/touch.png" alt="touch"/>
</p>

###  3.4. <a name='Practice-1'></a>Practice

####  3.4.1. <a name='Description-1'></a>Description
In th previous practice, you created a directory structure. Add the following files to each directory:

```bash
ProjectDelta/
├── development
│   ├── code
│   │   ├── app.js
│   │   ├── index.html
│   │   └── styles.css
│   └── documentation
│       └── readme.md
├── planning
│   ├── drafts
│   │   └── notes.md
│   └── meetings
│       └── schedule.docx
└── testing
    ├── integration_tests
    │   └── instructions.md
    └── unit_tests
        └── test.js

10 directories, 8 files
```

####  3.4.2. <a name='Solution-1'></a>Solution


<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" onclick="var x = document.getElementById('touch-practice');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">Show Solution</button>
<p align="center" style="display:none" id='touch-practice'><img src="/assets/extras/touch_practice.png" alt="parent vs child directory"/></p>



##  4. <a name='RM'></a>RM
###  4.1. <a name='Description-1'></a>Description
The `rm` command is used to remove files and directories. It is a powerful command that can **permanently delete files**, so it should be used with caution. By default, rm removes files, but with certain options, it can also delete directories and their contents. In Linux, only empty directories can be removed. When you try to remove non-empty directories the following error is shown: "`rm: cannot remove 'directory_name/': Is a directory`". Even when using the `rmdir` command, trying to remove a non empty directory results in the following error: "`rmdir: failed to remove 'directory_name/': Directory not empty`". To remove directories use the `-r` option. See examples.

###  4.2. <a name='Formulausage-1'></a>Formula/usage

*  `rm` + `option` + `directories or files to remove`

***Where file/directory name can be:***
  * Just the name of the files/directories if they are located in the current working directory
  * `Absolute` or `relative` path if they are located in a different location

<br>

**Common Options:**
* `-f`: Force removal without prompting for confirmation.
* `-r` or `-R`: Recursively remove directories and their contents.
* `-i`: Prompt before each removal.
* `-v`: Verbose mode, showing the files as they are removed.


###  4.3. <a name='Examples-1'></a>Examples

* Remove files using absolute path
  * `rm ~/games/action/run.sh ~/games/adventure/uncharted/todo.md`
* Remove files using relative path
  * `rm games/fps/readme.md games/notes.txt games/page.html`
* Remove files and directories but prompt for confirmation before removing and display removal message when done
  * `rm -vir games/program.py ~/ProjectDelta`
* Remove a non empty directory forcing the removal
  * `rm -rf games/`

<p align="center">
  <img src="/assets/extras/rm.png" alt="rm"/>
</p>

###  4.4. <a name='Practice-1'></a>Practice

You have a folder named "`OutdatedProjects`" in your home directory. This folder contains old project files that you no longer need, including subdirectories with their own files. You want to clean up your home directory by completely removing the "`OutdatedProjects`" folder and all of its contents.

The directory structure looks like this:

```bash
/home/user/OutdatedProjects/
    ├── projectA/
    │   └── old_data.txt
    ├── projectB/
    │   └── old_report.txt
    ├── projectC/
    │   └── notes.txt
    └── archived_files.txt
```

Use the `rm` command to delete the entire "`OutdatedProjects`" directory, including all of its subdirectories and files, using an absolute path.

Before you can run the rm command, you will need to create the directories. Run this command that will run a script to generate the directories and files for you.

```bash
curl https://cis106.com/assets/extra/rm_practice.sh | bash
```


<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" onclick="var x = document.getElementById('rm-practice');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">Show Solution</button>
<p align="center" style="display:none" id='rm-practice'><img src="/assets/extras/rm_practice.png" alt="parent vs child directory"/></p>


##  5. <a name='MV'></a>MV
###  5.1. <a name='Description-1'></a>Description

The `mv` command is used for moving and renaming files and directories. Keep the following points in mind about the mv command:
* mv cannot rename more than 1 file at the time
* mv can move and rename a file at the same time
* mv will set the last argument as the destination or file new name
* **Common options of the mv command:**
  * `-i`: Prompt before overwriting an existing file.
  * `-u`: Move only when the source file is newer than the destination file or when the destination file is missing.
  * `-v`: Verbose mode, showing the files as they are moved or renamed.

###  5.2. <a name='Formulausage-1'></a>Formula/usage
####  5.2.1. <a name='Moving'></a>Moving
* `mv` + `option` + `files/directories to move` + `destination directory`
####  5.2.2. <a name='Renaming'></a>Renaming
* `mv` + `option` + `old name` + `new name`

###  5.3. <a name='Examples-1'></a>Examples
* Move multiple files using a combination of absolute path and relative path
  * `mv -v ~/games/ schoolProject/ Documents/school/hmw.txt ~/Downloads/new_folder/`
    * In this example:
      * `~/games`, `schoolProject/`, and, `Documents/school/hmw.txt` are moved to `~/Downloads/new_folder/`
      * `-v` enables verbose output.
* Rename a directory
  * `mv -v ~/Downloads/new_folder ~/Downloads/projectAvalon/`
* Rename a file
  * `mv -v ~/Downloads/projectAvalon/hmw.txt ~/Downloads/projectAvalon/submission.txt`
* Move and rename a file in a single command
  * `mv -v ~/Downloads/projectAvalon/submission.txt ~/Documents/cis107_document.txt`
* Move and rename a directory in a single command
  * `mv -v ~/Downloads/projectAvalon/ ~/Documents/Avalon`

<p align="center">
  <img src="/assets/extras/mv.png" alt="mv"/>
</p>

###  5.4. <a name='Practice-1'></a>Practice

You are working on a web development project named "`AlphaProject`". You have been give all the files for this project. Your task is to organize the folder. You have to use the mv command for renaming and moving. You are not allowed to create new directories. To get all the necessary files, run this command, which will run a script to generate the directory "`AlphaProject`" including all the necessary files.

```bash
curl https://cis106.com/assets/extras/mv_practice.sh | bash
```

<p align="center">
  <img src="/assets/extras/mv_practice.png" alt="mv"/>
</p>


<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" onclick="var x = document.getElementById('mv-practice');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">Show Solution</button>
<p align="center" style="display:none" id='mv-practice'><img src="/assets/extras/mv_practice_solution.png"/></p>

##  6. <a name='CP'></a>CP
###  6.1. <a name='Description-1'></a>Description

The `cp` command is used to copy files and directories. Cp requires `-r` option to copy directories. You can copy and rename a directory or file in a single command too. However, this only works when trying to copy a single file or directory. This is like making a backup sort-of-speak. 

**Common Options:**

* `-r` or -R: Recursively copy directories and their contents.
* `-i`: Prompt before overwriting an existing file.
* `-u`: Copy only when the source file is newer than the destination file or when the destination file is missing.
* `-v`: Verbose mode, showing the files as they are copied.
* `-a`: Copy files and directories, preserving attributes like timestamps and permissions.

###  6.2. <a name='Formulausage-1'></a>Formula/usage

* `cp` + `option` + `source files/directories` + `destination directory`

###  6.3. <a name='Examples-1'></a>Examples

* Copy several files using a combination of absolute and relative path.
  * `cp -r ~/projectOrion/ ~/Downloads/games.txt Videos/example.mp4 Pictures/bg.png ~/bookProject/`
    * Note: Here we have to use `-r` because there is a directory in the sources to copy (`~/projectOrion`)
* Copy a directory with verbose output
  * `cp -rv ~/projectOrion/ ~/Documents/`

<p align="center">
  <img src="/assets/extras/cp.png" alt="cp"/>
</p>


###  6.4. <a name='Practice-1'></a>Practice

Copy the directory of the previous practice. Copy the directory to the Documents directory. The name of the copy is: `AlphaProjectBackup`

<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" onclick="var x = document.getElementById('cp-practice');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">Show Solution</button>
<p align="center" style="display:none" id='cp-practice'><img src="/assets/extras/cp_practice.png"/></p>
