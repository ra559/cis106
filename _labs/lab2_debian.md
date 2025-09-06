---
layout: post
title: Lab 2 - Installing Debian 13
---

# {{page.title}}

- [{{page.title}}](#pagetitle)
  - [READ ME FIRST!](#read-me-first)
  - [Video Guide Here](#video-guide-here)
  - [Presentations:](#presentations)
  - [Requirements](#requirements)
  - [Step 1: Enable Virtualization](#step-1-enable-virtualization)
    - [Check your computer’s hardware:](#check-your-computers-hardware)
    - [Compare your hardware to the requirements below.](#compare-your-hardware-to-the-requirements-below)
    - [Required Specifications](#required-specifications)
  - [Step 2: Install Virtualbox](#step-2-install-virtualbox)
    - [1. Download the necessary files](#1-download-the-necessary-files)
    - [2. Install Microsoft Visual C++ Redistributable (Windows Only)](#2-install-microsoft-visual-c-redistributable-windows-only)
    - [3. Install VirtualBox](#3-install-virtualbox)
    - [4. Install the VirtualBox Extension Pack](#4-install-the-virtualbox-extension-pack)
    - [5. Restart VirtualBox](#5-restart-virtualbox)
  - [Step 3: Create the virtual machine](#step-3-create-the-virtual-machine)
    - [1. Open VirtualBox](#1-open-virtualbox)
    - [2. Start the New VM Wizard](#2-start-the-new-vm-wizard)
    - [3. Fill in the Wizard Settings](#3-fill-in-the-wizard-settings)
    - [4. Adjust Additional VM Settings](#4-adjust-additional-vm-settings)
    - [5. Need Help?](#5-need-help)
  - [Step 4: Install Debian 13](#step-4-install-debian-13)
  - [Step 5: Update and Install Essential Software](#step-5-update-and-install-essential-software)
    - [1. Sign In \& Take the Tour](#1-sign-in--take-the-tour)
    - [2. Disable the Debian Installer DVD Source](#2-disable-the-debian-installer-dvd-source)
    - [3. Prevent the VM from Sleeping](#3-prevent-the-vm-from-sleeping)
    - [4. Update the System via Terminal](#4-update-the-system-via-terminal)
    - [5. Install Essential Programs](#5-install-essential-programs)
    - [6. Install VS Code and Extensions](#6-install-vs-code-and-extensions)
  - [Step 6: Install Guest Additions](#step-6-install-guest-additions)
  - [Step 7 Set up Git \& GitHub](#step-7-set-up-git--github)
    - [1. Sign in to your Github account](#1-sign-in-to-your-github-account)
    - [2. Configure your Git Identity](#2-configure-your-git-identity)
    - [3. Generate an SSH Key](#3-generate-an-ssh-key)
    - [4. Copy Your Public SSH Key](#4-copy-your-public-ssh-key)
    - [5. Add Your SSH Key to GitHub](#5-add-your-ssh-key-to-github)
    - [6. Test Your Connection](#6-test-your-connection)
    - [7. Clone Your Repository](#7-clone-your-repository)
    - [8. Visual Guides](#8-visual-guides)
  - [Step 8: Set up screenshot tool](#step-8-set-up-screenshot-tool)
  - [Prepare your submission](#prepare-your-submission)
    - [Organize your repository](#organize-your-repository)
    - [Create your submission](#create-your-submission)
    - [Submit in Blackboard](#submit-in-blackboard)
  - [Special Note 1 – Practice with Virtual Machines](#special-note-1--practice-with-virtual-machines)
  - [Special Note 2 – Git Command Quick Reference](#special-note-2--git-command-quick-reference)
  - [Special Note Regarding the Final Exam](#special-note-regarding-the-final-exam)



## READ ME FIRST!

* This lab uses VirtualBox 7.1 as the hypervisor.
* This guide is designed for students whose host operating system is Windows or macOS.
* It supports both:
  * x86_64 (Intel/AMD processors)
  * Apple Silicon (M1, M2, M3, etc.)
* Whenever an instruction applies only to Windows or only to macOS, it will be clearly marked at the start of the step in bold colored text.
* **Important:** Because your computer setup may differ from mine, unexpected issues may occur. If you run into problems, alternative versions of this lab can be created upon request, and I am available to assist via Zoom or in person. **Please do not wait until the last minute!**
* If you encounter too many problems with VirtualBox, you may use VMware Workstation Player 17 instead. I plan to create a separate guide for VMware Player in the future.


## Video Guide Here
[Lab 2 Installing Debian 13 ](https://youtu.be/Q4aMerJX0XE)


## Presentations:
* [The basics of Virtualization](https://rapurl.live/est)
* [Using VirtualBox](https://rapurl.live/t0h)
* [Debian Installer](https://docs.google.com/presentation/d/e/2PACX-1vSN5c6pPHfnlbcl10KlrxZ4kh606rIkDwdFd6uo9VqpOiwHrlqOOYFA3_ypMp9MA_R65TtbQPgJYHnx/pub?start=false&loop=false&delayms=300)
* [Screenshots - creating a virtual machine](https://docs.google.com/presentation/d/e/2PACX-1vSL0uIh10efjylcStOP8r9AxUlq1mZ-mQ_ojA4ESu7eLgMJOdYlOpbXdplPlA6gIiIrTU4LS_6dCV27/pub?start=false&loop=false&delayms=3000)
* [Screenshots - Debian installer](https://docs.google.com/presentation/d/e/2PACX-1vSN5c6pPHfnlbcl10KlrxZ4kh606rIkDwdFd6uo9VqpOiwHrlqOOYFA3_ypMp9MA_R65TtbQPgJYHnx/pub?start=false&loop=false&delayms=3000)

## Requirements
* This lab is accompanied by several presentations that act as an extra resource for you. I recommend that you take a quick look at them just in case you get lost you will know where to find help aside from the video
* Please go slow and take your time to do this lab. It is long but it is the core of this course. 
* If you do not have a computer that meets the recommended criteria, **please reach out to me and stop doing this lab.**

> **NOTE!**<br>
> * If your computer does not meet the required hardware, you will have a hard time completing all the work and the final project therefore be ready for some slow downs!


<hr>

## Step 1: Enable Virtualization
Before you can create virtual machines, you need to confirm that your computer supports virtualization and meets the required specifications. Follow these steps:

### Check your computer’s hardware:
* CPU model and number of cores
* Amount of RAM
* Available free storage space

### Compare your hardware to the requirements below.
If your system does not meet these requirements, **stop here and contact me**. We can discuss possible alternatives on a one-on-one basis.

### Required Specifications

* **CPU**: Quad-core processor or higher
* **RAM**: 8 GB or more
* **Free** Storage: 60 GB or more

<p align="center"><img src="/assets/warning-icon.png" width="50" /></p>

> If your system is slightly below the requirements, you may still be able to complete the course. However, performance will be slow, so be mindful of how many applications you have open at once. One requirement that you cannot overlook is your CPU. A quad-core or higher is required.


<p style="color:blue"><b>[macOS / Apple Computers ONLY]</b></p> If your computer meets the above specifications, you can skip enabling virtualization—macOS enables it by default. If your Mac does not meet the requirements, it cannot be used for this class. Contact me so we can discuss possible solutions.


<p style="color: red"><b>[WINDOWS ONLY] </b></p>If your computer meets or exceeds the above specifications, you must check whether virtualization is enabled:

* Follow [this guide](https://rapurl.live/vaj) to check and enable virtualization.

* You can also use [Speccy](https://www.ccleaner.com/speccy) to confirm whether virtualization is enabled.

> If you run into trouble enabling virtualization, let me know immediately. Do not wait until the last minute! This step can take time.


<hr>

## Step 2: Install Virtualbox
Follow these steps to download and install everything you need before creating your virtual machine.

### 1. Download the necessary files
Which Debian ISO Should You Download?

| Your Computer Type        | CPU Type               | ISO File to Download              | Download Link                                                                                            |
| ------------------------- | ---------------------- | --------------------------------- | -------------------------------------------------------------------------------------------------------- |
| **Windows 11/10**         | Intel or AMD (x86\_64) | `debian-13.0.0-amd64-netinst.iso` | [Download](https://www.debian.org/) -> Click the black **Download** button                                |
| **macOS (Intel)**         | Intel (x86\_64)        | `debian-13.0.0-amd64-netinst.iso` | [Download](https://www.debian.org/) -> Click the black **Download** button                                |
| **macOS (Apple Silicon)** | ARM (arm64)            | `debian-13.0.0-arm64-netinst.iso` | [Direct Link](https://cdimage.debian.org/debian-cd/current/arm64/iso-cd/debian-13.0.0-arm64-netinst.iso) |


> **ATTENTION MACOS USERS** <br>
> If your mac computer has an Apple Sillicon CPU (M Series), the latest version of virtualbox 7.2 is not working. Please download version 7.1 instead. 
> To obtain the installer for 7.1, follow these steps:
> 1. In virtualbox download page, scroll down to ["Previews releases"](https://www.virtualbox.org/wiki/Download_Old_Builds)
> 2. Select [Virtualbox 7.1](http://virtualbox.org/wiki/Download_Old_Builds_7_1)
> 3. Then select [​macOS / Apple Silicon hosts](https://download.virtualbox.org/virtualbox/7.1.12/VirtualBox-7.1.12-169651-macOSArm64.dmg)
> 4. Also download the [Extension Pack](https://download.virtualbox.org/virtualbox/7.1.12/Oracle_VirtualBox_Extension_Pack-7.1.12.vbox-extpack)



1. [VirtualBox Installer](https://www.virtualbox.org/wiki/Downloads)
2. [VirtualBox Extension Pack](https://www.virtualbox.org/wiki/Downloads)
3. <span style="color:red">[Windows ONLY]</span> [Microsoft Visual C++ Redistributable](https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170#latest-microsoft-visual-c-redistributable-version)

### 2. Install Microsoft Visual C++ Redistributable (Windows Only)
1. Run the installer you downloaded in step 1.4.
2. You may need to restart your computer after installation.

### 3. Install VirtualBox
1. Install VirtualBox like any other application on your system.
2. macOS users: During installation, VirtualBox will request permissions. Grant all requested permissions, otherwise some features will not work.

### 4. Install the VirtualBox Extension Pack
1. Double-click the downloaded `.vbox-extpack` file (e.g., `Oracle_VM_VirtualBox_Extension_Pack-7.0.26.vbox-extpack`).
2. Follow the prompts to install it.

### 5. Restart VirtualBox
Close VirtualBox completely, then reopen it before continuing to the next step.

> Tip: If you need a visual walkthrough for this step, refer to the provided video guide.

<hr>

## Step 3: Create the virtual machine

### 1. Open VirtualBox
1. Launch VirtualBox if it’s not already open.
2. When prompted to choose between Basic and Expert mode, select Expert (this gives you all the settings in one screen).

### 2. Start the New VM Wizard
Click the New button to begin creating a virtual machine.

### 3. Fill in the Wizard Settings

| Setting                     | Value to Enter                       | Notes                                                                                |
| --------------------------- | ------------------------------------ | ------------------------------------------------------------------------------------ |
| **Name**                    | `Debian 13 - Desktop`                | You can name it something else, but keep it clear.                                   |
| **Folder**                  | Default location                     | Only change if you need to store the VM elsewhere.                                   |
| **ISO Image**               | Select your downloaded Debian 13 ISO | If you can’t find it, you may not have downloaded it or opened (mounted) it instead. |
| **Type**                    | Linux                                | Should be auto-detected.                                                             |
| **Version**                 | Debian (64-bit)                      | If 64-bit is missing, **virtualization is not enabled**—go back to Step 1.           |
| **Unattended Installation** | **Skip** unattended installation     | We will install Debian manually.                                                     |
| **RAM**                     | 4096 MB recommended                  | 2048 MB minimum (not recommended).                                                   |
| **CPU**                     | 2 CPUs                               | You may assign more if your host has 4+ cores, but 2 is enough.                      |
| **Hard Disk Size**          | 50 GB                                | 40 GB minimum. For faster performance, enable **Pre-allocate full size**.            |
| **Hard Disk Type**          | VDI                                  | VirtualBox’s native format.                                                          |

### 4. Adjust Additional VM Settings

After creating the VM, select it and click Settings, then change the following:

* **General** -> Advanced
  * **Shared** Clipboard: Bidirectional
  * **Drag** & Drop: Bidirectional
* **General** -> Description
  * Add notes for your chosen hostname, username, and password.
* **Display** -> Screen
  * **Enable** 3D Acceleration (If you see flickering or driver issues later, come back here and disable it).
  * **Video** Memory: Set to maximum.
* **Audio**: Disable it.

### 5. Need Help?
Refer to the [Visual Guide](https://docs.google.com/presentation/d/e/2PACX-1vSL0uIh10efjylcStOP8r9AxUlq1mZ-mQ_ojA4ESu7eLgMJOdYlOpbXdplPlA6gIiIrTU4LS_6dCV27/pub?start=false&loop=false&delayms=3000&slide=id.p) if you have trouble finding these settings.

<hr>

## Step 4: Install Debian 13
1. Start your virtual machine in VirtualBox.
2. Follow the installation steps shown in the Visual Guide:
3. View the [Visual Guide Here](https://docs.google.com/presentation/d/e/2PACX-1vSN5c6pPHfnlbcl10KlrxZ4kh606rIkDwdFd6uo9VqpOiwHrlqOOYFA3_ypMp9MA_R65TtbQPgJYHnx/pub?start=false&loop=false&delayms=3000&slide=id.g374a13ca6e9_0_0)
4. Complete the installation exactly as shown. This will ensure your Debian setup matches the rest of the course instructions.

<hr>

## Step 5: Update and Install Essential Software

At this point, Debian 13 is installed and your virtual machine has rebooted. You should now see a login screen similar to this:

<p style="text-align: center"> <img src="https://docs.google.com/drawings/d/e/2PACX-1vRLigdLNsGU0dR5tX30-wHI8nltv0aza1m-SzIZm-j2HWOObLcVq-_Q9hiQdj8NtjIk2IDVh4XHagBn/pub?w=960&h=720" width="500px" height="500px" > </p>

Follow these steps to prepare your system for the semester:

Here is a [visual guide](https://docs.google.com/presentation/d/e/2PACX-1vSe2paBdxM8evo8PeXcsyYkAD-LYkpAGlYa87NJgX7RM09RqJa18LD7d6RBX9Wg-rPSfaDzeWv8A23e/pub?start=false&loop=false&delayms=3000) to help you complete these step.

### 1. Sign In & Take the Tour
1. Log in with the credentials you set during installation.
2. A “Welcome to Debian 13” tour will appear. This is a quick slideshow about the GNOME desktop. Take a moment to go through it.

### 2. Disable the Debian Installer DVD Source
This will prevent package installation errors later.

1. Open the Software Center:
   1. Press the Windows/Super key or click Activities in the top-left corner.
   2. Search for Software Center and open it. (It’s also in the favorites bar.)
2. Click the hamburger menu (three horizontal lines) in the top-right. 
3. Select Software Repositories.
4. Find and disable the “Debian 13 DVD installer” source.
5. Close the Software Center.

### 3. Prevent the VM from Sleeping
This avoids issues, especially for macOS users,  where the VM becomes unresponsive.

1. Open Settings:
   1. Click the System Menu in the top-right (battery/network/volume icons).
   2. Click the gear icon next to the screenshot button.
2. Go to Power -> Power Saving.
3. Turn off Automatic Power Saver and Automatic Screen Blank.

### 4. Update the System via Terminal
1. Open the Terminal (search for “Terminal” in Activities).
2. Run the following command:

```bash
sudo apt update && sudo apt upgrade -y
```

* Enter your password when prompted (no characters will appear—that’s normal).
* If you mistype, it will simply ask again.

### 5. Install Essential Programs
Run these commands to install required tools:

```bash
wget https://cis106.com/assets/scripts/essentials.sh
chmod +x essentials.sh
./essentials.sh -a
```

> **Note**: This may take a while depending on your internet speed.


### 6. Install VS Code and Extensions

```bash
wget https://cis106.com/assets/scripts/vscode.sh
chmod +x vscode.sh
./vscode.sh
```

> **Note**: This will install Visual Studio Code along with all the extensions needed for the course.

When done, restart your virtual machine to ensure all updates and installations are applied.


<hr>

## Step 6: Install Guest Additions
Right now, your virtual machine cannot fully utilize your host computer’s screen. While you could increase the display scaling from the Virtual Machine menu, that only enlarges the view — it doesn’t properly fit the screen.

To enable full-screen mode (and other useful features), you need to install Guest Additions. Follow these steps:

1. **Insert the Guest Additions ISO**
   1. In the Virtual Machine window menu, click Devices → Insert Guest Additions CD Image.
2. **Open the GNOME File Manager and access the inserted disk**
   1. Search for and launch the Files application.
   2. In the left sidebar, click the Vbox CD entry.
3. **Run the Guest Additions installer**
   1. In the file manager, click the Run Software button at the top-right corner.

<p style="text-align: center"><img src="https://docs.google.com/drawings/d/e/2PACX-1vQ-ahYwY8Q_S7vJVoPc4fuFwflQXL2gjgGuZJtH1aKU-fNwEY1vevYYu0O6qt6DzwJCHA5YXJefVs_j/pub?w=960&h=720" width="500px" height="500px" ></p>

<hr>

## Step 7 Set up Git & GitHub

We’ll now configure Git on your virtual machine and connect it to your GitHub account using SSH. This will make it easier to upload files to GitHub since we wont need to manually upload files via the web interface. 


### 1. Sign in to your Github account 
1. Open your web browser and log in to your GitHub account. 
2. Debian 13 comes preloaded with Firefox. You can use the Software Center to install other Web Browsers however, we will use Firefox the entire semester.

### 2. Configure your Git Identity
1. Open the Terminal Application
2. Run the following commands, replacing the placeholders with your actual information. These tell Git who you are, which is important for tracking your commits.

```bash
git config --global user.name "Your Name"
git config --global user.email "your_email@example.com"
```

### 3. Generate an SSH Key
This SSH key will be how we connect to GitHub. Think of this as a password but much more secure. Run this command on your terminal. Remember to replace the placeholder information with your own.

```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```

**When prompted:** 

* "Enter a file in which to save the key" -> Press Enter to accept the default location.
* "Enter passphrase" -> Press Enter for no passphrase (optional).

> A passphrase adds extra security, but for this course it’s not required.

### 4. Copy Your Public SSH Key
Run the following command:

```bash
cat ~/.ssh/id_ed25519.pub
```
Highlight and copy the entire output to your clipboard.

### 5. Add Your SSH Key to GitHub
1. In GitHub, go to Settings -> SSH and GPG Keys.
2. Click New SSH Key.
3. Paste your key into the text box and save.
4. Make sure that there are no trailing spaces

### 6. Test Your Connection
Run this command:

```bash
ssh -T git@github.com
```
Type `yes` when prompted.

### 7. Clone Your Repository
Run these command. Remember to replace the placeholders with your actual GitHub username and repository name:

```bash
cd
git clone git@github.com:YourGitHubUsername/YourRepositoryName.git
```

### 8. Visual Guides

> These recordings were made in Ubuntu 24.04 but they will work the same for Debian 13. 


<p align="center"><img src="/assets/lab2/git_username_config.gif"/></p> 
<p align="center"><img src="/assets/lab2/ssh_key.gif"/></p> 
<p align="center"><img src="/assets/lab2/github_clone_repo.gif"/></p>

<hr>

## Step 8: Set up screenshot tool

> **Note**: The default screenshot application in Debian does not meet our needs. Instead, we will use gnome-screenshot, which provides the required functionality.

1. Open Keyboard Settings in Debian:
   1. Settings → Keyboard → View and Customize Shortcuts → Custom Shortcuts
2. Click the + icon to add a new shortcut.
3. In the dialog box, enter the following:
   1. **Name**: gnome-screenshot
   2. **Command**: gnome-screenshot -i
4. Assign your shortcut:
   1. Click the Set Shortcut button.
   2. Press the Print Screen key on your keyboard (or any other key combination of your choice).
   3. If prompted, click Replace to override the existing shortcut.
5. Test your shortcut:
   1. Press the Print Screen key.
   2. If it doesn’t work, repeat the steps above.
6. Visual Guide:

<p style="text-align: center; display: block;"> <img src="https://docs.google.com/drawings/d/e/2PACX-1vT4shcUqcve3Hs-QAdrjZ6HzEBFZy_o-XUzNQLkbIyHK9sj2zbxAwu_aVq1wfeZXfVft_DuF4sWeymy/pub?w=960&h=720" width="500px" height="500px"> </p>

<hr>

## Prepare your submission

### Organize your repository
1. First, let's organize your repository. We want to have a folder for labs, week reports, notes, and cheat sheets. It is important to have a project properly organized because as the project grows, the harder it becomes to manage files if they do not have some sort of organizational structure.
2. In the cis106 folder (also known as a directory in the Unix/Linux World), create the following folders (all lowercase please):
   1. labs
   2. week_reports
   3. notes
   4. cheat_sheets
3. In the cis106 folder, you have a zip file for lab 1, week report 1 and notes 1. You also have several pdf and markdown files from the previews week. Remove the pdf and markdown files and unzip all the zip files.
4. Move the unzipped folders to their corresponding folder. For example, lab1 should moved to labs. 

### Create your submission

1. Inside the labs folder create a new folder for lab 2 called: lab2
2. Open the cis106 folder in VS Code
3. Inside the lab2 folder, create a new markdown file called lab2.md
4. Paste the following markdown text in the file:

```
# Lab 2 Submission

## Virtual Machine settings

![cpufetch](cpufetch.png)
![script](script.png)
```

1. Open a terminal and run the following command: `cpufetch 2> /dev/null`
2. Take a screenshot of the entire terminal window. Save the screenshot in the lab2 folder
3. Clear the terminal with the command: `clear` and run the following command: <br>`curl -s https://cis106.com/assets/scripts/lab2_system_info.sh | bash`
4. Take a screenshot of the entire terminal window. Save the screenshot in the lab2 folder. Name the screenshot `script.png`
5. Save and convert the file `lab2.md` file to pdf
6.  Open the VS Code terminal and enter the following commands to commit and push your changes to github:

```bash
git pull
git add .
git commit -m 'lab2 finished'
git push
```

### Submit in Blackboard

In blackboard submit the following:
* The URL to the `lab2.md` file in github
* The `lab2.pdf` file

<p align="center" style="display:block"><img src="/assets/warning-icon.png" width="50" /></p>

## Special Note 1 – Practice with Virtual Machines
This lab is a canonical lab - meaning it’s foundational for your learning. You’ll be creating more virtual machines (VMs) later in this course and your career, so now is the time to get comfortable with the process.

I recommend experimenting:

* Try installing Windows 10. First, research its minimum requirements so you can adjust your VM settings accordingly.
* Install other Linux distributions to compare features and interfaces.
  * You do not need to keep these practice VMs. Once you’re done experimenting:
  * Delete them using the option "Delete all files" rather than just removing them from VirtualBox.
  * This ensures your hard drive space is fully recovered.

## Special Note 2 – Git Command Quick Reference
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