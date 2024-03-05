---
layout: page
title: Cd ../ vs cd -
---

# {{page.title}}

## Concepts

* **Environment variable**:  is a dynamic-named value typically used to configure the behavior of programs and applications, provide information about the system environment, or store temporary data.
  * $PWD: Stores the absolute path of the current working directory
  * $OLDPWD: Stores the absolute path of the previous current working directory
* **Parent directory:** refers to the directory that contains another directory or file. It's the directory that is one level higher in the directory tree hierarchy.
* **Current directory:** refers to the directory in which you are currently working or the directory that your shell session is currently "in."

## cd ..

We user `cd ../` when we want to navigate the the directory above the current directory. Say that your current working directory is `/home/student/Downloads/Games/`Doom/ and you want to go to /home/student/Downloads/Games. In this instance the `cd ../ `command will take you there. The 2 dots indicate the parent directory of the current working directory. You can use it to navigate to more than 1 parent directory for example, if we want to go to /home/student, we would use `cd ../../../`

<p align="center">
  <img src="https://rapurl.live/jx9"/>
</p>

Notice that in this instance we only moved up in the directory tree.

## cd -

cd - is used to move between 2 directories. These are the current directory and the previous current directory. Linux has 2 environment variables to keep track of this information; `$OLDPWD` and $PWD. Every time you use the cd command these 2 variables get updated to reflect the current information. So if your current working directory is `/home/student/Downloads/Games/Doom` and you use cd to change to `/usr/share/themes` then the current value of those variables would be:
* **OLDPWD**=home/student/Downloads/Games/Doom 
* **PWD**=/usr/share/themes

Now, if you use the `cd -` command, then bash will change directories to the value in `$OLDPWD` and update the variables accordingly. So the values now are:
* **OLDPWD**=/usr/share/themes 
* **PWD**=home/student/Downloads/Games/Doom 



<p align="center">
  <img src="https://rapurl.live/uy5"/>
</p>

## When should I use cd -?

Well that depends on your workflow and what you are doing at the moment. Since we can switch between 2 directories without typing the path, this comes handy in the following essenarios:

1. If you are working in two directories and need to switch between them frequently, and the path is long and you don't want to type all of that.
2. If you are editing files in different directories using a command-line 
3.  If you are working in a temporary directory you can switch back and forward between the temp directory and the current directory
4.  If you are writing script that requires you to move from 2 directories, cd - allows you to do that without storing the paths in variables. 

## When should I use cd ../?

All the time honestly! typing .. is quicker than typing a path backwards. So whenever you need to switch back to the parent directory, use this instead!

## Then what's up with .. and .?

A single dot (.), represents the current directory where the 2 dots, as mentioned earlier represents the parent directory. This means that:

* `ls .` and `ls` do the same thing because by default ls will list the current directory.
* `cd .` will do nothing because it will try to change directory to the current directory. And you cannot go into a room that you are already in! 

However, there are legit uses for the single dot (.) For example, when you want to copy a file from one directory the current directory:

* `cp ~/Pictures/Wallpapers/wall.png ./` 

Or when writing paths to files in the current directory in markdown:

* `![wall](./wall.png)` 


<p align="center">
  <img src="https://rapurl.live/3iw"/>
</p>