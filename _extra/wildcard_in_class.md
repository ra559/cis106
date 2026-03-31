---
layout: page
title: Wildcards 2
---


# Wildcards in class activity instructions

## Before you start
* Run the script `wildcardInClass.sh`. Use this command: 

```bash
curl https://cis106.com/assets/scripts/wildcardInClass.sh | bash
```

* This will create the directory `inClassActivity` in your home directory. It contains all the files and directories we will use.

## The asterisk (start) wildcard
1. List all the files in the `~/inClassActivity/star/` directory *in a single column* and *sorted by entry extension*
2. Create a new directory in `~/inClassActivity/star/` called `myhomework` and move all the homework files to it.
3. Remove all the text files in `~/inClassActivity/star/`
4. Create a new directory in `~/inClassActivity/star/` called `Notes` and copy all the PDF files with an `_` in the name to it. 

**Take a screenshot to submit later in the in-class activity dropbox**

## The Question mark wildcard
1. Change your current working directory to `~/inClassActivity/qmark`
2. Long list all the hidden files in your current working directory with *no group*, *no owner*, *time-style set to* `+%a` and *human-readable* file size.
3. List all the hidden files in the parent directory (`~/inClassActivity/`)
4. Create a new directory in `~/inClassActivity/qmark` called `other` and move all the hidden files we listed before to this new directory.

**Take a screenshot to submit later in the in-class activity dropbox**


## The square brackets wildcard
1. Change your current working directory to `~/inClassActivity/qmark`
2. List all the `png` files that start with a capital letter
3. List all the `png` files that have a lowercase letter before the file extension.
4. Create a directory called `imgs` and move all the files with a full date in the name to it.

**Take a screenshot to submit later in the in-class activity dropbox**

## Brace Expansion
1. Create a new directory in `~/inClassActivity/` called `brace` and cd into it.
2. Create the following directory structure inside `brace`:

```bash
movies/
├── horror
│   ├── classic
│   └── modern
├── romance
│   ├── classic
│   └── modern
└── scifi
    ├── classic
    └── modern

10 directories, 0 files
```
3. Inside `horror`, `romance`, and `scifi`, create 2 text files using your username as part of the file name. Here is an example of the file's names: old-list-USERNAME-HERE.lst and new-list-USERNAME-HERE.lst. After the files are created, this is how the tree of the movies directory should look:

```bash
movies/
├── horror
│   ├── classic
│   ├── modern
│   ├── new-list-rap.lst
│   └── old-list-rap.lst
├── romance
│   ├── classic
│   ├── modern
│   ├── new-list-rap.lst
│   └── old-list-rap.lst
└── scifi
    ├── classic
    ├── modern
    ├── new-list-rap.lst
    └── old-list-rap.lst

10 directories, 6 files
```

## What will you submit for extra credit
1. In your cis106 directory/local repository, create a new directory called "ExtraCredit" (One word no spaces in file names pleases!)
2. Inside "`ExtraCredit`", create another directory called "`extra7`"
3. Open your cis106 directory/local repository in VS Code
4. Inside "`extra7`" create a markdown file called "`extra7.md`"
5. Add all the screenshots to "`extra7.md`" using proper markdown syntax and labeling each screenshot using heading 2 formatting. Save the markdown file.
6. Your markdown document should start with the following heading 1: `# Extra Credit 7: Wildcards 2` 
7. Convert your file to PDF
8. Run the github commands, in VS Code Terminal, to push all your changes to github:
   1. `gid add .`
   2. `git commit -m "Completed Extra 5"`
   3. `git push`
9. In blackboard submit the following:
   1.  The URL of `extra7.md` 
   2.  The PDF file `extra7.pdf`
