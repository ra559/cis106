
# {{page.title}}

## Commands reference table

These are the most basic commands to manage files and directories.

| Command | Definition                 | Formula                                            | Example                                                     |
| ------- | -------------------------- | -------------------------------------------------- | ----------------------------------------------------------- |
| mkdir   | makes directories          | `mkdir` + option + `new directory(ies) name`       | `mkdir ~/Downloads/games`                                   |
| touch   | makes files                | `touch` + option + `new file(s) name`              | `touch ~/Downloads/games/list.txt`                          |
| rm      | removes files              | `rm` + option + `files to delete`                  | `rm ~/Downloads/games/list.txt`                             |
| mv      | moves files & directories  | `mv` + option + `source path` + `destination path` | `mv ~/Downloads/games ~/Documents/`                         |
| mv      | rename files & directories | `mv` + option + `old name` + `new name`            | `mv ~/Documents/games/old.txt ~/Documents/games/mylist.txt` |
| cp      | copies files & directories | `cp` + option + `sources path` + `destination`     | `cp -r ~/Downloads/oldGames/ ~/Games/`                      |


## MKDIR
### Description

* Used for create directories. Mkdir can make  1 or multiple directories by separating each directory name with a space. 

### Formula/usage
`mkdir` + `option` + `directory names`

***Where directory name can be:***
  * Just the name of the directory if you want to create them in the current working directory
  * `Absolute` or `relative` path if you want to create the directory 

### Examples

* **Using relative path**: Create a directory in your current working directory called `games`
  * `mkdir games`
* **Using relative path:** Create 3 directories inside the games directories called: `action`, `adventure`,`fps`
  * `mkdir games/action games/adventure games/fps` 
* **Using absolute path:** Create a directory in the action directory called `wonders-of-the-universe`
  * `mkdir ~/games/action/wonders-of-the-universe`
* **Using absolute path:** Create 2 directories, one in `fps` and another in `adventure`. Call them `cod` and `uncharted`
  * `mkdir ~/games/fps/cod ~/games/adventure/uncharted`

<p align="center">
  <img src="/assets/mkdir.gif" alt="mkdir gif"/>
</p>


### Practice

<hr>

## TOUCH
### Description

### Formula/usage

### Examples

### Practice

<hr>

## RM
### Description

### Formula/usage

### Examples

### Practice

<hr>

## MV
### Description

### Formula/usage

### Examples

### Practice

<hr>

## CP
### Description

### Formula/usage

### Examples

### Practice

<hr>

