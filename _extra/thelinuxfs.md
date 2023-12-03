---
layout: page
title: The Linux FS
---

# {{page.title}}

> ***All The videos [here](https://www.youtube.com/playlist?list=PL5lh7Nw87hufz3zTPu8XYGi9frBwZBPZN)***<br>
## Other Review Videos:
* [REVIEW 4: The LS command and Practice](https://www.youtube.com/watch?v=FhXQHSIeyMI)
* [Linux Tutorials | The ls command | GeeksforGeeks](https://www.youtube.com/watch?v=C1btVko0CVE)
* [How to Use The ls Command on the Linux Command Line](https://www.youtube.com/watch?v=43hcVCt_GMc)
  
<p align="center">
  <img src="/assets/the_linux_fs.png" alt="the linux fs"/>
</p>

## Basic Concepts
<hr>
* **The root directory:** The first directory in the filesystem that contains the entire filesystem represented by "`/`".
* **Current working directory:** Also known as the present working directory. It is the directory where you are currently working in. You are always working from a directory.
* **Parent Directory:** a dirtectory containing one or more directories and files. 
* **Child directory:** a better name for this is a subdirectory or subfolder. This is a directory inside another directory. See image for visual reference. 

<p align="center">
  <img src="/assets/parent_and_child_directory.png" alt="parent vs child directory"/>
</p>

* **YOUR HOME DIRECTORY:** This is your user's personal directory where all your files are located. Every user has it's own home directory just like in a apartment complex they all residents have their own apartment while sharing the common areas. You have total ownership of your home directory but outside of the home directory only the root user can make changes. An example absolute path, assuming that user name is maria53, would be `/home/maria53`
* **The home Directory:** This is the parent directory of all the home directories. This is where all the users' home directory are. The absolute path of this directory is `/home`. Noticed that it starts at the root. 
* **The root user:** This is the administrator account of your system. To perform administrative tasks or to manage directories and files outside of your home directory, you must obtain root privileges using the `sudo` command at the beginning of the command. 
* **Path name:** Also known as file path. This is the location of a given file in your computer. A path name can be absolute path or relative path.
* **Absolute Path:** The location of a file starting at the root of the file system. For example, `/home/maria53/Downloads/list.txt` is the absolute path of the file `list.txt`. The advantage of absolute paths is that they can be used at any point of the file system regardless of your current directory. Any command that is given an absolute path will be able to find the file because it will start at the beginning of the filesystem. The disadvantage is that a command can be long to type if the file path is long.
* **Relative Path:** The location of a file starting from a child directory of the current working directory or from the current directory itself. The advantage of using relative path is that typing commands is faster. The disadvantage of relative paths is that they cannot work from anywhere in the filesystem. In order for a relative path to work, a file must be reachable from the current directory onwards.  Another disadvantage of relative paths is that they require a better mental understanding of the linux filesystem in the sense that you must keep a mental image of the directory tree that you are working with. An example of a relative path would be `Downloads/list.txt` assuming that the current working directory is `/home/maria53`


<hr>

## Commands to navigate the linux filesystem
To navigate the linux filesystem, you only need to master 3 commands: `cd`, `pwd` and `ls`. While there are other useful commands, those can be considered complimentary and you should learn them after you have mastered those 3. 

### PWD
* **Usage**
  * Displays the absolute path of the current working directory.
* **Formula**
  * `pwd`
* **Examples**
  * Print the absolute path of current working directory
    * `pwd`

<p align="center">
  <img src="/assets/review_assets/pwd.png" alt="parent vs child directory"/>
</p>

### CD

### LS

### Tree

### EXA

### DIR


## Complementary commands to help you navigate the linux filesystem
tree
exa
dir



## Question 1
1. Use the cd command to reach the following directories:
* X11
* by-id
* local
* python3.9
* backgrounds
* themes

2. Use ~, $HOME, $OLDPWD,  .., and, - with cd
* Go to ~/Downloads
* Go back 2 directories. Where are you now?
* Go to /usr/share/themes/
* Go back to the previous working directory ($OLDPWD)

## Question 2
Use the ls command to complete these task:
* List all the files inside your home directory
* List all the files inside your home directory including hidden files
* List all the files inside your home directory including hidden files but excluding .. and .
* Long list all the files in your home directory including hidden files but excluding .. and .
* Long list all the files in your home directory including hidden files but excluding .. and . and classified
* List all the files in the `/usr/share/themes` directory
* Change your current working directory to `/proc/sys/net/` and from there list all the files in your home directory classified, in a single column, and sorted by size.
* Change your current working directory to `~/Downloads` and from there list all the files in the `/etc/` directory sorted by file extension

