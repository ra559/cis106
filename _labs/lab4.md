---
layout: "page"
title: Lab 4 - Software Installation and Shell Scripting
---

# {{page.title}}

## Video

## Learning outcomes
* How to search, install, and remove software using APT
* How to create and run a basic shell script

## Question 1: Using APT 

### General formula of the apt command:
-  (`sudo` when installing/removing) `apt` + `apt command` `package name(s)`
- **Available apt commands:**
  - search
  - install
  - remove
  - purge
  - show
  - clean
- See `man apt` and `man apt-get` for a comprehensive list

### Searching for packages
1. Open Tilix (terminal application) and search for a tetris clone using the search string `"tetris clone"`. The command should return 3 packages: `bastet, ltris, tint` 
2. Now, use the search string `tetris` to search for all packages related to `tetris`
3. Repeat the previews search but this time use packages name only. Use the command: `apt search --names-only "tetris"`. Notice that this command only returned packages whose name include the word tetris
4. Take a screenshot of your terminal. Name your screenshot `q1.1.png` and place it in your `lab4/` directory/folder

> **So Whats the difference?** <br>
> * `apt search "tetris"` searches for the pattern “tetris” in both package names and their descriptions (and other searchable metadata).
> * `apt search --names-only "tetris"` restricts the search so that “tetris” is matched only in the package names, not in descriptions. There is a caveat: in some versions, `--names-only` also matches the **Provides** [(virtual package) fields](https://www.debian.org/doc/debian-policy/ch-relationships.html#virtual-packages-provides).


### Installing packages 
1. Install the packages `bastet` and `blockattack`
2. Split Tilix in 2 and show the package information for both packages. Compare the output of each command. Press letter `q` when you are done reading.
3. Install the package `blockout2`, `cuyo` and remove the package `blockattack`. <br> **Use the command:** `sudo apt install blockout2+ cuyo+ blockattack-`
4. Take a screenshot of your terminal. Name your screenshot `q1.2.png` and place it in your `lab4/` directory/folder

> **So what's up with those + and - signs?** <br>
> APT can install and remove applications in a single command. Simply mark the packages you want to install with a `+` sign and those you want to remove with a `-`

### Removing packages
1. Remove the package `cuyo`
2. Purge the package `cuyo`
3. Take a screenshot of your terminal. Name your screenshot `q1.3.png` and place it in your `lab4/` directory/folder

> **So what was the difference?**<br>
> * `sudo apt remove cuyo`: 
>   * Removes the package’s installed files (binaries, libraries, etc.).
>   * Retains system-wide configuration files in `/etc` and any user-specific config files under `$HOME`.
>   * Reinstalling the same package later will *reuse* those retained configuration files.     
> * `sudo apt purge cuyo`:
>   * Performs the same removal, plus deletes all system-wide configuration files.
>   * Equivalent to `apt remove --purge cuyo`.
>   * Leaves only user-specific files under `$HOME`.
> *It is important to remember that purging a package does not remove user level configurations under* `$HOME` *that means that we must delete those manually whenever that applies.*

### Cleaning the system

For cleaning the system we use the following commands:

| Command               | Function                                                                      | Removes Packages | Removes Config Files | Affects Cache | Notes                                                               |
| --------------------- | ----------------------------------------------------------------------------- | ---------------- | -------------------- | ------------- | ------------------------------------------------------------------- |
| `sudo apt clean`      | Deletes **all** `.deb` files from `/var/cache/apt/archives/`                  | No               | No                   | Yes           | Clears the entire local package cache (both used and unused files). |
| `sudo apt autoclean`  | Deletes **only obsolete** `.deb` files (no longer available for download)     | No               | No                   | Yes           | Keeps cache clean without wiping current packages.                  |
| `sudo apt autoremove` | Removes packages installed automatically as dependencies but no longer needed | Yes              | No                   | No            | Safe cleanup of unused dependencies.                                |
| `sudo apt autopurge`  | Combines `autoremove` and `purge`                                             | Yes              | Yes                  | No            | Removes unused dependencies **and** purges their config files.      |

If you want to clean your system, you can use the following 1-liner:

```bash
sudo apt clean && sudo apt autoclean && sudo apt autoremove && sudo apt autopurge
```

1. Take a screenshot of your terminal. Name your screenshot `q1.4.png` and place it in your `lab4/` directory/folder

<hr>

## Question 2 - Shell Scripting  - Part 1
### Creating a shell script
A shell script is just a plaintext file that contains commands that the shell will execute line by line. Therefore, to create a shell script, all you need is a text editor. In your virtual machine, you have 3 text editors installed:

* Gnome Text
* Geany
* Vs Code

Since we will be creating simple shell scripts, you can use Gnome Text or Geany. Please try not to use VS Code for scripting. If you prefer a simpler/cleaner interface, use Gnome Text. If you want a light yet powerful editor, use Geany. I will be using Gnome Text for the most part.


1. Open Gnome Text (text editor)
2. Save the file as: `lab4-script1.sh` in the `scripts/` directory/folder located in your home directory/folder. If you do not have the directory, make it.
3. The first line of your script is the shebang or shell declaration: `!#/bin/bash` you may also find it written like this: `#!/usr/bin/env bash`. For the sake of this exercise, we will stick to `#!/bin/bash`.
4. Save your file. 
5. Currently, you have a script that does nothing. Let's execute:
   1. Open your Terminal Application
   2. Navigate to the directory that contains your script. In our case, it is `scripts/`. Use the command: `cd scripts/`
   3. Run the script using this command: `bash lab4-script1.sh`
   4. Notice that nothing was displayed on the screen because our script does nothing.
6. Take a screenshot of your text editor. Name your screenshot `q2.1.png` and place it in your `lab4/` directory/folder

> **If you need to know:** <br>
> 1. `#!/bin/bash`: Executes the script using the Bash binary located specifically at /bin/bash. This assumes that bash is installed in the system but can fail in systems that install bash in a different path.
> 2. `#!/usr/bin/env bash`: Uses the `env` command to locate Bash in the user’s PATH. This makes the script portable and will make sure that bash runs the script regardless of where it is installed (as long as it is in the PATH)


### Printing text to the screen
Simplest thing to do in a shell script is to print text to the screen. This is achieved with the command `echo`. The command `printf` can also be used but that command is outside of the scope of the course. 

1. Create a new script called: `lab4-script2.sh`
2. Use the `echo` command to print the sentence: `"Hello World"` (without the quotes)
3. Save and run the script the same way you did before. Keep in mind that the name is different and that if you are already in the `scripts/` folder/directory you do not need to use the cd command.
4. Alternatively, we can run the script using the following command:
   1. `bash ~/scripts/lab4-script2.sh`
   2. There are other ways to run the script but for now, let's keep it simple.
5. The output of the script should be "Hello World". If you do not see anything, it is likely that you did not save the file.
6. Use the `echo` command again to add the following:
   1. A line of text with a horizontal tab
   2. 2 lines of text in a single `echo` command 
7. Save and run the script
8. Take a screenshot of your text editor. Name your screenshot `q2.2png` and place it in your `lab4/` directory/folder

### Running other commands in a script
Of course, printing text is not the only thing we can do. In reality, bash is a complete programming language that you can use to do anything (some things you should not do in Bash). So now lets add a couple of more commands to our script.

1. Create a new shell script and save it in the `scripts/` directory. Call the script `lab4-script3.sh`
2. Use the `echo` and  `date` command to print the following lines:
   1. `today's date is: ` and in a new line `Wed Oct  8 08:24:37 PM EDT 2025`
3. Use the `echo` and `whoami` command to print the following lines:
   1. `the current user is: ` and in the same line: `username of current user`
4. Use the `echo` and `free` command to show how much used and free memory the system has:
   1. `Memory usage:` and `the output of free -h` 
5. Take a screenshot of your text editor and your terminal. Name your screenshots `q2.3png` and `q2.4png`. Place them in your `lab4/` directory/folder


<hr>

## Challenge question
Write a shell script that displays the following output:

![cqo](/assets/lab3/challenngeQoutput1.png)

1. Take a screenshot of your text editor and your terminal after you run the script. Name your screenshots `q3.1png` and `q3.2png`. Place them in your `lab4/` directory/folder

### Tips:
* You will need to read the man page of the `echo`, `uname`, and `date` commands
* The date format in the screenshot is `RFC 5322`
* Save the script in the lab4 directory/folder
* Name the script `challenge_lab4.sh`
* The command to run the script is `bash ~/cis106/labs/lab4/challenge_lab4.sh` if this does not work, it is because you saved the script in the wrong folder. Retrace your steps to troubleshoot. 
* You must complete this question alone. I cannot provide assistance here. Everything you need to complete this challenge has been covered in this lab/presentations/practice.
* See the [What is a Shell?](https://docs.google.com/presentation/d/e/2PACX-1vSMW_nt1pQzuvuV3HlZ-3gw9ObsRqnTVSPRW34tPB-cJ_iUgwuVr1iKY8MdWxh4_ctfRq9PDpXPMdif/pub?start=false&amp;loop=false&amp;delayms=3000&slide=id.p) and [Shell Scripting Chapter 1](https://docs.google.com/presentation/d/e/2PACX-1vSGaFVc1w27_WXIBJUGfPFjWB0nN3jL7jNFfCGuv3JaDI0DnS0OBPZnMvNPFzoRR58ClJikkDJFZwyf/pub?start=false&loop=false&delayms=3000&slide=id.p) presentations.



## What will you submit:
1. Place and properly label (using headings) all the screenshots
2. Convert the file to pdf
3. Push everything to github
4. In Blackboard, submit the pdf file `lab4.pdf`

**Note**: I will read your script from github. If the script is not there, you will not receive credit. 

## How I will grade you:
* I will navigate to your GitHub repository and read your script. I will download your script and run it on my machine. If your script runs and I get the same output as the screenshot, you will get full credit for the challenge question. 
* Question 1: 25 pts 
* Question 2: 25 pts
* Question 3: 50 pts


## Special Note 1 - Practice creating a basic script
The challenge question in this lab is similar to the type of questions you will see in your final exam. There you will create a script and just being able to create and run the script gives you points. Make sure you understand the concepts here. Practice! Practice! Practice!


## Special Note 2 - Git Command Quick Reference
You’ll be using Git frequently this semester. Here’s a quick reminder of the most common commands:

| Command                            | Purpose                                                                                                                     |
| ---------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `git clone repository/url/here`    | Download a GitHub repository to your computer.                                                                              |
| `git pull`                         | Synchronize your local repository with the latest changes from GitHub. Always run this **before** starting work in VS Code. |
| `git add .`                        | Track all changes made to your files.                                                                                       |
| `git commit -m "description here"` | Save a snapshot of your tracked changes with a short description.                                                           |
| `git push`                         | Send your committed changes to GitHub.                                                                                      |

**Command Order:**
```bash
git pull 
git add . 
git commit -m "message" 
git push
```

> ⚠️ Warning: ⚠️  <br> Avoid making changes directly in the GitHub website unless you:
> * Know exactly what you are doing, and
> * Remember to run git pull before working locally.

## Special Note Regarding the Final Exam
* The final exam will be in person.
* It is performance-based and requires access to a Linux Virtual Machine.
* If you do not have a laptop/computer you can bring to school:
  * A Linux workstation will be available on campus.
  * Request it early—available computers are limited.