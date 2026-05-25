---
title: Extra Credit 4 - Shell Scripting
layout: page
---

# {{page.title}}

- [{{page.title}}](#pagetitle)
  - [What will you learn](#what-will-you-learn)
  - [How to write and execute a basic script step by step](#how-to-write-and-execute-a-basic-script-step-by-step)
    - [1. The tools:](#1-the-tools)
    - [2. Write the script](#2-write-the-script)
    - [3. Execute the script](#3-execute-the-script)
    - [4. Add more code to the script](#4-add-more-code-to-the-script)
  - [Let's Practice!](#lets-practice)
    - [Customize GNOME Text Editor:](#customize-gnome-text-editor)
  - [Practice 1: Learning more about echo](#practice-1-learning-more-about-echo)
  - [Practice 2: Working with more than just echo](#practice-2-working-with-more-than-just-echo)
  - [Practice 3: More on Echo!](#practice-3-more-on-echo)
  - [What will you submit for extra credit](#what-will-you-submit-for-extra-credit)

## What will you learn
This extra credit assignment is designed to help you practice the fundamentals of shell scripting.

1. Creating and executing a basic script
2. Using the `man` command to get help


This activity uses the following commands:
* `echo`: to display text
* `date`: to manipulate dates
* `df`: disk space usage
* `free`: memory usage
* `uname`: basic system information
* `clear`: clear screen

## How to write and execute a basic script step by step

### 1. The tools:
* To write the script you will need a text editor. These text editors are easy to use:
  * **GNOME Text Editor**: GNOME's default text editor
  * **Geany**: More advanced and feature-rich but still easy enough for beginners 
* There are many more. A simple Google search will help you find additional options. However, the specific text editor you choose is not important, so select one that you feel comfortable using.
* In this guide, I will be using **GNOME Text Editor** and **Geany**.
* A terminal emulator to run the script. Any terminal emulator will work, but in this guide, I will be using **Tilix**. 

<p>
<img src="https://docs.google.com/drawings/d/e/2PACX-1vTyhLN9_dWKtFmBu7DCmOSCuAL7nmOkZDWR7Fh9eUJPARRRAnEirIZGpB4eveNS1Vil1P1LoEqTlpAe/pub?w=1389&h=508">
</p>

### 2. Write the script
1. Open your text editor
2. The first line of code is the shell declaration, also known as the shebang: `#!/bin/bash`. This line tells the operating system which interpreter should run the script. This line is important because without it, the system may not know which shell or interpreter should execute the script.
3. Save your file with the file extension `.sh`. The `.sh` file extension is not required but it is good practice. 
4. In this guide, we will be placing all our scripts in a folder/directory called `scripts` in your home directory. 
This will make your scripts easier to organize and locate.

<p>
   <img src="/assets/extras/shell_scripting/create_script.gif">
</p>

### 3. Execute the script
1. Open your terminal emulator. 
2. The most basic way of running a script is using the following formula:
   1. `shell` + `path/to/script`
3. For example, we know that our shell is `bash` and we placed our script in `~/scripts/` therefore the command to execute our script will be:
   1. `bash ~/scripts/hello.sh`
4. This part of the path: `~` is a shorthand for `/home/$USER` which is the current user's home directory. If you want to learn more about this, read the presentation [The Linux Filesystem](https://rapurl.live/s39) or the article  [The Linux FS](https://cis106.com/extra/thelinuxfs/#the-linux-fs). For now, every script will be placed in `~/scripts/` so you should not worry about it. 

<p>
   <img src="/assets/extras/shell_scripting/execute_script.gif">
</p>


### 4. Add more code to the script
1. Notice that when you ran the script, nothing happened. That is because there are no commands inside the script. 
2. Let's write some basic commands in the script. Use `echo` to print/display a line of text: `echo "hello world"`
3. Save and run the script. Notice that the line "hello world" is displayed in the terminal.

<p>
   <img src="/assets/extras/shell_scripting/add_more_code_script.gif">
</p>

<hr>

## Let's Practice!

You should now be comfortable writing and executing a basic script. However, before we practice, let's make our environment more comfortable.

### Customize GNOME Text Editor:
1. Open the Text Editor Preferences:
   1. Choose a theme you like
   2. Enable custom font and increase the size to a size you are more comfortable with
   3. Enable "Highlight Current Line"
   4. Enable "Display Overview Map"
   5. Disable "Restore Session"
2. In the Options menu:
   1. Enable line numbers
   2. Change the "Spaces per tab" to 4
   3. Disable "Check Spelling"

<p>
<img src="/assets/extras/shell_scripting/text_editor_settings.gif">
</p> 

Now, let's place the terminal emulator and text editor side by side. Use the `Super` key (Windows key) + `Right Arrow` 
to snap one window to the right, then select the terminal emulator to snap it to the left. This will allow us to work more efficiently


<p>
<img src="/assets/extras/shell_scripting/side_by_side.gif">
</p>

## Practice 1: Learning more about echo

The `echo` command is used to display/print text to the screen. The formula for the command is:

> `echo` + `option` + `"String you want to display"`

Where the option can be one of the following:

* `-n`: Do not output a trailing newline. 
* `-e`: Enable interpretation of backslash escapes. See the `echo` man page for a list of backslash escapes
* `-E`: Disable interpretation of backslash escapes (this is the default behavior)

In a terminal emulator, practice the `echo` command. You may need to open the man page of `echo` for reference. 
To practice echo, complete the following tasks:

1. Display a line of text.
2. Display a line of text while suppressing the trailing newline
3. Display a line of text with a tab at the beginning of the line
4. Display multiple lines of text in a single echo command
5. Display multiple lines of text in a single command including horizontal and vertical tabs 


<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" 
    onclick="var x = document.getElementById('practice1');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">Show Solution</button>
<p align="center" style="display:none" id='practice1'><img src="/assets/extras/shell_scripting/practice1.gif"/></p>

## Practice 2: Working with more than just echo

| **NOTE:** At the top of this guide, you have a short description of some basic commands. When needed, use the `man` command to read the man page of any of those commands


1. Create a shell script named `systemInfo.sh` and save it in the `scripts` directory/folder.
2. This script should output the following information about your system:
   1. Current date in UTC
   2. Disk space usage in human-readable format
   3. Memory/RAM usage in human-readable format
   4. System hostname (computer name)
   5. Basic information about the operating system and system architecture
3. Make sure that each part is described before it is printed to the screen. This is an example output of your program:


<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" 
    onclick="var x = document.getElementById('example_output1');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">See Example</button>
<p align="center" style="display:none" id='example_output1'><img src="/assets/extras/shell_scripting/example_output1.png"/></p>


<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" 
    onclick="var x = document.getElementById('practice2');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">Show Solution</button>
<p align="center" style="display:none" id='practice2'><img src="/assets/extras/shell_scripting/practice2.png"/></p>


> If you are completing this activity for extra credit. Take a screenshot of the output of your script (terminal)

## Practice 3: More on Echo!

In this practice, use what you have learned about `echo` to improve the script's output. 

1. Make a copy of `systemInfo.sh` called `systemInfo2.sh` 
2. Your goal is to use `echo` to make the information more presentable. You may need to move some parts around. 
3. Here are some tips:
   1. `echo` can insert new empty lines
   2. `echo` can insert tabs within text
   3. `echo` can suppress the newline, allowing the next command's output to appear on the same line.
4. You should review the man page of `echo` and practice some of those commands.
5. This is how the output of your script should look:

<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" 
    onclick="var x = document.getElementById('example_output2');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">See Example</button>
<p align="center" style="display:none" id='example_output2'><img src="/assets/extras/shell_scripting/example_output2.png"/></p>

<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" 
    onclick="var x = document.getElementById('practice3');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">Show Solution</button>
<p align="center" style="display:none" id='practice3'><img src="/assets/extras/shell_scripting/practice3.png"/></p>


> If you are completing this activity for extra credit. Take a screenshot of the output of your script (terminal)


## What will you submit for extra credit
> If this is your first extra credit assignment, you will need to create the necessary parent directory structure. In your `cis106` directory (local repository), create a new directory called `ExtraCredit` (Use one word with no spaces in directory names.)

1. Inside `ExtraCredit`, create another directory called `extra4`
2. Open your `cis106` local repository in VS Code
3. Inside `extra4`, create a Markdown file called `extra4.md`
4. Add all the screenshots you took earlier to `extra4.md` using proper Markdown syntax and label each screenshot using Heading 2 Markdown headings. **Save the Markdown file.**
5. Your Markdown document should start with the following Heading 1: `# Extra Credit 4: Shell Scripting`
6. Convert your file to PDF
7. Run the following GitHub commands in the VS Code terminal, to push all your changes to GitHub:
   1. `git add .`
   2. `git commit -m "Completed Extra 4"`
   3. `git push`
8. In Blackboard, submit the following:
   1.  The URL of `extra4.md` 
   2.  The PDF file `extra4.pdf`
