---
title: Shell Scripting Extra practice 1
layout: page
---

# {{page.title}}

## Goal
This extra credit is just to practice basic shell scripting. The main goal is to get comfortable doing the following:

1. Creating and executing a basic script
2. Using the `man` command to get help


We will use the following commands only:
* `echo`: to display text
* `date`: to manipulate dates
* `df`: disk space usage
* `free`: memory usage
* `uname`: basic system information
* `clear`: clear screen

## How to write and execute a basic script step by step

### 1. The tools:
* To write the script you will need a text editor. These text editors are easy to use:
  * Gnome Text Editor: Ubuntu's default text editor
  * Geany: More advanced and feature rich but still easy enough for beginners 
* There are a tone more. A simple google search will tell you so! However the text editor you choose is irrelevant so just pick one and move on. 
* In this guide I will be using Gnome Text and Geany.
* A terminal emulator to run the script. Any terminal emulator will work but here I will be using Tilix. 

<p>
<img src="https://docs.google.com/drawings/d/e/2PACX-1vTyhLN9_dWKtFmBu7DCmOSCuAL7nmOkZDWR7Fh9eUJPARRRAnEirIZGpB4eveNS1Vil1P1LoEqTlpAe/pub?w=1389&h=508">
</p>

### 2. Write the script
1. Open your text editor
2. The first line of code is the shell declaration or shebang: `#!/bin/bash` This line will tell the shell (bash) who will be running the script. 
This line is important because without it, all the commands in the script will be run by the current shell.
3. Save your file with the file extension `.sh`. The file extension is not mandatory but it is good practice. 
4. In this guide, we will be placing all our scripts in a folder/directory called `scripts` in your home directory. 
This will make it easier to find our scripts.

<p>
   <img src="/assets/extras/shell_scripting/create_script.gif">
</p>

### 3. Execute the script
1. Open your terminal emulator. 
2. The most basic way of running a script is using this formula:
   1. `shell` + `path/to/script/`
3. For example, we know that our shell is `bash` and we placed our script in `~/scripts/` therefore the command to execute our script will be:
   1. `bash ~/scripts/hello.sh`
4. This part of the path: `~` is a shorthand for `/home/$USER` which is the current's user home directory. If you want to learn more about this read read the presentation [The Linux Filesystem]() or the article  [The Linux FS](https://cis106.com/extra/thelinuxfs/#the-linux-fs). For now, every script will be placed in `~/scripts/` so you should not worry about it. 

<p>
   <img src="/assets/extras/shell_scripting/execute_script.gif">
</p>


### 4. Add more code to the script
1. Notice that when you ran the script, nothing happened. That is because there is nothing to do in the script. 
2. Let's write some basic commands in the script:
   3. Use `echo` to print/display a line of text:
      1. `echo "hello world"`
3. Save and run the script. Notice that the line "hello world" is displayed in the terminal.

<p>
   <img src="/assets/extras/shell_scripting/add_more_code_script.gif">
</p>

<hr>

## Let's Practice!

You should now be comfortable writing and executing a basic script. However, before we practice, let's make our environment more comfortable.

### Customize Gnome Text Editor:
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

Now, let's place the terminal emulator and text editor side by side. Use the `Windows/Super Key`  + `Right Arrow` 
to snap one window to the right then select the terminal emulator to snap it to the left. This will allow us to work more efficiently


<p>
<img src="/assets/extras/shell_scripting/side_by_side.gif">
</p>

## Practice 1: Learning more about echo

The `echo` command is used to display/print text to the screen. The formula for the command is:

> `echo` + `option` + `"String you want to display"`

Where option can be one of the followings:

* `-n`: Do not output a trailing new line. 
* `-e`: Enable interpretation of backslash escapes. See man echo for a list of backslash escapes
* `-E`: disable interpretation of backslash escapes (this is the default behavior)

In a terminal emulator practice the echo command. You may need to open the man page of echo for reference. 
To practice echo, complete the following tasks:

1. Display a line of text.
2. Display a line of text suppressing the trailing new line
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
   2. Disk space usage in human readable format
   3. Memory/RAM usage in human readable format
   4. Network node hostname (machines name)
   5. Type of processor and type of operating system
3. Make sure that each part is described before it is printed to the screen. This is an example output of your program:


<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" 
    onclick="var x = document.getElementById('example_output1');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">See Example</button>
<p align="center" style="display:none" id='example_output1'><img src="/assets/extras/shell_scripting/example_output1.png"/></p>


<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" 
    onclick="var x = document.getElementById('practice2');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">Show Solution</button>
<p align="center" style="display:none" id='practice2'><img src="/assets/extras/shell_scripting/practice2.png"/></p>


> If you are doing this activity for the extra credit. Take a screenshot of the output of your script (terminal)

## Practice 3: More on Echo!

In this practice, use what you have learned about echo to better the script's output. 

1. Make a copy of `systemInfo.sh` called `systemInfo2.sh` 
2. Your goal is to use echo to make the information more presentable. You may need to move some parts around. 
3. Here are some tips:
   1. Echo can insert new empty lines
   2. Echo can insert tabs within text
   3. Echo can suppress the new line putting the output of echo in the same line as the next command
4. You should review the man page of echo and practice some of those commands.
5. This is how the output of your script should look like:

<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" 
    onclick="var x = document.getElementById('example_output2');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">See Example</button>
<p align="center" style="display:none" id='example_output2'><img src="/assets/extras/shell_scripting/example_output2.png"/></p>

<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" 
    onclick="var x = document.getElementById('practice3');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">Show Solution</button>
<p align="center" style="display:none" id='practice3'><img src="/assets/extras/shell_scripting/practice3.png"/></p>


> If you are doing this activity for the extra credit. Take a screenshot of the output of your script (terminal)


## What will you submit for extra credit
1. In your cis106 directory/local repository, create a new directory called "ExtraCredit" (One word no spaces in file names pleases!)
2. Inside "ExtraCredit", create another directory called "extra2"
3. Open your cis106 directory/local repository in VS Code
4. Inside "extra2" create a markdown file called "extra2.md"
5. Add all the screenshots to "extra2.md" using proper markdown syntax and labeling each screenshot using heading 2 formatting. Save the markdown file.
6. Your markdown document should start with the following heading1: `# Extra Credit 2: Shell Scripting Extra practice 1`
7. Convert your file to PDF
8. Run the github commands, in VS Code Terminal, to push all your changes to github:
   1. `gid add .`
   2. `git commit -m "Completed Extra 1"`
   3. `git push`
9. In blackboard submit the following:
   1.  The URL of `extra2.md` 
   2.  The PDF file `extra2.pdf`

