---
layout: page
title: Wildcards
---

# {{page.title}}


> Note: Work in progress.

## Description

Wildcards or file globing is a shell feature that, using special characters, allows us to rapidly specify groups of filenames. Because we work with files all the time, it is useful to be able to work with multiple files at the same time. 

### Why and when should I use a wildcard?
Using wildcards can save you a lot of time. Imagine you need to move all the text files in a folder. You could move them one by one—if you know each file's name. But what if there are 300 files? Moving them one at a time would take forever! Wildcards help you by allowing you to match all files that meet a certain pattern or criteria, so you can move them all at once with a single command. Here are some examples:

* Copy all photos from a drive to a flash drive.
* Delete certain types of files from a folder.
* List all files that have a date in their name.

There are only 3 wildcards. Here is how they work:

| Wildcard | definition                            | example                      |
| -------- | ------------------------------------- | ---------------------------- |
| `*`      | matches 0 to any number of characters | `ls ~/Downloads/*.png`       |
| `?`      | matches 1 character                   | `ls ~/Downloads/f?ll.sh`     |
| `[]`     | matches 1 character from a set        | `ls ~/Downloads/f[0-9]ll.sh` |


## What does "matches x number of character" really mean?

This refers to the number of characters in the file name that can be matched everytime the wildcard is used in a command. For example, here is an illustration using the `*` wildcard:


<p align="center">
  <img src="/assets/extras/star_wildcard_ilustration_1.png" style="display: inline-block; width: 45%;"/>
  <img src="/assets/extras/star_wildcard_ilustration_2.png" style="display: inline-block; width: 45%;"/>
</p>

Notice that because the `*` wildcard matches 0 characters and also any number of characters, this command: `ls *SC*.png` matches the files `Script_remover.sh` and `BackupScript.sh`.

To practice the wildcards, run this command:

```bash
curl https://cis106.com/assets/extras/wildcards.sh
```

This will create a directory in your home directory called `wildcard_extra_practice`. This directory contains a bunch of files and directories (created at random). All the examples here will use the files in this directory.


## The * (star/asterisk) wildcard


### Examples:

* list all of the directories inside a given directory without listing their content
  * `ls -1d wildcard_extra_practice/*/`
* move all the `.sh` (shell scripts) files
  * `mv wildcard_extra_practice/*.sh wildcard_extra_practice/scripts/`
* list and then move all the image files in the wildcard_extra_practice directory. You will need to create a directory first.
  * `mkdir wildcard_extra_practice/images/`
  * `ls wildcard_extra_practice/img-*.*` 
  * `mv -v wildcard_extra_practice/img-*.*images/`

## The ? (question mark) wildcard

### Examples:

* List all the files that contain a 4 letter file extension.
  * `ls -1X wildcard_extra_practice/*.????` 
* List all the files that contain a 4 letter file extension and start with letter i:
  * `ls -1X wildcard_extra_practice/i*.????` 
* List all th files Microsoft Office 365 files.
  * `ls -1X wildcard_extra_practice/*.???x`

## The [] (square brackets) wildcard


| POSIX class  | Represents         | Means                                       | Example using `ls`                                           |
| ------------ | ------------------ | ------------------------------------------- | ------------------------------------------------------------ |
| `[:upper:]`  | `[A-Z]`            | Uppercase letters                           | `ls *[[:upper:]]*` - List files with uppercase letters       |
| `[:lower:]`  | `[a-z]`            | Lowercase letters                           | `ls *[[:lower:]]*` - List files with lowercase letters       |
| `[:digit:]`  | `[0-9]`            | Digits                                      | `ls *[[:digit:]]*` - List files containing digits            |
| `[:alpha:]`  | `[A-Za-z]`         | Alphabetic characters                       | `ls *[[:alpha:]]*` - List files with alphabetic characters   |
| `[:alnum:]`  | `[A-Za-z0-9]`      | Alphanumeric characters                     | `ls *[[:alnum:]]*` - List files with alphanumeric characters |
| `[:space:]`  | `[ \t\n\r\f\v]`    | Whitespace characters                       | `ls *[[:space:]]*` - List files with spaces in names         |
| `[:punct:]`  | Punctuation        | Punctuation characters                      | `ls *[[:punct:]]*` - List files with punctuation characters  |
| `[:blank:]`  | `[ \t]`            | Space and tab                               | `ls *[[:blank:]]*` - List files with spaces or tabs          |
| `[:xdigit:]` | `[0-9A-Fa-f]`      | Hexadecimal digits                          | `ls *[[:xdigit:]]*` - List files with hexadecimal characters |
| `[:cntrl:]`  | Control characters | Control characters                          | `ls *[[:cntrl:]]*` - List files with control characters      |
| `[:print:]`  | Printable          | Printable characters                        | `ls *[[:print:]]*` - List files with printable characters    |
| `[:graph:]`  | Graphical          | Visible characters (not spaces)             | `ls *[[:graph:]]*` - List files with graphical characters    |
| `[:word:]`   | `[A-Za-z0-9_]`     | Word characters (alphanumeric + underscore) | `ls *[[:word:]]*` - List files containing word characters    |
| `[:ascii:]`  | ASCII characters   | All ASCII characters (0-127)                | `ls *[[:ascii:]]*` - List files containing ASCII characters  |


### Examples:

* List all the files that start with a capital letter
  * `ls wildcard_extra_practice/[A-Z]*`
* List all the files that contain a number in their name
  * `ls wildcard_extra_practice/*[0-9]*

### Note:
* Wildcards also have their limitations.
* For instance, "List all the files that do not contain a digit in the file name" You may assume that the approach would be `ls  *[!0-9]*`. However, this does not work. This wildcard translates to: <br> "***all files and directories in the current directory whose names contain at least one character that is not a digit (0-9)***" However, if you ever need this, here are two approaches:
  * Use ls + grep:
    * `ls *[!0-9]* | grep -v '[0-9]'`
  * Use find:
    * `find ./ -not -name '*[0-9]*' `
  * Find is preferred for scripts because ls is not suited for shell scripts. ls is intended to be a human friendly tool and the output is difficult to parse properly.


