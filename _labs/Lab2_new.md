---
layout: post
title: Lab 2 - Installing Ubuntu
---

# {{page.title}}

## Table of Contents
- [{{page.title}}](#pagetitle)
  - [Table of Contents](#table-of-contents)
  - [Presentations:](#presentations)
  - [Requirements](#requirements)
  - [Step 1:  Enable Virtualization](#step-1--enable-virtualization)
    - [MacOS users](#macos-users)
    - [Windows Users](#windows-users)
      - [REQUIRED SPECIFICATIONS:](#required-specifications)
  - [Step 2:  Create a Virtual Machine](#step-2--create-a-virtual-machine)
  - [Step 3: Install Ubuntu](#step-3-install-ubuntu)
  - [Step 4: Optimizing Ubuntu for the class](#step-4-optimizing-ubuntu-for-the-class)
    - [Update and upgrade](#update-and-upgrade)
    - [Add canonical partners in the software settings](#add-canonical-partners-in-the-software-settings)
    - [Change Wayland for X.org](#change-wayland-for-xorg)
    - [Install the guest additions for virtualbox](#install-the-guest-additions-for-virtualbox)
    - [Disable animations](#disable-animations)
    - [Install and remove software](#install-and-remove-software)
    - [Install Ubuntu restricted extras:](#install-ubuntu-restricted-extras)
    - [Replace the current screenshot tool with flameshot](#replace-the-current-screenshot-tool-with-flameshot)
  - [Step 5: Setup Git](#step-5-setup-git)
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
* Be aware that the presentations use an earlier version of Ubuntu but the changes are not that significant and you should be able to follow along.

> **NOTE!** 
> * Only start this lab after you have watched the videos or read the presentations. 
> * If your computer does not meet the required hardware, you will have a hard time completing all the work and the final project therefore be ready for some slow downs!

## Step 1:  Enable Virtualization
Before you can create virtual machines, you need to know if your computer can virtualize. There are a couple of steps you need to follow to find out the answer to this question:

### MacOS users
* For those using MacOS, if you have a recent Apple computer (M1/M2 CPU), you will not be able to use Virtualbox, there is another hypervisor you can use but I have not been able to test it since I do not own a Mac. Other students have used it in the past and they say that, aside from some workarounds, it works fine. You can watch and follow this [tutorial](https://www.youtube.com/watch?v=hnwK-nkXolc). Again, I have not tested this option therefore you are on your own.

  <p align="center" style="display:block"><img src="/assets/warning-icon.png" width="50" /></p>

  > ***From past semester experience, I cannot recommend MacOS with M1/M2 Macs for users who lack sufficient understanding of how to use their computer. The experience is very poor and students have encountered too many problems at the level where they cannot complete the work on time. Proceed at your own risk***

* If you have an older Mac (Intel Version), you can use virtualbox as it is fully supported. Just make sure your Mac has enough resources to run virtual machines. For intel Macs, virtualization is already enabled so move along to step 2


### Windows Users   
Follow these steps:
   1. Find out what hardware your computer has:
      1. CPU and number of cores
      2. Amount of RAM
      3. Amount of Free Storage
   2. If your computer does not meet the criteria below, stop this lab and get in contact with me. We may be able to find an alternative for you but this can only be done on a 1 on 1 basis.

#### REQUIRED SPECIFICATIONS:
* CPU: Quad core CPU
* RAM: 8GB or More
* Free Storage: 60GB or more
  

<p align="center" style="display:block"><img src="/assets/warning-icon.png" width="50" /></p>

 > If you do not meet these requirements but your computer is close enough, you may be able to complete the course material. The downside is that your computer will be extremely slow.
   
If your computer meets or exceeds the above capabilities, then you need to check if virtualization is enabled. Follow [this guide](https://rapurl.live/vaj) to know if your computer has virtualization enabled and if it does not, use the same guide to learn how to enable it. You can also use [Speccy](https://www.ccleaner.com/speccy) to find out if your computer has virtualization enabled.

> If you are having troubles enabling virtualization, let me know immediately. **DO NOT WAIT FOR THE LAST MINUTE!** This part can take time!

## Step 2:  Create a Virtual Machine

Before you can create virtual machines, you need to install VirtualBox and VirtualBox Extension Pack. To download Vbox and the extension pack go to:

* [Virtualbox Download Page](https://www.virtualbox.org/wiki/Downloads)
* [Microsoft Visual C++ Redistributable](https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170)

Make sure to select the right installer for your operating system:

![VirtualBox Download page](/assets/vboxdownloadpage.png)

Make sure to install VirtualBox in your host computer. For Windows follow this [video](https://www.youtube.com/watch?v=2lGmCwpFYi8). For macOS follow this [video.](https://www.youtube.com/watch?v=fyx53lJyAoc) Once you have installed VirtualBox, create a virtual machine that meets these specifications:

> * OS: Ubuntu 22.04 64Bits [ISO URL](https://ubuntu.com/download/desktop) 
> * HDD: 40 GB
> * RAM: 2GB
> * Video: 64 MB or Higher
> * Audio Controller: Disabled (audio won't be needed)
> * CPU: 2 Cores
> * Add this to description:
  > * **Hostname:** cis106vm
  > * **User:** student name (use your blackboard username)
  > * **Password:** pccc
> * Shared Clipboard: Enabled - Bidirectional
> * Drag n' Drop: Enabled - Bidirectional

![Create VM](/assets/createVM.gif)

| virtual machine settings                |
| --------------------------------------- |
| ![](/assets/virtualmachinesettings.png) |

## Step 3: Install Ubuntu

Go over the presentation ["Installing Ubuntu 20.04 in VirtualBox"](https://shorturl.at/hlor0). There, I have laid out every step with proper explanations. The presentation is using an earlier version of Virtualbox and Ubuntu but the differences are not very significant. I will do it in the video as well but it will benefit you to read the presentation. 

## Step 4: Optimizing Ubuntu for the class

### Update and upgrade

1. Open the terminal application and type the following command: <br> `sudo apt update && sudo apt upgrade -y` 
2. The terminal will prompt you to type your password. Nothing will be shown to the screen as you type. 
3. This may take some time depending on your internet connection and the number of available updates.

<p align="center" style="display:block"><img src="/assets/lab2/update_ubuntu.gif"/></p>

### Add canonical partners in the software settings
1. Open the application "Software & Updates"
2. In the Ubuntu Software tab, make sure all the options, except for "Source Code", are enabled.
4. In the "software & updates" app, click on the Updates tab and set the update daily reminder to never.
5. Since this is a lab virtual machine, we are going to choose when to update and upgrade so the reminder is useless to us.

<p align="center" style="display:block"><img src="/assets/lab2/software_updates.gif"/></p>

### Change Wayland for X.org
1. Do it graphically. See the video or gif below.
2. Open the file `/etc/gdm3/custom.conf` and uncomment the line `#WaylandEnable=false` this will make it permanent. 
   1. To open the file use the command: `sudo gedit /etc/gdm3/custom.conf`
   2. To uncomment the line by removing the `#` from the beginning of the line
   3. Save the file
   4. Exit the text editor


<p align="center" style="display:block"><img src="/assets/lab2/change_xorg.gif"/></p>

<p align="center" style="display:block"><img src="/assets/lab2/gedit_wayland_off.gif"/></p>



### Install the guest additions for virtualbox
1. Insert the guess additions cd
2. Open the cd in the file manager from the Favorites bar
3. Right click on an empty area of the directory and click on open terminal
4. Run these commands: 
  
```
sudo apt install build-essential linux-headers-$(uname -r) -y
sudo ./VBoxLinux
```
5. Reboot the vm. You can use the command `sudo reboot now`
6. Now your virtual machine can use the full screen and share the clipboard with your host machine

<p align="center" style="display:block"><img src="/assets/lab2/install_guess_additions.gif"/></p>


### Disable animations
1. Open a terminal and run this command: <br>`gsettings set org.gnome.desktop.interface enable-animations false`
2. This will disable all the fancy desktop effects making the vm feel snappier. 

<p align="center" style="display:block"><img src="/assets/lab2/animations_off.gif"/></p>


### Install and remove software
1. Remove the following applications as they will not be needed. You can run these command on the terminal:

```
sudo apt purge apport aisleriot gnome-mahjongg gnome-sudoku gnome-mines  -y
sudo apt clean
sudo apt autoclean
```

2. Install the following applications as we will use them through out the semester:

```
sudo apt install flameshot vlc deluge geany tilix -y
sudo apt install gcc make perl nemo git python3-pip -y
sudo apt install curl wget tree htop net-tools vim -y
sudo apt install neofetch neofetch caffeine samba smbclient gnome-tweaks -y
sudo apt install snapd flatpak gnome-software-plugin-flatpak gnome-software-plugin-snap -y
```

> Note: You can run all the commands in one shot by creating a script and then executing the script. The gif below shows you how

<p align="center" style="display:block"><img src="/assets/lab2/all_the_commands_script.gif"/></p>

### Install Ubuntu restricted extras:
```
sudo apt install ubuntu-restricted-extras ubuntu-restricted-addons -y
```
> When you see the screen below, use the tab key to select OK, the space key instead of enter, the arrow keys to select yes and the space bar again to agree to the terms and conditions:

<p align="center" style="display:block"><img src="/assets/lab2/terms.gif"/></p>

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
9. Save and convert the file `lab2.md` file to pdf
10. Open the vs code terminal and enter the following commands to commit and push your changes to github:
```
git pull
git add .
git commit -m 'lab2 finished'
git push
```
11. In blackboard submit the following:
    1.  The URL to the `lab2.md` file in github
    2.  The `lab2.pdf` file


  <p align="center" style="display:block"><img src="/assets/warning-icon.png" width="50" /></p>

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

