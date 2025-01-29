---
layout: post
title: Lab 2 - Installing Ubuntu For Windows Users And Intel Macs
---

# {{page.title}}

This is the default lab 2. There are other versions of this lab:

* [Lab 2 - Installing Ubuntu For M Series Macs](https://cis106.com/labs/lab2_m_sereires_mac/)
* [Lab 2 - Installing Ubuntu Using VMWare Workstation Player](https://youtu.be/2SWmam4cmfY)

This version of Lab 2 is for Windows users (Windows 11 or 10) or Macbooks with capable Intel CPU. 
The alternative Lab 2 is for M series Macbooks because Virtualbox does not run well on M Series Mac.

> **Because your computer is not my computer**, there can be issues that I have no way of accounting for. Other versions of this lab can be made upon request. I can also meet with you or work over zoom if you are having any issues. All I ask is that you are mindful of my time and yours. <br>**Do not wait till the last minute!!**


## Video here
[Lab 2 Installing Ubuntu 22.04 Windows Version](https://youtu.be/SkHsyYJm1Ns)

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
    - [Install the guest additions for virtualbox - Option1 (easy)](#install-the-guest-additions-for-virtualbox---option1-easy)
    - [Install the guest additions for virtualbox - Option 2](#install-the-guest-additions-for-virtualbox---option-2)
  - [Step 5: Setup Git](#step-5-setup-git)
  - [Step 6: Install VS Code Extensions](#step-6-install-vs-code-extensions)
  - [Step 7: Setting up Gnome Screenshot Tool](#step-7-setting-up-gnome-screenshot-tool)
  - [Time to submit this lab](#time-to-submit-this-lab)
    - [Special Note 1](#special-note-1)
    - [Special Note 2](#special-note-2)
  - [Special Note Regarding the final exam:](#special-note-regarding-the-final-exam)

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
* **CPU**: Quad core CPU or higher
* **RAM**: 8GB or More 
* **Free Storage**: 60GB or more
  

<p align="center" style="display:block"><img src="/assets/warning-icon.png" width="50" /></p>

 > If you do not meet these requirements but your computer is close enough, you may be able to complete the course material. The downside is that your computer will be extremely slow.
   
If your computer meets or exceeds the above capabilities, then you need to check if virtualization is enabled. Follow [this guide](https://rapurl.live/vaj) to know if your computer has virtualization enabled and if it does not, use the same guide to learn how to enable it. You can also use [Speccy](https://www.ccleaner.com/speccy) to find out if your computer has virtualization enabled.

> If you are having troubles enabling virtualization, let me know immediately. **DO NOT WAIT FOR THE LAST MINUTE!** This part can take time!

<hr>

## Step 2:  Create a Virtual Machine

Before you can create virtual machines, you need to install VirtualBox and VirtualBox Extension Pack. To download VirtualBox and the extension pack go to:

* [Virtualbox Download Page](https://www.virtualbox.org/wiki/Downloads)
* [Microsoft Visual C++ Redistributable](https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170)

<p align="center" style="display:block"><img src="/assets/lab2/visualStudio2015.png"/></p>


Make sure to select the right installer for your operating system:

![VirtualBox Download page](https://docs.google.com/drawings/d/e/2PACX-1vS5wTe4JJFBb9k1GlvqqSVis76HpK22lTM2v7gulACLGFT1c6j2XRRBMFw7v8BTbxJa3AFQ4v154Y4G/pub?w=1392&h=375)

![VirtualBox Download Page 2](https://docs.google.com/drawings/d/e/2PACX-1vSR1M1tg23sAnTGVsmO2hnGDmSsRgQvZ98tJwfE1fSIVOTMnbWY7d6swjwMayxlanp6HZ0OW28kX1Ru/pub?w=1393&h=378)

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

Go over the presentation ["Installing Ubuntu 24.04 in VirtualBox 7"](https://rapurl.live/vjw). There, I have laid out every step with proper explanations. The presentation is using an earlier version of Virtualbox and Ubuntu but the differences are not very significant. I will do it in the video as well but it will benefit you to read the presentation. 

<hr>

## Step 4: Optimizing Ubuntu for the class

### Update and upgrade

1. Open the terminal application and type the following command: <br> `sudo apt update && sudo apt upgrade -y` 
2. The terminal will prompt you to type your password. Nothing will be shown to the screen as you type. That is expected!
3. This may take some time depending on your internet connection and the number of available updates.

<p align="center" style="display:block"><img src="/assets/lab2/update_ubuntu.gif"/></p>

### Install Essential packages:

1. Install the curl command which will then be used to download a couple of script files. <br>`sudo apt install curl -y`
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

4. Install Librewolf and Brave Browser (optional):

```bash
curl https://cis106.com/assets/scripts/librewolf.sh -o libre.sh
curl https://cis106.com/assets/scripts/brave.sh -o brave.sh
chmod +x libre.sh
chmod +x brave.sh
./libre.sh
./brave.sh
rm libre.sh
rm brave.sh
```

5. Install Ubuntu Restricted Extras

```bash
sudo apt install ubuntu-restricted-extras ubuntu-restricted-addons -y
```

> When you see the screen below, use the tab key to select OK, the space key instead of enter, the arrow keys to select yes and the space bar again to agree to the terms and conditions:

<p align="center" style="display:block"><img src="/assets/lab2/terms.gif"/></p>

### Install the guest additions for virtualbox - Option1 (easy)
1. Insert the guess additions cd
   1. In the virtual machine menu at the top click on "Devices" then "Insert Guest Additions CD image"
   2. This will insert the installation disk and it will be accessible in Ubuntu's Favorites bar
2. Open the CD from the Favorites bar which will open it in the file manager.
3. Click on the "Run Software" button located in the red banner. Click on "Run" in the message that will appear.
Type your password and press enter. This will open a terminal to start the installation of the guest additions.
Once the installation is complete, press enter in the terminal and reboot the virtual machine. 
  
![run software](/assets/lab2/run_software_guest_add.png)

> Now you can use full screen in your virtual machine. If you see any screen flickering or glitches. Enable or disable 3D acceleration in the virtual machine settings. You may need to enable Expert Settings in the virtual machine settings.

### Install the guest additions for virtualbox - Option 2

> Follow these instructions if for whateever reason the guest additions were not installed or the prompt to install it did not pop up when you clicked on "Run Software".

1. Insert the guess additions cd
2. Open the cd in the file manager from the Favorites bar
3. Right click on an empty area of the directory and click on open terminal
4. Run these commands: 
  
```bash
sudo apt install build-essential linux-headers-$(uname -r) -y
sudo ./VBoxLinuxAdditions.run
```

5. Reboot the vm. You can use the command `sudo reboot now`
6. Now your virtual machine can use the full screen and share the clipboard with your host machine

<p align="center" style="display:block"><img src="/assets/lab2/install_guess_additions.gif"/></p>

<hr>

> NOTE:
> If you are getting screen fliclering/glitches, you may need to enable 3D Acceleration. 
> You will need to open the virtula machine settings, enable export mode and then toggle 3D acceleration ON

![3D Acceleration](https://docs.google.com/drawings/d/e/2PACX-1vQOSeJbIWdyV5OsKQr0PR2eLM7NCTbZaCL2hW-3HuNrJ-eq-lMarboJqpeFr5tf4QwPgI0flkEoBAZo/pub?w=1393&h=831)


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

## Step 7: Setting up Gnome Screenshot Tool
Note: The default screenshot application does not work for us. However, `gnome-screenshot` gives us what we need. In the past, we used to use `flameshot`, however, it is still not supported under Wayland therefore we will move away from Flameshot for the time being. To setup Gnome-Screenshot, follow these steps:

1. Install gnome screenshot: use the following command <br>`sudo apt install gnome-screenshot -y`
2. Open the keyboard settings in Ubuntu. 
   1. Settings -> Keyboard -> View Customize shortcuts -> Custom Shortcuts -> Click the + icon to add a new shortcut
   2. In the dialog box add the following:
      1. **Name:** `gnome-screenshot`
      2. **Command:** `gnome-screenshot -i`
   3. Click the set screenshot button and press the print screen key in your keyboard or any other keyboard combination of your choosing.
   4. Click the replace button.
   5. Press the print screen key to test. Did it work? Chances are it did not.
      1. *For some weird reason this does not work the first time we do it, therefore, repeat the process and make sure to spell the command correctly. See the gif for reference!*


<p align="center" style="display:block"><img src="/assets/lab2/gnome-screenshot.gif"/></p>


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

![cpufetch](cpufetch.png)
![script](script.png)
```

5. Open a terminal and run the following command: `cpufetch | pv -qL 200` or simply `cpufetch`
6. Take a screenshot of the entire terminal window. Save the screenshot in the lab2 directory inside the cis106 directory. Name the screenshot `cpufetch.png`
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

<p align="center" style="display:block"><img src="/assets/warning-icon.png" width="50" /></p>

## Special Note Regarding the final exam:
* The final exam is in person. 
* The exam is performance based and will require access to a Linux Virtual Machine. 
* If you do not have a laptop/computer you can bring to school, *a Linux Computer will be made available to you but you need to request it early because the amount of PCs is limited*

