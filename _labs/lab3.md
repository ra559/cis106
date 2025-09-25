---
layout: page
title: Lab 3 - The GNOME DE and The Bash Shell
---

# {{page.title}}

## Video here
[VIDEO](https://youtu.be/0FkSHt4DmRo)


- [{{page.title}}](#pagetitle)
  - [Video here](#video-here)
  - [Learning Outcomes](#learning-outcomes)
  - [Pre Work](#pre-work)
  - [Question 1: Using The Gnome Desktop Environment](#question-1-using-the-gnome-desktop-environment)
    - [Changing the wallpaper](#changing-the-wallpaper)
    - [Customizing the Dash](#customizing-the-dash)
    - [Using GNOME Extensions](#using-gnome-extensions)
    - [Exploring the File Manager (GNOME Files / Nautilus)](#exploring-the-file-manager-gnome-files--nautilus)
    - [Exploring Gnome Text](#exploring-gnome-text)
    - [Exploring GNOME System Settings](#exploring-gnome-system-settings)
  - [Question 2: Working with the terminal emulator](#question-2-working-with-the-terminal-emulator)
    - [Step 1: Splitting the terminal](#step-1-splitting-the-terminal)
    - [Step 2: Creating sessions](#step-2-creating-sessions)
    - [Step 3: Exploring Tilix preferences](#step-3-exploring-tilix-preferences)
  - [Question 3: Trying Out Some Basic Commands](#question-3-trying-out-some-basic-commands)
    - [Step 1: Split the terminal](#step-1-split-the-terminal)
    - [Step 2: Open the manual page](#step-2-open-the-manual-page)
    - [Step 3: Using the echo command](#step-3-using-the-echo-command)
  - [Question 4: Changing the desktop environment (Optional)](#question-4-changing-the-desktop-environment-optional)
    - [Deliverable Question 4](#deliverable-question-4)
  - [Challenge Question](#challenge-question)
    - [Example question](#example-question)
    - [Example solution](#example-solution)
  - [Special Note 1 - Practice the man command!](#special-note-1---practice-the-man-command)
  - [Special Note 2 - Git Command Quick Reference](#special-note-2---git-command-quick-reference)
  - [Special Note Regarding the Final Exam](#special-note-regarding-the-final-exam)


## Learning Outcomes
* Get comfortable with the GNOME Desktop Environment
* Learn how to use the terminal to run simple commands
* Learn how to use the man command to read the manual pages


## Pre Work
Before starting this lab, complete the following setup steps:

1. Open the File Manager and navigate to the labs folder/directory inside your `cis106` repository:
`~/cis106/labs/`
2. Create a new folder/directory named `lab3`.
3. Open Visual Studio Code (VS Code) and open the `cis106` folder/directory.
4. Inside the `lab3` folder/directory, create a new file named `lab3.md`.
5. Copy and paste the following markdown template into the file. Save your changes, close VS Code, and then begin your lab work.

> **Note:** This template will be the standard format for all lab submissions moving forward. If you are ever unsure about how to structure your work, return to this lab as a reference.

<hr>

```
# Lab 3 Submission

## Question 1
![q2](q1.png)

## Question 2
![q2](q2.png)

## Question 3
![q3](q3.png)

## Challenge Question
![q4](q4.png)

## Challenge Question Script Source code:
[lab3](lab3-script.sh)
```

<hr>

<p align="center" style="display:block"><img src="/assets/lab3/prework.gif" width="500" /></p>

<hr>

## Question 1: Using The Gnome Desktop Environment
In this section, you’ll get comfortable with GNOME by exploring its features, customizing your desktop, and learning how to manage basic settings.

### Changing the wallpaper
1. Download a wallpaper you like. (You can use Google Images or a dedicated site like wallhaven.cc and pexels.com).
2. In your Pictures folder, create a new folder/directory called `wallpapers`.
3. Save your downloaded image into this new folder. Rename the file to something descriptive.
4. Right-click on the desktop -> choose Change Background -> select your new wallpaper.

### Customizing the Dash
The dash is the favorites bar that appears on your desktop. You can add apps you use often and remove the ones you don’t need.

* To remove an app: Right-click -> Unpin from Dash
* To add an app: Search for the app -> Right-click -> Pin to Dash

Make the following changes:

**Add:** <br>
* Tilix
* VS Code
* GNOME Screenshot

**Remove:** <br>
* Help
* Calculator
* Software Center

### Using GNOME Extensions
In Lab 2, you ran the `essentials.sh` script. This script installed several GNOME Extensions — small programs that add or change GNOME features.

To manage them, open the **Extensions Manager** app.

<p align="center">
<img style="display: block" width="500px" height="500px" src="https://docs.google.com/drawings/d/e/2PACX-1vRrP-bPIYBgPCcNvx76-S2VFApzelb2ChTRB2dP1B4vI60eik5r5oCs1Z0R0Wpq7N0gL_O7TyHDdW_t/pub?w=960&h=720">
</p>

**Extensions to Enable:**<br>
* **Caffeine** - Prevents the computer from going to sleep. (Look for the coffee cup icon in the system menu.)
* **Dash to Panel** - Moves the dash into a bottom panel, similar to Windows 10.
* **System Monitor** - Displays resource usage (helpful since our VM has limited resources).
* **Tiling Assistant** - Lets you snap apps to the left or right (like macOS/Windows).

**Steps:**<br>
1. Turn on these extensions one at a time. Wait until each one is fully enabled before turning on the next.
2. Install one new extension: Frippery Applications Menu by Rmyorston.
3. After enabling it, you’ll see a new Applications option in the panel. 

<p align="center">
<img width="500px" height="500px" src="https://docs.google.com/drawings/d/e/2PACX-1vS7PfybmQbEScTwVr-6ifX9gD_0T8_9NPpe3J7tY2xPWd77eynGcH0ZKq4_cNZoByDAac6hGy6wp2R9/pub?w=960&h=720">
</p>

**Extensions can also be tweaked. For instance, let's customize the Dash to Panel extension.**

1. Click on the gears icon in the Dash to Panel extension.
2. In the Fine-Tune section, enable "Keep original gnome-shell top panel". Notice that the top panel has been re-enabled. However, now we  have duplicated items such as the date and system menu
3. In the Position section, use the visible option to hide the system menu and the date

<p align="center">
<img width="500px" height="500px" src="https://docs.google.com/drawings/d/e/2PACX-1vQOgcMVxR1XPTsiLfEIMZeELmpFssB7gb8uxAauU9SRGkw31_i1ufryxjOx6r-TQ3XVjvHSVN1Gj2Vq/pub?w=960&h=720">
</p>



### Exploring the File Manager (GNOME Files / Nautilus)
GNOME’s file manager is simple but works much like Windows Explorer. Let’s try some tasks to get familiar with it:

1. Show hidden files -> Press Ctrl + H or use the menu button. In Linux/Unix, hidden files start with a dot (.).
2. Create a hidden folder/directory in your Home folder named `.fonts`.
3. Download **FiraCode Nerd Font** from: [nerdfonts.com/font-downloads](https://www.nerdfonts.com/font-downloads).
4. Open the zip file `FiraCode.zip`. It will unzip into a folder called `FiraCode`.
5. Open the `FiraCode` folder -> Select all files (Ctrl + A) -> Copy them.
6. Paste the files into the  `.fonts` folder you created.
7. Delete the unnecessary files: `LICENSE` and `README.md`.
8. Refresh the font cache:
   1. **Option 1**: Log out and log back in
   2. **Option 2**: Run this command in the terminal: <br> `fc-cache -f -v`
9.  Turn off hidden files (Ctrl + H) when finished.

<p align="center">
<img style="display: block" width="500px" height="500px" src="/assets/lab3/nautilus.gif">
</p>


### Exploring Gnome Text
Another essential tool in any desktop environment is the text editor. Linux relies heavily on configuration files; *so much so that in Linux/Unix, everything is considered a file* (we’ll explore this idea in more detail later). As a Linux user, you’ll be working with configuration files frequently, which makes familiarity with a text editor indispensable.

GNOME provides a simple yet powerful text editor called Gnome Text. In earlier versions of GNOME, the default editor was Gedit. While Gedit can still be installed and used, it is no longer part of the core GNOME applications.

Follow these steps to get comfortable with Gnome Text:

1. Open the Text Editor app (Gnome Text).
2. Click the hamburger menu (≡) and go to **Properties**:
   1. Enable “**Show line numbers**”
   2. Enable “**Show right margin**”
   3. Disable “**Check spelling**”
   4. Disable "**Restore Session**"
   5. Under Spaces Per Tab, set the value to **4**
   6. Choose a theme you like 
   7. Enable Custom font, then select the font you downloaded earlier. Adjust the font size to your preference
   8. Enable Highlight current line
3. Create a new file and write a simple to-do list. Save the file as `Todo.md`.
   1. Add a bit of Markdown formatting and observe how the editor provides syntax highlighting.
4. Reopen the file, make some edits, and try to close the editor without saving.
5. Notice that Gnome Text gives you three options:
   1. **Discard** -> Closes the editor and loses all changes
   2. **Save** -> Prompts you to save your file in a location of your choice
   3. **Cancel** -> Cancels the action and returns you to the editor
6. Save and close the editor.
7. Finally, open two or more files in Gnome Text. Notice that each file opens in its own tab within a single window.


<p align="center">
<img style="display: block" width="500px" height="500px" src="/assets/lab3/gnome-text.gif">
</p>



### Exploring GNOME System Settings
GNOME provides two main apps for system configuration:
* **Settings** -> general options (appearance, apps, notifications, etc.)
* **GNOME Tweaks** -> advanced customization
**Tasks:**<br>
1. Open the **Settings** app. Explore the available categories.
2. Open **GNOME Tweaks.**
   1. Go to Windows -> Enable Titlebar Buttons -> add Minimize and Maximize.
   2. Notice the window border now shows Minimize, Maximize, and Close.
3. Back in **Settings**:
   1. Switch between **Dark Mode** and **Light Mode**, and choose an accent color.
   2. Check **Default Apps** -> see which apps are set for each task.
   3. Go to **Notifications** -> Turn on Do Not Disturb, or manage app-specific notifications.
   4. Explore the **Search** section -> decide whether to include files in search results or just apps.
4. Explore any other options you’re curious about.


> ### Deliverable Question 1
> Take a screenshot of your full virtual machine screen.
> - Name the file: `q1.png`
> - Save it in your `lab3` folder/directory.

<hr>


## Question 2: Working with the terminal emulator 
Before we start working with Bash, let’s first get comfortable with the terminal emulator itself. Since most people have little to no experience using a terminal, this step will help you understand the application before we dive into commands.

Currently, your system has two terminal emulators installed:
1. GNOME Console
2. Tilix

For this lab, we will use Tilix because it offers more features than GNOME Console. However, I encourage you to explore GNOME Console on your own time.

### Step 1: Splitting the terminal
1. Open Tilix. (If a warning or error message appears, you can safely ignore it.)
2. Look in the top-left corner—you will see two icons that allow you to split the terminal.
3. Use these buttons to split the terminal into four panes, so you end up with 4 terminal windows like this:

<p align="center"> <img width="500px" height="500px" src="https://docs.google.com/drawings/d/e/2PACX-1vTJz8Oc7DSVzdv_jh7YRVFcLagklkfQwBgBniYgzXVRlnUJw1wI4ZTeLe-xLX1VIUv6CPuwIRe3SODO/pub?w=960&h=720"> </p>

> **Note**: It is common to use multiple terminals simultaneously. This is an essential skill for your final exam. Advanced users often use tools like Tmux to achieve similar workflows, but Tilix makes it easier for beginners.


### Step 2: Creating sessions
1. Tilix also allows you to create separate sessions, which work like workspaces.
2. Click on “View session side bar (1/1)” and use the “+” button to add a new session.

### Step 3: Exploring Tilix preferences
1. Open the **hamburger menu** (≡) → select Preferences.
2. Under **Global**:
   1. **Enable**: Strip first character of paste if comment or variable declaration
   2. **Enable**: Strip trailing whitespaces and new lines
3. Under **Appearance**:
   1. Set the **theme variant** to match your system preference (dark or light).
   2. Optionally, you can set a **background image** (a dark wallpaper pairs well with white text).
   3. If you use a background image, you will need to adjust transparency later.
   4. **Enable**: Use wide handle for splitters (this makes resizing panes easier).
4. Under Default Profile -> General tab:
   1. Enable **Custom font** and choose **FiraCode Nerd Font** (pick any variant you like).
   2. If you want something more modern, try the [Dracula Theme](https://draculatheme.com/tilix) for Tilix.
   3. Adjust transparency if you added a background image earlier.

> ### Deliverable Question 2
> Take a screenshot of Tilix.
> - Name the screenshot: `q2.png`
> - Save it in your `lab3` folder/directory.

<hr>

## Question 3: Trying Out Some Basic Commands
In this question, we will learn how to read the manual (man) page of a command and how to work with two terminals at the same time. The command we will focus on is `echo`.

### Step 1: Split the terminal
1. Open Tilix.
2. Split it vertically so you have two terminal panes.

### Step 2: Open the manual page
1. In the right terminal, open the manual page for echo using the command: `man echo`
2. Navigate the manual page using:
   1. Arrow keys to scroll line by line
   2. Spacebar to scroll one page at a time
3. To open the help page inside the manual reader (for additional commands and navigation tips), press h.
4. To exit the manual page, press Q.

### Step 3: Using the echo command
1. The basic usage of echo is: `echo "string to print to the screen"`
   1. **Tip**: Quotes are optional but recommended, as they help avoid issues with special characters.
2. Use the man page to learn how to perform the following tasks:
   1. Display a line of text without a new line
   2. Display a line of text that includes a horizontal tab
   3. Display two lines of text in a single echo command
   4. Display two lines of text in a single echo command, with the second line starting with a tab
   5. Display two lines of text, with the first line starting with a tab

<p align="center" style="display:block"> <img src="/assets/lab3/q1.1.gif" width="500" /> </p> 
<p align="center" style="display:block"> <img src="/assets/lab3/q1.2.gif" width="500" /> </p>

> ### Deliverable Question 3
> Take a screenshot of Tilix.
> - Name the screenshot: `q3.png`
> - Your screenshot should show all echo commands and the man page open
> - If more than 1 screenshot is needed, use the following naming convention:
>  - `q3.1.png`, `q3.2.png`
> - Save it in your `lab3` folder/directory.

## Question 4: Changing the desktop environment (Optional)

During the Debian installation we chose 2 desktop environments: Gnome and Gnome Classic. In Linux, we are not tied to a single desktop environment, we can install others we if want to. Since we have Gnome Classic already installed, lets take a look.

1. Log out.
2. In the display manager, type your password but do not press enter
3. In the button right corner, you will notice a gear icon. Click it and choose Gnome Classic
4. Sign in.
5. Notice how different the desktop environment looks
6. Sign  out and switch back to the Default Gnome Session

### Deliverable Question 4
This question has no deliverable

## Challenge Question

Use the man page to find the answer to the following questions. Make sure to split your terminal in two so that you can use the man page in one and run commands on the other. The point of this question is to get you used to using multiple terminals and the man page. This is a skill that you will need for the final exam so please do not use the internet to find the answers. Make sure to take a screenshot of every command that answers each question. The screenshot needs to show the man page of the given command open in the location where you found the answer and it has to show the command and its output.


1. John wants to see how much free memory he has in his system. He understands that the `free` command is used for this however, he would like the output of the command to appear in a single line and with human readable format.
   1. **What is the complete command that John has to use here?**
   2. Take a screenshot showing the man page showing the correct options and the command and its output. See the example for a reference. <br>  <br>
2. Kenny is a system administrator working on automation scripts. He is building a script where he needs to know the kernel name, kernel release, kernel version, and operating system of the computer. He knows that the `uname` command can provide this information. 
   1. **What is the complete command that Kenny has to use here?**
   2. Take a screenshot showing the man page showing the correct options and the command and its output. See the example for a reference.  <br> <br>
3. Dave is working with an API that only accepts rfc-3339 time format for dates. For example, `2025-09-10 18:39:53.467197335-04:00` is an acceptable format but anything else will return an error. He needs a `date` command that will allow him to convert the current time into rfc-3339 format. 
   1. **What is the complete command that Dave has to use here?**
   2. Take a screenshot showing the man page showing the correct options and the command and its output. See the example for a reference.  <br> 

**Here is an example question and solution so that you know what I am expecting of you:**


### Example question
1. Julius has a homelab with tailscale. His homelab has several Linux containers and he wants a command that will display in JSON format the IP configuration for a machine when he signs in. He knows that the command `ip addr show dev <interface>` can be used for displaying the specific interface configuration but the output is not in JSON format and it is also hard to read. 
   1. **What is the complete command that Julius has to use here?** (options for the ip command have to be placed after `ip`)
   2. Take a screenshot showing the man page showing the correct options and the command and its output.

### Example solution
![Example Solution IP Command](https://docs.google.com/drawings/d/e/2PACX-1vSQ6GOU-phG0KKDo4VXacGfMSzLnMzAJWCgf4AeUrdugmeEhMfpu6cFM-XFEAxkmjmvjgF3oDjCxpcR/pub?w=928&h=501)

**Warning:** If your screenshot does not show where in the man page you found the answer, you will not be awarded a passing grade for this question. The example clearly shows the command options in the man page that solves the problem.

> ### Deliverable for challenge question
> Take a screenshot of Tilix for the answer of each question.
> - Name the screenshots: `q5.1.png`, `q5.2.png`, `q5.3.png`, `q5.4.png`
> - Your screenshot should show the command and the man page. Just like the example
> - If more than 1 screenshot is needed, use the following naming convention:
>  - `q5.1.1.png`, `q3.1.2.png`
> - Save it in your `lab3` folder/directory.

## Special Note 1 - Practice the man command! 
The challenge question in this lab is similar to the type of questions you will see in your final exam. In the final exam, you will have access to your notes and the man pages but not to the internet or any LLM. This means that you should use the challenge question as practice playground. Learn how to use the man pages efficiently and practice the workflow of having 2 terminals open.


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