---
layout: post
title: Lab 2 - Installing Ubuntu Using Ubuntu Server
---

# {{page.title}}

## Video here
[Not available yet! working on it](https://cis106.com)

## Who is this lab for?

This lab is for students with underpowered PCs/Intel Macs that encountered issues with [alternative 3](https://cis106.com/labs/lab2_alternative3/). For example, the installer froze during the installation. We will be using Ubuntu Server.


## Requirements:

| HARDWARE | SPEC                    |
| -------- | ----------------------- |
| CPU      | Dual Core 1.5 Or higher |
| RAM      | 4 - 8 Gb DDR4           |
| STORAGE  | 40 Gb Available         |

### Example PCs/Macs
* [Intel Macbook Air with 8Gb of RAM and a dual core CPU](https://support.apple.com/kb/SP813?locale=en_US)
* [HP ProBook 640 G2 Notebook PC ](https://support.hp.com/us-en/document/c04910208)


## Step 1: Download a Hypervisor
We will be using Virtualbox 7. Download the following:

* [Ubuntu 22.04 Server ISO file](https://ubuntu.com/download/server)
* [Virtualbox Installer](https://www.virtualbox.org/wiki/Downloads)
* [Virtualbox Extension Pack](https://download.virtualbox.org/virtualbox/7.0.14/Oracle_VM_VirtualBox_Extension_Pack-7.0.14.vbox-extpack)
* For Windows Users:
  * Install the [Microsoft Visual C++ Redistributable x64](https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170)
    * Direct Link: [here](https://aka.ms/vs/17/release/vc_redist.x64.exe) 

<p align="center" style="display:block"><img src="/assets/lab2/visualStudio2015.png"/></p>


1. Install Virtualbox
   1. [Video For macOS](https://youtu.be/fyx53lJyAoc)
   2. [Video For Windows](https://youtu.be/IQbOpqHdwVg)

Make sure to select the right installer for your operating system:

![VirtualBox Download page](/assets/vboxdownloadpage.png)

> Note: The videos are a little old but the steps are still the same. 

## Step 2:  Create a Virtual Machine

create a virtual machine that meets these specifications:

> * OS: Ubuntu 22.04 64Bits [ISO URL](https://ubuntu.com/download/server) 
> * HDD: 40 GB
> * RAM: 2GB
> * Video: 128 MB or Higher
> * Audio Controller: Disabled (audio won't be needed)
> * CPU: 1 Cores
> * Add this to description:
  > * **Hostname:** cis106vm
  > * **User:** student name (use your blackboard username)
  > * **Password:** pccc
> * Shared Clipboard: Enabled - Bidirectional
> * Drag n' Drop: Enabled - Bidirectional

### Example of how to create a virtual machine
This example was taken from the original lab so it will not match the settings specified above.

<p align="center" style="display:block"><img src="/assets/createVM.gif"/></p>

| virtual machine settings example        |
| --------------------------------------- |
| ![](/assets/virtualmachinesettings.png) |


## Step 3: Install Ubuntu
1. Create a virtual machine that meets the requirements mentioned in the previous step. Here is an example (with different specs as it is an old gif)
![create ubuntu server vm](/assets/createubuntuservervm.gif)
1. Turn on Virtual Machine
2. Start the installer.
![Select Language](/assets/selectLanguage.png)<br>
![Installer](/assets/installUbuntu.png)<br>
![Language of installer](/assets/languageSelect2.png)<br>
![set network ip](/assets/setnetworkip.png)<br>
![proxy page](/assets/proxypage.png)<br>
![mirror address](/assets/mirroraddress.png)<br>
![use entire disk](/assets/useEntireDisk.png)<br>
![review settings page](/assets/reviewSettingsPage.png)<br>
![confirm changes](/assets/confirmchanges.png)<br>
![user info](/assets/userInfo.png)<br>
![ssh server](/assets/sshServer.png)<br>
![Services](/assets/services.png)<br>
![let installer run](/assets/letinstallerrun.png)<br>
![installation complete](/assets/installationComplete.png)<br>
![login](/assets/login.png)<br>

## Step 4: Update and install Desktop environment:

> Note: This step is long

1. Log in with your username and password
2. Run the following command:
```
sudo apt update && sudo apt upgrade -y
```
3. The run this command:
```
sudo apt install ubuntu-desktop gnome-session-flashback lightdm -y
```
4. Reboot the vm. Use this command:
```
sudo reboot now
```
Once the virtual machine boots up, type your password and click on the 'Ubuntu' icon. Select "GNOME Flashback(Metacity)" from the options and then sign in. Here is how to do it!

<p align="center" style="display:block"><img src="/assets/lab2/gnome-flashback.gif"/></p>

## Step 5 Optimizing Ubuntu for the class
### Install Guest Additions  

Follow this video to install the guest additions:
* [How To Install Virtualbox Guest Additions In Ubuntu  22.04](https://youtu.be/IuqJxbYuU-Y)

Here are the steps:
1. On the virtual machine window menu, click on "Devices" and then click on "Insert Guest Additions CD Image"
2. Open the file manager (Home icon on the desktop) and then click on the disk
3. Right click on an empty area of the file manager to open the menu and click on "Open in Terminal"
4. Type the following command:
```
sudo ./VBoxLinuxAdditions.run
```
> Remember Linux is case sensitive so always double check your spelling
5. Reboot your Virtual Machine and once you sign in, maximize the virtual machine window.

Here is how to do it:

<p align="center" style="display:block"><img src="/assets/lab2/install_guess_additions-gf.gif"/></p>

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

## Step 6: Setup Git
1. Sign in to your Github account. 
2. Open a terminal window and run the following commands:
3. Set your username: <br> `git config --global user.name 'your username here'` <br>
4. Set your email address: <br> `git config --global user.email 'your email here'` <br>
5. Setup SSH authentication
6. Generate an ssh key: <br> `ssh-keygen -t ed25519 -C "your_email@example.com"` <br> This creates a new SSH key, using the provided email as a label. When you're prompted to:<br> `"Enter a file in which to save the key,"` <br>press Enter. This accepts the default file location. At the prompt, to type a secure passphrase, press enter for no passphrase. If you want to use a passphrase, go ahead as it provides an extra layer of security. However, for this course you do  not need to add a passphrase. 
7. Use the following command to see your public ssh key: <br> `cat ~/.ssh/id_ed25519.pub` <br> copy the entire output of this command to the clipboard.
8. In your github page, go to `settings` > `SSH and GPG Keys` Here add your ssh key that you copied to the clipboard in the step prior. Type `yes` (the whole word) and press enter and you are done
9. Test you ssh connection by using this command: <br>`ssh -T git@github.com`<br>
10. Clone your github repository. Use these commands: <br>`cd; git clone git@github.com:yourGithub-User-Name-Here/your-Repository-Name-Here`<br>

<p align="center" style="display:block"><img src="/assets/lab2/git_username_config.gif"/></p>
<p align="center" style="display:block"><img src="/assets/lab2/ssh_key.gif"/></p>
<p align="center" style="display:block"><img src="/assets/lab2/github_clone_repo.gif"/></p>

## Step 7: Installing VS Code
1. Download the .deb package
2. Open the file
3. Select the Software Center to install the package.
4. Install the following extensions:
* [Markdown All in One by Yu Zhang](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
* [Markdown by starkwang](https://marketplace.visualstudio.com/items?itemName=starkwang.markdown)
* [Markdown PDF by yzane](https://marketplace.visualstudio.com/items?itemName=yzane.markdown-pdf)
* [Markdown Preview Enhanced by Yiyi Wang](https://marketplace.visualstudio.com/items?itemName=shd101wyy.markdown-preview-enhanced)
* [PDF Preview by Analytic Signal Limited](https://marketplace.visualstudio.com/items?itemName=analytic-signal.preview-pdf)
* [Code Spell Checker by Street Side Software](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)
  
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