
layout: page
title: Extra Credit 9 - Handling Text 2


# {{page.title}}

## What will you learn

* Learn how to search for specific text patterns using `grep`
* Practice extracting and displaying specific columns of data using `awk`
* Learn how to modify and replace text using `sed`
* Develop the ability to process structured text files from the Linux terminal
* Practice combining multiple text-processing commands to solve real-world problems

## Before we start!

Run the following command to generate the files we will use in this activity. These files are the same files used in Lab 8 and in the presentations Handling Text Files Part 1 and Handing Text Files part 2. If you have already run these commands, skip this section. 

```bash
cd ~/Documents/ && git clone https://github.com/linuxworkshop67/sample_files
```

## GREP
* The `grep` command is used to search for text that matches a pattern. `Grep` will search for a specified pattern line by line in a given file(s) or from the output of a command when using the pipe. You should use `grep` any time you need to read a file line by line in search of a given string. 
* **For example:**
  * John needs a list of all email addresses in a csv file that are gmail.com

### Usage/Formula
* With a file(s)
  * `grep` + `option` + `search string` + `file(s)`
* With the pipe
  * `command` + `|` + `grep` + `option`

### Basic Examples

### Exercises










-----

The `grep` command is used to search for text that matches a pattern.

**Formula:**

```bash
grep [option] "pattern" file
```

**Useful options:**

| Option | Description                            |
| ------ | -------------------------------------- |
| `-i`   | Ignore uppercase/lowercase differences |
| `-n`   | Show line numbers                      |
| `-v`   | Show lines that do not match           |
| `-r`   | Search recursively                     |
| `-c`   | Display only the number of matches     |
| `o`    | Inverts the match                      |

### Practice 1: Searching

1. Change to the working directory to: `~/Documents/sample_files/Config/`
2. Search for all the key mappings in the file `kitty.conf`. Key map configuration lines start with the keyword "map" 
3. Search for all the directory configuration lines in the file `apache2.conf`
   * The name `Maria`
   * The name `Robert`
   * The name `john` without considering capitalization
   * All lines containing the word `Computer`

4. Display line numbers while searching for `Maria`

5. Count the number of occurrences of the word `Linux`

> Take a screenshot of your terminal for later submission.



## AWK

The `awk` command is used to process text line by line and extract specific fields.

Formula:

```bash
awk 'pattern {action}' file
```

Useful options:

| Symbol | Meaning               |
| ------ | --------------------- |
| `$1`   | First field           |
| `$2`   | Second field          |
| `$3`   | Third field           |
| `NF`   | Last field            |
| `NR`   | Current record number |

### Practice 2: Extracting Data

Navigate to:

```bash
cd ~/Documents/extra9
```

The file `employees.csv` contains employee information.

1. Display only employee names
2. Display employee names and departments
3. Display employee names and salaries
4. Display only employees whose department is `IT`
5. Display only employees with salaries greater than `$60000`

> Before running commands, determine the delimiter used in the file.

> Take a screenshot of your terminal for later submission.

---

## SED

The `sed` command is used to search, replace, and modify text.

Formula:

```bash
sed 'operation' file
```

Useful examples:

| Command       | Description                 |
| ------------- | --------------------------- |
| `s/old/new/`  | Replace first occurrence    |
| `s/old/new/g` | Replace all occurrences     |
| `-n`          | Suppress automatic printing |
| `p`           | Print matching lines        |

### Practice 3: Replacing Text

Navigate to:

```bash
cd ~/Documents/extra9
```

The file `messages.txt` contains multiple lines of text.

1. Replace all occurrences of `Windows` with `Linux`
2. Replace all occurrences of `student` with `learner`
3. Display only lines containing the word `server`
4. Replace every occurrence of `2024` with `2026`

Observe that the file itself is not modified.

`sed` displays modified output in memory unless you explicitly use the `-i` option.

> Take a screenshot of your terminal for later submission.


## Challenge Practice 1: Combining Commands

Navigate to:

```bash
cd ~/Documents/extra9
```

The file `users.csv` contains user account information.

1. Display all users whose role is `Admin`
2. Display usernames and email addresses only
3. Sort users alphabetically
4. Display only users with IDs greater than `1000`

You may use:

* `grep`
* `awk`
* `sort`


## Challenge Practice 2: Mini Investigation

The file `server_logs.txt` contains server activity logs.

1. Count how many times the word `ERROR` appears
2. Display only lines containing `WARNING`
3. Replace the word `FAILED` with `DENIED`
4. Display only IP addresses from the file
5. Display line numbers for all `ERROR` entries

You may combine multiple commands.


## What will you submit for extra credit

> If this is your first extra credit assignment, create a directory called `ExtraCredit` inside your `cis106` local repository.

1. Inside `ExtraCredit`, create another directory called `extra9`
2. Open your `cis106` local repository in VS Code
3. Inside `extra9`, create a Markdown file called `extra9.md`
4. Add all screenshots using proper Markdown syntax and label each screenshot using Heading 2 Markdown headings
5. Your Markdown document should start with:

```
# Extra Credit 9: Grep, Awk, and Sed
```

6. Convert the Markdown file to PDF

7. Run the following GitHub commands in the VS Code terminal:

```bash
git add .
git commit -m "Completed Extra 9"
git push
```

8. Submit in Blackboard:

* URL of `extra9.md`
* `extra9.pdf`