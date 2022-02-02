---
layout: post
title: Lab 2 - Installing Ubuntu 20.04 in VirtualBox.
---
# Lab 2 - Installing Ubuntu 20.04 in VirtualBox.

## Presentations:
* [The basics of Virtualization](https://rapurl.live/est)
* [Using VirtualBox](https://rapurl.live/t0h)
* [Installing Ubuntu 20.04 in VirtualBox](http://bit.ly/2WR4i0o)


## Requirements
* Please go over the presentations before you do this lab. It will give you an idea of what we are trying to do here. 
* Please go slow and take your time to do this lab. It is long but it is the core of this course. 
* For those who do not have a computer powerful enough, you have a separate assignment to complete.

> **NOTE!** <br> Only start this lab after you have watched the videos or read the presentations.


## Question 1 | Enable virtualization
Before you can create virtual machines, you need to know if your computer can virtualize. There are a couple of steps you need to follow to find out the answer to this question:

### MacOS users
1. For those using MacOS, if you have a recent Apple computer, chances are that you can virtualize with no problem. Once you have installed VirtualBox, make sure to install the Extension Pack and move along to question 2. For those using a Macbook with only 2 cores and 4GB of RAM, know that your computer will be very slow for this class and you may want to consider using an alternative. Contact me if this is your case. 

>If you have an **M1 Macbook**, Virtualbox is not supported and you will not be able to use it for this course. You will need to either get a Raspberry Pi or an spare computer. There is a program called UTM that you can use but I cannot provide you support for it as I do not own an M1 Mac.

### Windows Users   
2. For those using Windows, follow these steps:
   1. Find out what hardware your computer has:
      1. CPU and number of cores
      2. Amount of RAM
      3. Amount of Free Storage
   2. If your computer does not meet the criteria below, stop this lab and get in contact with me. We may be able to find an alternative for you but this can only be done on a 1 on 1 basis.
   
   **RECOMMENDED SPECIFICATIONS:**
      - CPU: Quad core CPU or Dual Core with base frequency of 2.0GHz
      - RAM: 6GB or More
      - Free Storage: 60GB or more
   
   3. If your computer meets or exceeds the above capabilities, then you need to check if virtualization is enabled. Follow [this guide](https://rapurl.live/vaj) to know if your computer has virtualization enabled and if it does not, use the same guide to learn how to enable it.
   4. You can also use Speccy to find out if your computer has virtualization enabled.
   5. If you are having troubles enabling virtualization, let me know immediately. **DO NOT WAIT FOR THE LAST MINUTE!** This part can take time!
   
> This questions does not require a submission.

<hr>

## Question 2 | Create a Virtual Machine
Before you can create virtual machines, you need to install VirtualBox and VirtualBox Extension Pack. To download Vbox and the extension pack go to:

* [Virtualbox Download Page](https://www.virtualbox.org/wiki/Downloads)

Make sure to select the right installer for your operating system:

![VirtualBox Download page](/assets/vboxdownloadpage.png)

Make sure to install VirtualBox in your host computer. For Windows follow this [video](https://www.youtube.com/watch?v=2lGmCwpFYi8). For macOS follow this [video.](https://www.youtube.com/watch?v=fyx53lJyAoc) Once you have installed VirtualBox, create a virtual machine that meets these specifications:
* OS: Ubuntu 20.04 64Bits [ISO URL](https://ubuntu.com/download/desktop) 
* HDD: 50 GB
* RAM: 2GB
* Video: 64 MB or Higher
* Audio Controller: Disabled (audio won't be needed)
* CPU: 2 Cores
* Add this to description:
  * **Hostname:** cis106vm
  * **User:** student
  * **Password:** pccc
* Shared Clipboard: Enabled - Bidirectional
* Drag n' Drop: Enabled - Bidirectional

![Create VM](/assets/createVM.gif)


> Take a screenshot of your virtual machine settings. You screenshot must show all the settings of your VM.

<hr>

## Question 3 |  Install Ubuntu 20.04
For installing Ubuntu 20.04 in your virtual machine. Make sure to go over the presentation ["Installing Ubuntu 20.04 in VirtualBox"](https://docs.google.com/presentation/d/e/2PACX-1vQVjjsIYAyyDF9-yjC4tpfuKwFz3HPGCTFUH4KkUMeE7Ka7A_TD60kv-bx4wcReZGbqAp_KnbS260oZ/pub?start=false&loop=false&delayms=3000&slide=id.g52c6da636c_0_0) where I have laid out every step explained. I will do it in the video as well but it will benefit you more to read the presentation. 

> Take a screenshot of the last screen before rebooting Ubuntu. 

<hr>

## Question 4 | Post Installation Tasks
These are the tasks that you need to complete before taking the screenshots:
* Update and upgrade
* Add canonical partners in the software settings
* Set update daily reminder to never
* Take snapshot.

> Take a screenshot of your virtual machine showing the snapshot

<hr>

## Question 5 | Complete the following tasks
* Install the guest additions for virtualbox. Use this command:
```
sudo apt install build-essential linux-headers-$(uname -r) \ 
virtualbox-guest-additions-iso virtualbox-guest-x11 -y
```
* Reboot the VM
* Go Full Screen
* Using the software center, Install VS Code
  * Install all the extensions of VS Code
  * Live Server
  * Markdown All in one
  * Markdown Preview Enhanced
  * Markdown PDF
  * Markdown TOC
  * Markdown Converter
  * PDF Preview
  * Code Spell Checker
* Using the terminal, remove all unnecessary applications from Ubuntu 20.04. Use this command:
```
sudo apt purge apport aisleriot gnome-mahjongg gnome-sudoku gnome-mines  -y
```
* Using the software center install the following applications: 
  * flameshot 
  * vlc 
  * deluge 
  * geany 
  * tilix 
* Using the terminal install the following applications: gcc make perl nemo git python3-pip gnome-tweaks curl snapd flatpak gnome-software-plugin-flatpak gnome-software-plugin-snap wget tree  htop net-tools vim neofetch caffeine samba smbclient cifs-utils. You can use the following command:
```
sudo apt install gcc make perl nemo git python3-pip \
 gnome-tweaks curl ubuntu-restricted-extras ubuntu-restricted-addons \
 snapd flatpak gnome-software-plugin-flatpak gnome-software-plugin-snap \
 wget tree  htop net-tools vim neofetch caffeine samba smbclient -y
```
* Replace the default screenshot tool with flameshot. Use this command:
```
curl https://raw.githubusercontent.com/ra559/cis106/main/_guides/replacewithflameshot.sh | bash
```
* Setup git and download your repository to your ubuntu machine.
  * Open a terminal and run the following commands:
    * Set your username:  `git config --global user.name 'your username here'`
    * Set your email address: `git config --global user.email 'your email here'`
    * Setup SSH authentication
      * Generate an ssh key: `ssh-keygen -t ed25519 -C "your_email@example.com"` This creates a new SSH key, using the provided email as a label. When you're prompted to: `"Enter a file in which to save the key,"` press Enter. This accepts the default file location. At the prompt, to type a secure passphrase, press enter for no passphrase. If you want to use a passphrase, go ahead as it provides an extra layer of security. However, for this course you do  not need to add a passphase. 
      * Use the following command to see your public ssh key: `cat ~/.ssh/id_ed25519.pub` copy the entire output of this command to the clipboard.
      * In your github page, go to `settings` > `SSH and GPG Keys` Here add your ssh key that you copied to the clipboad in the step prior. Type `yes` (the whole word) and press enter and you are done
      * Test you ssh connection by using this command: `ssh -T git@github.com`
    * Clone your github repository. Use these commands:
```
cd
git clone git@github.com:yourGithub-User-Name-Here/your-Repository-Name-Here
```
* Open a file manager and go to the repository you cloned (the folder) and organize the files as I do in the video.
* open VS Code and open your repository. Open a terminal in VS Code and run the following commands:
```
git add .
git commit -m "Files organized"
git push
```
* Open your github repository and your web browser and noticed how the files are now organized as they are in your computer.

## Time to submit this lab.
* Copy the screenshots you took from your windows computer to your vm by draging and dropping the files in your respository inside your ubuntu vm.
* Place those files in a folder called: `lab2`
* Inside the lab2 folder create a new file named: `lab2.md`
* Open your repository in VS code and complete the document lab2.md with your screenshots
* Save the file. 
* Convert the file to PDF.
* Commit and push the changes to github. Use this command: `git add .; git commit -m "Lab2 finished"; git push`


## What will you Submit:
* The URL to the lab2.md file and a pdf file of lab2.
* Dont' forget to take a snapshot of your virtual machine.
  * Turn off your vm
