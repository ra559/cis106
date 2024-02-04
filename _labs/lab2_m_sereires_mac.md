---
layout: post
title: Lab 2 - Installing Ubuntu M Series Macs
---
# {{page.title}}


## Video Here
[Lab 2 Installing Ubuntu M Series Macs (M1/M2 CPUS)](https://youtu.be/AyXzHb86Uw4)

- [{{page.title}}](#pagetitle)
  - [Video Here](#video-here)
  - [Note](#note)
  - [Step 1: Download Hypervisor](#step-1-download-hypervisor)
  - [Step 2: Create the virtual machine](#step-2-create-the-virtual-machine)
  - [Step 3: Install Ubuntu Server](#step-3-install-ubuntu-server)
  - [Step 4: Install necessary packages](#step-4-install-necessary-packages)
    - [Update the system and install the following essential packages:](#update-the-system-and-install-the-following-essential-packages)
    - [Install a desktop environment and reboot](#install-a-desktop-environment-and-reboot)
  - [Step 5: Configuring the desktop](#step-5-configuring-the-desktop)
    - [Change Wayland for X.org](#change-wayland-for-xorg)
    - [Replace the current screenshot tool with flameshot](#replace-the-current-screenshot-tool-with-flameshot)
  - [Step 7: Install VS Code](#step-7-install-vs-code)
  - [Step 6 Setup Git and Github](#step-6-setup-git-and-github)
  - [Time to submit this lab](#time-to-submit-this-lab)
  - [Known issues:](#known-issues)
  - [Special Note](#special-note)


## Note
This Lab is exclusive for students using M1/M2 Series Macbooks/Mac Mini. This lab assumes the following about your computer:

* CPU: M1 or M2
* Ram: 16 GB
* OS: Mac OS Sonnoma Latest version

This lab assumes the following about you:
* You can follow instructions
* You have basic understanding of your computer's hardware

## Step 1: Download Hypervisor
Download the following applications:

* [UTM Hypervisor for M series Macs](https://mac.getutm.app/)
* [Ubuntu Server For ARM ISO file](https://ubuntu.com/download/server/arm)
  
1. Install UTM.
2. Do not touch/open/mount the Ubuntu ISO file.


## Step 2: Create the virtual machine
Create a virtual machine for Ubuntu Server

1. Launch UTM. Select "Create a New Virtual Machine"
2. Here you will have 2 options.
   1. **Emulate**: This is for x86_64. This option is slower but it will give you the same version of Ubuntu that the Windows users virtualize in Virtualbox. We will not be using this option on Mac. 
   2. **Virtualize**: this is for ARM64 operating system like the Ubuntu Server ISO we downloaded earlier. Most of the software we are going to use is available for ARM so there should not be much difference in the Labs for you
3. Select "**Virtualize**"
4. Select "**Linux**" for the Operating System options
5. In the "**Boot ISO Image**" section, click on the browser button and select the Ubuntu Server ISO you downloaded earlier.
6. In the "**Hardware**" configuration window, select the following:
   1. RAM: 4096 MB
   2. CPU Cores: 2
   3. **Note**: *We won't be using OpenGL hardware acceleration for now, but if you start having graphics issues, enable this feature and see if it helps. This is an experimental feature so for now let's keep it safe. *
7. In the "**Storage**" section, set the disk size to 50Gb. That is just enough for our class. If you want to give it more storage, you can.
8. In the "**Shared Directory**" section, keep the defaults as is. We will not be needing a shared directory. But if you want to have a shared directory between then Host (mac) and Guest(Ubuntu), go ahead and play around with it. I leave this up to you. There are tons of guides on how to do this.
9. In the "**Summary**" Section, set the **Name** to Ubuntu Desktop
   1.  The Virtual Machine settings window will open.
   2.  Add the following in the notes:
       1.  **Hostname**: cis106
       2.  **username**: your blackboard username - or a preferred username
       3.  **password**: pccc (*we are going to keep things simple to help troubleshooting*)


## Step 3: Install Ubuntu Server

1. Start the VM by pressing the **Play** button
2. If you see a message screen that reads "**Display Output is not active**" ignore it. The VM is just starting
3. Follow the steps to install Ubuntu server as laid out in the guides: [How to install Ubuntu Server 20.04](https://cis106.com/guides/install-ubuntu-server-20.04/)
   
>   **Notes**:
>      1. We will install the Server Edition of Ubuntu. The server does not have a graphical installer but it is easy anyways.
>      2. Later we will install a graphical desktop environment

4. Once the OS has been installed, reboot the VM. If the VM seems to be hanging, manually reboot it. Before the disk boots the installer again, turn off the VM.
5. Remove the Ubuntu Server ISO file from the virtual DVD Drive.
6. Turn on the Virtual Machine and sign in. Use your username and password you set during the installation process

## Step 4: Install necessary packages 
### Update the system and install the following essential packages:

Run these commands one at the time:

```
sudo apt update
sudo apt upgrade -y
sudo apt install build-essential linux-headers-$(uname -r) -y
sudo apt install gcc make perl nemo -y
sudo apt install git python3-pip curl -y
sudo apt install wget tree htop net-tools -y 
sudo apt install vim neofetch samba smbclient -y
```

### Install a desktop environment and reboot 

> **Note**: We will be using Gnome but you are welcome to use any other desktop environment.

```
sudo apt install ubuntu-desktop -y
sudo reboot now
```

> **Note**: This will install Ubuntu's spin of the Gnome Desktop environment. A lot of packages will be installed, so this step will take time

## Step 5: Configuring the desktop
Now that you have a desktop environment, let's configure the rest of the system:

1. Do not enable Ubuntu Pro
2. Ignore any error reporting. We will disable this anyway
3. Some users have reported issues with full screen so if you are having issues, just don't use full screen.
4. Open a terminal window. Type this command to disable animations: <br>`gsettings set org.gnome.desktop.interface enable-animations false`
5. Remove the error reporting software and other applications we won't need: <br>`sudo apt purge apport aisleriot gnome-mahjongg gnome-sudoku `
6. Log out and switch from Wayland to Xorg
7. Install the following applications: 
```
sudo apt install flameshot vlc deluge geany tilix nemo gnome-tweaks snapd flatpak gnome-software-plugin-flatpak gnome-software-plugin-snap -y 
```
8. Install Ubuntu Restricted extras: <br>`sudo apt install ubuntu-restricted-extras ubuntu-restricted-addons -y`
9. Replace the current screenshot application with Flameshot

### Change Wayland for X.org
1. Do it graphically. See the video or gif below.
2. Open the file `/etc/gdm3/custom.conf` and uncomment the line `#WaylandEnable=false` this will make it permanent. 
   1. To open the file use the command: `sudo gedit /etc/gdm3/custom.conf`
   2. To uncomment the line by removing the `#` from the beginning of the line
   3. Save the file
   4. Exit the text editor


<p align="center" style="display:block"><img src="/assets/lab2/change_xorg.gif"/></p>

<p align="center" style="display:block"><img src="/assets/lab2/gedit_wayland_off.gif"/></p>

### Replace the current screenshot tool with flameshot
1. Open the system settings
2. Find the Keyboard settings
3. Scroll down to keyboard shortcuts and click on "View and customize shortcuts"
4. Scroll down to custom shortcuts
5. Click the + icon to add a shortcut
   1. Name: flameshot
   2. command: flameshot gui
   3. key: print key in your keyboard

<p align="center" style="display:block"><img src="/assets/lab2/flameshot.gif"/></p>



## Step 7: Install VS Code
1. Download the ARM64 package for Ubuntu
2. Install the package
3. Install the following extensions:
* [Markdown All in One by Yu Zhang](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
* [Markdown by starkwang](https://marketplace.visualstudio.com/items?itemName=starkwang.markdown)
* [Markdown PDF by yzane](https://marketplace.visualstudio.com/items?itemName=yzane.markdown-pdf)
* [Markdown Preview Enhanced by Yiyi Wang](https://marketplace.visualstudio.com/items?itemName=shd101wyy.markdown-preview-enhanced)
* [PDF Preview by Analytic Signal Limited](https://marketplace.visualstudio.com/items?itemName=analytic-signal.preview-pdf)
* [Code Spell Checker by Street Side Software](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)

## Step 6 Setup Git and Github 
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

![neofetch](neofetch.png)
![script](script.png)
```

5. Open a terminal and run the following command: `neofetch`
6. Take a screenshot of the entire terminal window. Save the screenshot in the lab2 directory inside the cis106 directory. Name the screenshot `neofetch.png`
7. Clear the terminal with the command: `clear` and run the following command: <br>`curl -s https://cis106.com/assets/scripts/lab2_system_info.sh | bash`
8. Take a screenshot of the entire terminal window. Save the screenshot in the lab2 directory inside the cis106 directory. Name the screenshot `script.png`
9. Save and convert the file `lab2.md` file to pdf. If you encounter issues, see the Known Issues part of the guide.
10. Open the VS Code terminal and enter the following commands to commit and push your changes to github. If you are having issues, see the known issues part of this guide:
```
git pull
git add .
git commit -m 'lab2 finished'
git push
```
10. In blackboard submit the following:
    1.  The URL to the `lab2.md` file in github
    2.  The `lab2.pdf` file


<p align="center" style="display:block"><img src="/assets/warning-icon.png" width="50" /></p>



## Known issues:
* Markdown PDF converter does not work:
  * **Solution**: Install Chromium-browser: `sudo apt install chromium-browser`
  * Open the extensions settings:
    * Navigate to the executable path and type: `/snap/bin/chromium`
    * If the machine freezes at this step, reboot and force close the Virtual Machine and UTM.
* Ghosting when typing in the VS Code integrated Terminal:
  * **Workaround**:
    * Open a regular terminal
    * Navigate to the cis106 directory: `cd cis106`
    * Run the git commands from there:
      * `git pull`
      * `git add .`
      * `git commit -m "changes"`
      * `git push`
  * **Note**: I have  not found a real solution for this yet. 

## Special Note 
You are going to be using the git commands a lot. Here is a quick reference:
* `git clone repository/url/here`: is the command to clone a repository where cloning means downloading a repository to your computer
* `git pull`: to pull/synchronize your repository from github to your local machine. Always run this command BEFORE you start working VS Code
* `git add .`: to track all the changes made to your file. 
* `git commit -m "label for your changes here"`: this command will label all the changes you added with the `add` command
* `git push`: will send all your changes to your github repository

> Always run the commands in this order: `pull` =>  `add` =>  `commit` => `push` 
> Never use the github website to make changes to your repository unless you know what you are doing and can remember to pull the changes before working on your local repository!