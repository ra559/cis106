---
layout: page
title: Handling Text Part 1
---

# {{page.title}}

## Before we start!

Run the following command to generate the files we will be working with. This is the same command that you will find on page 3 of the presentation: "[Handling Text Files Part 1](https://docs.google.com/presentation/d/e/2PACX-1vQinYrDhi0FcbL95aDMDQ7CSMVp_TwwlFxotFyZgr7fzJcs_didbQ8Mm1bQ406gYyrRTLZiWE6BZ5rH/pub?start=false&loop=false&delayms=3000&slide=id.g36152345179_0_7)"

```bash
cd ~/Documents/ && git clone https://github.com/linuxworkshop67/sample_files
```

## CAT & TAC
These two commands display the entire file in the terminal. These commands are the equivalent of opening a file in a READ-ONLY text editor. When should you use these commands? Any time you want to display the entire content of a file. 

1. Navigate to the `~/Documents/sample_files/Markdown/` directory and display the content of the following files:
  2. `blog_post.md`
  3. `resume.md`
2. Repeat the previous command with line numbers.
3. Display the content of the same files but in reverse order

> Take a screenshot of your terminal to submit later.

## HEAD & TAIL
We do not always want to see the entire file in the terminal. There are times when a file is too long and we just want a specific number of lines to be displayed. This is where head and tail come in handy. Head displays N number of lines starting at the top of the document where whereas Tail displays N number of lines starting at the bottom of the document. So when should we use these commands? Well, if you need the first 20 lines of a file or the last 30 lines of a file. How about the last line or the first line of a file? 

1. Navigate to the directory: `~/Documents/sample_files/Code`, where you will find Hello World written in different programming languages. Display the first line of each file using a wildcard. (`hello*`)
2. Display the first 10 lines of the file `helloWorld.vala`
3. Display the last line of the Bash and Python script
4. Display the last 10 lines of the file `helloWorld.c`

> Take a screenshot of your terminal to submit later.


## CUT
Sometimes we want specific information inside a text file. In these times, we need to use utilities that will allow us to process the file line by line and run a specific action on each line. Cut is one of those utilities that allows us to strip information from a file line by line. By the way, this does not affect the file. These commands work in memory, which means that the file never gets modified. We will learn how to save the output later.

1. Navigate to the directory `~/Documents/sample_files/Csv`. There you will find a bunch of csv files (comma-separated values).
2. Use the `head` command to display the first line of the file `cars.csv`. This will allow you to know the headers of each column and the delimiter used in the csv file.
3. Use the cut command to generate a list of cars.
4. Use the cut command to generate a list of cars, including the number of cylinders and country of origin

> Take a screenshot of your terminal to submit later.


## SORT
The sort commands well... it sorts! It is useful when we want to sort data. See the presentation to understand the order in which sort operates. 

1. Navigate to the directory `~/Documents/sample_files/Csv`. There you will find a bunch of csv files (comma-separated values).
2. Sort the `cereal.csv` file. Keep in mind that before you run the command, you need to figure out **The delimiter of the file** and **which column you want to use for the sorting**.
3. Use the first column to sort the file
4. Repeat the previous command and save the output to a file named `sorted_cereals.csv`

> Take a screenshot of your terminal to submit later.


## What will you submit for extra credit
1. In your cis106 directory/local repository, create a new directory called "ExtraCredit" (One word no spaces in file names pleases!)
2. Inside "`ExtraCredit`", create another directory called "`extra8`"
3. Open your cis106 directory/local repository in VS Code
4. Inside "`extra8`" create a markdown file called "`extra8.md`"
5. Add all the screenshots to "`extra8.md`" using proper markdown syntax and labeling each screenshot using heading 2 formatting. Save the markdown file.
6. Your markdown document should start with the following heading 1: `# Extra Credit 8: Handlign text files 1` 
7. Convert your file to PDF
8. Run the github commands, in VS Code Terminal, to push all your changes to github:
   1. `gid add .`
   2. `git commit -m "Completed Extra 5"`
   3. `git push`
9. In blackboard submit the following:
   1.  The URL of `extra8.md` 
   2.  The PDF file `extra8.pdf`
