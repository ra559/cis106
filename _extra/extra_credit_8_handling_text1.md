---
layout: page
title: Extra Credit 8 - Text Files 1
---

# {{page.title}}
- [{{page.title}}](#pagetitle)
  - [Before we start!](#before-we-start)
  - [What will you learn](#what-will-you-learn)
  - [CAT \& TAC](#cat--tac)
  - [HEAD \& TAIL](#head--tail)
  - [CUT](#cut)
  - [SORT](#sort)
  - [What will you submit for extra credit](#what-will-you-submit-for-extra-credit)


## Before we start!

Run the following command to generate the files we will be working with. This is the same command that you will find on page 3 of the presentation: "[Handling Text Files Part 1](https://rapurl.live/dtc)"

```bash
cd ~/Documents/ && git clone https://github.com/linuxworkshop67/sample_files
```

## What will you learn
* Learn how to display and inspect text files using `cat`, `tac`, `head`, and `tail`
* Practice extracting specific information from files using the `cut` command
* Learn how to sort text data using the `sort` command
* Develop the ability to work with structured text files such as CSV files
* Practice combining commands and analyzing text data from the Linux terminal


## CAT & TAC
These two commands display the contents of an entire file in the terminal. These commands display the contents of a file directly in the terminal without modifying the file. When should you use these commands? Use these commands whenever you want to display the complete contents of a file. 

1. Navigate to the `~/Documents/sample_files/Markdown/` directory and display the content of the following files:<br>`blog_post.md` <br> `resume.md`
2. Repeat the previous command with line numbers.
3. Display the content of the same files but in reverse order

> Take a screenshot of your terminal to submit later.

## HEAD & TAIL
We do not always want to see the entire file in the terminal. There are times when a file is too long and we just want a specific number of lines to be displayed. This is where `head` and `tail` come in handy. `head` displays a specified number of lines starting from the beginning of a file, whereas `tail` displays a specified number of lines starting from the end of a file. These commands are useful when you only need a specific section of a file. Sometimes we only need specific information from a text file.

1. Navigate to the directory: `~/Documents/sample_files/Code`, where you will find Hello World written in different programming languages. Display the first line of each file using a wildcard. (`hello*`)
2. Display the first 10 lines of the file `helloWorld.vala`
3. Display the last line of the Bash and Python script
4. Display the last 10 lines of the file `helloWorld.c`

> Take a screenshot of your terminal to submit later.


## CUT

> **NOTE:** <br> The `cut` command commonly uses `-d` to specify a delimiter and `-f` to specify the field or column to display.

Sometimes we want specific information inside a text file. In these times, we need to use utilities that will allow us to process the file line by line and run a specific action on each line. `cut` is a utility that extracts specific sections of text from each line of a file. from a file line by line. By the way, this does not affect the file. These commands process and display data without modifying the original file, which means that the file never gets modified. We will learn how to save the output later.

1. Navigate to the directory `~/Documents/sample_files/Csv`. There you will find a bunch of csv files (comma-separated values).
2. Use the `head` command to display the first line of the file `cars.csv`. This will allow you to know the headers of each column and the delimiter used in the csv file.
3. Use the cut command to generate a list of cars.
4. Use the cut command to generate a list of cars, including the number of cylinders and country of origin

> Take a screenshot of your terminal to submit later.


## SORT
The `sort` command is used to arrange lines of text in a specific order. It is useful when we want to sort data. Review the presentation to understand how `sort` determines ordering.

1. Navigate to the directory `~/Documents/sample_files/Csv`. There you will find a bunch of csv files (comma-separated values).
2. Use the file contents to identify the delimiter and determine which column contains the information you want to sort by.
3. Sort the `cereal.csv` file using the first column as the sorting key.
4. Repeat the previous command and save the output to a file named `sorted_cereals.csv`

> Take a screenshot of your terminal to submit later.


## What will you submit for extra credit
> If this is your first extra credit assignment, you will need to create the necessary parent directory structure. In your `cis106` directory (local repository), create a new directory called `ExtraCredit` (Use one word with no spaces in directory names.)

1. Inside `ExtraCredit`, create another directory called `extra8`
2. Open your `cis106` local repository in VS Code
3. Inside `extra8`, create a Markdown file called `extra8.md`
4. Add all the screenshots you took earlier to `extra8.md` using proper Markdown syntax and label each screenshot using Heading 2 Markdown headings. **Save the Markdown file.**
5. Your Markdown document should start with the following Heading 1: `# Extra Credit 8: Handling Text Files 1`
6. Convert your file to PDF
7. Run the following GitHub commands in the VS Code terminal, to push all your changes to GitHub:
   1. `git add .`
   2. `git commit -m "Completed Extra 8"`
   3. `git push`
8. In Blackboard, submit the following:
   1.  The URL of `extra8.md` 
   2.  The PDF file `extra8.pdf`