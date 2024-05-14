---
layout: post
title: Lab 2 - Installing Ubuntu For Windows Users And Intel Macs
---

# {{page.title}}

This is the default lab 2. There is other versions of this lab:

* [Lab 2 - Installing Ubuntu For M Series Macs](https://cis106.com/labs/lab2_m_sereires_mac/)

This version of Lab 2 is for Windows users (Windows 11 or 10) or Macbooks with capable Intel CPU. 
The alternative Lab 2 is for M series Macbooks because Virtualbox does not run on M Series Mac.


## Video here
[Lab 2 Installing Ubuntu 22.04 Windows Version](https://youtu.be/N9c4DkNTUek)

## Table of Contents
- [{{page.title}}](#pagetitle)
  - [Video here](#video-here)
  - [Table of Contents](#table-of-contents)
  - [Presentations:](#presentations)
  - [Requirements](#requirements)
  - [Step 1:  Enable Virtualization](#step-1--enable-virtualization)
      - [REQUIRED SPECIFICATIONS:](#required-specifications)
  - [Step 2:  Create a Virtual Machine](#step-2--create-a-virtual-machine)
  - [Step 3: Install Ubuntu](#step-3-install-ubuntu)
  - [Step 4: Optimizing Ubuntu for the class](#step-4-optimizing-ubuntu-for-the-class)
    - [Update and upgrade](#update-and-upgrade)
    - [Install Essential packages:](#install-essential-packages)
    - [Install the guest additions for virtualbox - Option 2](#install-the-guest-additions-for-virtualbox---option-2)
  - [Step 5: Setup Git](#step-5-setup-git)
  - [Step 6: Install VS Code Extensions](#step-6-install-vs-code-extensions)
  - [Time to submit this lab](#time-to-submit-this-lab)
    - [Special Note 1](#special-note-1)
    - [Special Note 2](#special-note-2)

## Presentations:
* [The basics of Virtualization](https://rapurl.live/est)
* [Using VirtualBox](https://rapurl.live/t0h)
* [Installing Ubuntu 20.04 in VirtualBox](http://bit.ly/2WR4i0o)

## Requirements
* Please go over the presentations before you do this lab. It will give you an idea of what we are trying to do here. 
* Please go slow and take your time to do this lab. It is long but it is the core of this course. 
* If you do not have a computer that meets the recommended criteria, **please reach out to me and stop doing this lab.**


> **NOTE!** 
> * If your computer does not meet the required hardware, you will have a hard time completing all the work and the final project therefore be ready for some slow downs!

<hr>

## Step 1:  Enable Virtualization
Before you can create virtual machines, you need to know if your computer can run virtual machines. There are a couple of steps you need to follow to find out the answer to this question:

1. Find out what hardware your computer has:
   1. CPU and number of cores
   2. Amount of RAM
   3. Amount of Free Storage
2. If your computer does not meet the criteria below, stop this lab and get in contact with me. We may be able to find an alternative for you but this can only be done on a 1 on 1 basis.

#### REQUIRED SPECIFICATIONS:
* **CPU**: Quad core CPU
* **RAM**: 8GB or More
* **Free Storage**: 60GB or more
  

<p align="center" style="display:block"><img src="/assets/warning-icon.png" width="50" /></p>

 > If you do not meet these requirements but your computer is close enough, you may be able to complete the course material. The downside is that your computer will be extremely slow.
   
If your computer meets or exceeds the above capabilities, then you need to check if virtualization is enabled. Follow [this guide](https://rapurl.live/vaj) to know if your computer has virtualization enabled and if it does not, use the same guide to learn how to enable it. You can also use [Speccy](https://www.ccleaner.com/speccy) to find out if your computer has virtualization enabled.

> If you are having troubles enabling virtualization, let me know immediately. **DO NOT WAIT FOR THE LAST MINUTE!** This part can take time!

<hr>

## Step 2:  Create a Virtual Machine

Before you can create virtual machines, you need to install VirtualBox and VirtualBox Extension Pack. To download Vbox and the extension pack go to:

* [Virtualbox Download Page](https://www.virtualbox.org/wiki/Downloads)
* [Microsoft Visual C++ Redistributable](https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170)

<p align="center" style="display:block"><img src="/assets/lab2/visualStudio2015.png"/></p>


Make sure to select the right installer for your operating system:

![VirtualBox Download page](/assets/vboxdownloadpage.png)

Make sure to install VirtualBox in your host computer. For Windows follow this [video](https://www.youtube.com/watch?v=2lGmCwpFYi8). For macOS follow this [video.](https://www.youtube.com/watch?v=fyx53lJyAoc) Once you have installed VirtualBox, create a virtual machine that meets these specifications:

> * OS: Ubuntu 24.04 64Bits [ISO URL](https://ubuntu.com/download/desktop) 
> * HDD: 50 GB
> * RAM: 4GB
> * Video: 128 MB
> * Audio Controller: Disabled (audio won't be needed)
> * CPU: 2 Cores
> * Add this to description:
  > * **Hostname:** cis106vm
  > * **User:** student name (use your blackboard username or any other username of your choice)
  > * **Password:** pccc
> * Shared Clipboard: Enabled - Bidirectional
> * Drag n' Drop: Enabled - Bidirectional

![Create VM](/assets/createVM.gif)

| virtual machine settings                |
| --------------------------------------- |
| ![](/assets/virtualmachinesettings.png) |

<hr>

## Step 3: Install Ubuntu

Go over the presentation ["Installing Ubuntu 20.04 in VirtualBox"](https://shorturl.at/hlor0). There, I have laid out every step with proper explanations. The presentation is using an earlier version of Virtualbox and Ubuntu but the differences are not very significant. I will do it in the video as well but it will benefit you to read the presentation. 

<hr>

## Step 4: Optimizing Ubuntu for the class

### Update and upgrade

1. Open the terminal application and type the following command: <br> `sudo apt update && sudo apt upgrade -y` 
2. The terminal will prompt you to type your password. Nothing will be shown to the screen as you type. 
3. This may take some time depending on your internet connection and the number of available updates.

<p align="center" style="display:block"><img src="/assets/lab2/update_ubuntu.gif"/></p>

### Install Essential packages:

1. Install the curl command which will then use to download a couple of script files. <br>`sudo apt install curl -y`
2. Use curl to download and run the following script: `essentials.sh`

```bash
curl https://cis106.com/assets/scripts/essentials.sh -o essentials.sh
chmod +x essentials.sh
./essentials.sh
rm essentials.sh
```
3. Install VS Code:

```bash
curl https://cis106.com/assets/scripts/vscode.sh -o vscode.sh
chmod +x vscode.sh
./vscode.sh
rm vscode.sh
```

4. Install Librewolf:

```bash
curl https://cis106.com/assets/scripts/librewolf.sh -o libre.sh
chmod +x libre.sh
./libre.sh
rm libre.sh
```

5. Install Ubuntu Restricted Extras

```bash
sudo apt install ubuntu-restricted-extras ubuntu-restricted-addons -y
```
> When you see the screen below, use the tab key to select OK, the space key instead of enter, the arrow keys to select yes and the space bar again to agree to the terms and conditions:

<p align="center" style="display:block"><img src="/assets/lab2/terms.gif"/></p>


### Install the guest additions for virtualbox - Option 2
1. Insert the guess additions cd
2. Open the cd in the file manager from the Favorites bar
3. Right click on an empty area of the directory and click on open terminal
4. Run these commands: 
  
```bash
sudo apt install build-essential linux-headers-$(uname -r) -y
sudo ./VBoxLinux
```
5. Reboot the vm. You can use the command `sudo reboot now`
6. Now your virtual machine can use the full screen and share the clipboard with your host machine

<p align="center" style="display:block"><img src="/assets/lab2/install_guess_additions.gif"/></p>

<hr>

## Step 5: Setup Git
1. Sign in to your Github account. 
2. Open a terminal window and run the following commands:
3. Set your username: <br> `git config --global user.name 'your username here'` <br>
4. Set your email address: <br> `git config --global user.email 'your email here'` <br>
5. Setup SSH authentication
6. Generate an ssh key: <br> `ssh-keygen -t ed25519 -C "your_email@example.com"` <br> This creates a new SSH key, using the provided email as a label. When you're prompted to:<br> `"Enter a file in which to save the key,"` <br>press Enter. This accepts the default file location. At the prompt, to type a secure passphrase, press enter for no passphrase. If you want to use a passphrase, go ahead as it provides an extra layer of security. However, for this course you do  not need to add a passphase. 
7. Use the following command to see your public ssh key: <br> `cat ~/.ssh/id_ed25519.pub` <br> copy the entire output of this command to the clipboard.
8. In your github page, go to `settings` > `SSH and GPG Keys` Here add your ssh key that you copied to the clipboard in the step prior. Type `yes` (the whole word) and press enter and you are done
9. Test you ssh connection by using this command: <br>`ssh -T git@github.com`<br>
10. Clone your github repository. Use these commands: <br>`cd; git clone git@github.com:yourGithub-User-Name-Here/your-Repository-Name-Here`<br>

<p align="center" style="display:block"><img src="/assets/lab2/git_username_config.gif"/></p>
<p align="center" style="display:block"><img src="/assets/lab2/ssh_key.gif"/></p>
<p align="center" style="display:block"><img src="/assets/lab2/github_clone_repo.gif"/></p>

<hr>

## Step 6: Install VS Code Extensions
1. Install the following extensions:
* [Markdown All in One by Yu Zhang](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
* [Markdown PDF by yzane](https://marketplace.visualstudio.com/items?itemName=yzane.markdown-pdf)
* [Markdown Preview Enhanced by Yiyi Wang](https://marketplace.visualstudio.com/items?itemName=shd101wyy.markdown-preview-enhanced)
* [PDF Preview by Analytic Signal Limited](https://marketplace.visualstudio.com/items?itemName=analytic-signal.preview-pdf)
* [Code Spell Checker by Street Side Software](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)
  
<hr>

## Time to submit this lab
1. First, lets organize the repository
   1. Open the file manager
   2. Create the following folders: `labs`, `weekReports`,`finalExam`,`cheatSheets`,`notes`
   3. move all the files related to lab 1 to the `labs` folder
   4. Inside the lab folder create 2 folders: `lab1` and `lab2`. From this point on, every lab will have its own folder and so will every week report. 
   5. Move all the lab 1 files to the `lab1` folder
   6. Repeat the process for the week report 1
2. Open the `cis106` folder in VS Code
3. Inside the `lab2` folder, create a file named `lab2.md`
4. Add the following markdown to the file:

```
# Lab 2 Submission

## Virtual Machine settings

![screenfetch](screenfetch.png)
![script](script.png)
```

5. Open a terminal and run the following command: `neofetch`
6. Take a screenshot of the entire terminal window. Save the screenshot in the lab2 directory inside the cis106 directory. Name the screenshot `neofetch.png`
7. Clear the terminal with the command: `clear` and run the following command: <br>`curl -s https://cis106.com/assets/scripts/lab2_system_info.sh | bash`
8. Take a screenshot of the entire terminal window. Save the screenshot in the lab2 directory inside the cis106 directory. Name the screenshot `script.png`
9. Save and convert the file `lab2.md` file to pdf
10. Open the vs code terminal and enter the following commands to commit and push your changes to github:

```bash
git pull
git add .
git commit -m 'lab2 finished'
git push
```

11. In blackboard submit the following:
    1.  The URL to the `lab2.md` file in github
    2.  The `lab2.pdf` file


<p align="center" style="display:block"><img src="/assets/warning-icon.png" width="50" /></p>

<hr>

### Special Note 1
This is a canonical lab for your learning. You will be making more virtual machines in the future. I suggest you create more virtual machines and then delete them. For example, find out what are the minimum requirements for installing windows 10 and then make a windows 10 virtual machine. Also, install other linux distributions as well. You do not need to keep these vms just use this lab to practice. Remember, when deleting virtual machines, make sure to select `delete all files` instead of just removing the vms. This will make sure that you recover your hard drive space. 

### Special Note 2
You are going to be using the git commands a lot. Here is a quick reference:
* `git clone repository/url/here`: is the command to clone a repository where cloning means downloading a repository to your computer
* `git pull`: to pull/synchronize your repository from github to your local machine. Always run this command BEFORE you start working VS Code
* `git add .`: to track all the changes made to your file. 
* `git commit -m "label for your changes here"`: this command will label all the changes you added with the `add` command
* `git push`: will send all your changes to your github repository

> Always run the commands in this order: `pull` =>  `add` =>  `commit` => `push` 
> Never use the github website to make changes to your repository unless you know what you are doing and can remember to pull the changes before working on your local repository!

