---
layout: post
title: Lab 2 - Installing Ubuntu 22.04 in VirtualBox.
---
# Lab 2 - Installing Ubuntu 20.04 in VirtualBox.
* *Video [here](https://youtu.be/AJ-Qgw7OjcA)*


## Presentations:
* [The basics of Virtualization](https://rapurl.live/est)
* [Using VirtualBox](https://rapurl.live/t0h)
* [Installing Ubuntu 20.04 in VirtualBox](http://bit.ly/2WR4i0o)


## Requirements
* Please go over the presentations before you do this lab. It will give you an idea of what we are trying to do here. 
* Please go slow and take your time to do this lab. It is long but it is the core of this course. 
* If you do not have a computer that meets the recommended criteria, **please reach out to me and stop doing this lab.**
* Be aware that the presentations use an earlier version of Ubuntu but the changes are not that significant and you should be able to follow along.

> **NOTE!** <br> Only start this lab after you have watched the videos or read the presentations.


## Question 1 | Enable virtualization
Before you can create virtual machines, you need to know if your computer can virtualize. There are a couple of steps you need to follow to find out the answer to this question:

### MacOS users
1. For those using MacOS, if you have a recent Apple computer (M1 CPU), you will not be able to use Virtualbox, there is another hypervisor you can use but I have not been able to test it since I do not own an M1 Mac where I can test it. You can watch and follow this [tutorial](https://www.youtube.com/watch?v=hnwK-nkXolc). Again, I have not tested this option therefore you are on your own.
2. If you have an older Mac (Inter Version), you can user virtualbox as it is fully supported. Just make sure your Mac has enough resources to run virtual machines. For intel Macs, virtualization is already enabled and you can just follow this guide/video.


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
   4. You can also use [Speccy](https://www.ccleaner.com/speccy) to find out if your computer has virtualization enabled.
   5. If you are having troubles enabling virtualization, let me know immediately. **DO NOT WAIT FOR THE LAST MINUTE!** This part can take time!
   
> This question does not require a submission.

<hr>

## Question 2 | Create a Virtual Machine
Before you can create virtual machines, you need to install VirtualBox and VirtualBox Extension Pack. To download Vbox and the extension pack go to:

* [Virtualbox Download Page](https://www.virtualbox.org/wiki/Downloads)

Make sure to select the right installer for your operating system:

![VirtualBox Download page](/assets/vboxdownloadpage.png)

Make sure to install VirtualBox in your host computer. For Windows follow this [video](https://www.youtube.com/watch?v=2lGmCwpFYi8). For macOS follow this [video.](https://www.youtube.com/watch?v=fyx53lJyAoc) Once you have installed VirtualBox, create a virtual machine that meets these specifications:

> * OS: Ubuntu 20.04 64Bits [ISO URL](https://ubuntu.com/download/desktop) 
> * HDD: 50 GB
> * RAM: 2GB
> * Video: 64 MB or Higher
> * Audio Controller: Disabled (audio won't be needed)
> * CPU: 2 Cores
> * Add this to description:
  > * **Hostname:** cis106vm
  > * **User:** student
  > * **Password:** pccc
> * Shared Clipboard: Enabled - Bidirectional
> * Drag n' Drop: Enabled - Bidirectional

![Create VM](/assets/createVM.gif)


> Take a screenshot of your virtual machine settings. You screenshot must show all the settings of your VM.

<hr>

## Question 3 |  Install Ubuntu 22.04
For installing Ubuntu 22.04 in your virtual machine. Make sure to go over the presentation ["Installing Ubuntu 20.04 in VirtualBox"](https://shorturl.at/hlor0) where I have laid out every step explained. I will do it in the video as well but it will benefit you more to read the presentation. 

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
1. Install the guest additions for virtualbox. Run these commands:
  * `sudo apt update; sudo apt upgrade -y`
  * `sudo apt install build-essential linux-headers-$(uname -r) -y`
  * `sudo apt install virtualbox-guest-additions-iso virtualbox-guest-x11 -y`

2. Reboot the VM
3. Go Full Screen
4. Disable animations. Run this command on your terminal: <br> `gsettings set org.gnome.desktop.interface enable-animations false` <br>
5. Using the software center, Install VS Code
  * Install all the extensions of VS Code
  * Live Server
  * Markdown All in one
  * Markdown Preview Enhanced
  * Markdown PDF
  * Markdown TOC
  * Markdown Converter
  * PDF Preview
  * Code Spell Checker
6. Using the terminal, remove all unnecessary applications from Ubuntu 22.04. Use this command:
<br> `sudo apt purge apport aisleriot gnome-mahjongg gnome-sudoku gnome-mines  -y`<br> 

7. Using the software center install the following applications: 
  * flameshot 
  * vlc 
  * deluge 
  * geany 
  * tilix 

  > In the terminal you can use these command: <br> `sudo apt install flameshot vlc deluge geany tilix -y`<br> 

8. Using the terminal install the following applications: gcc make perl nemo git python3-pip gnome-tweaks curl snapd flatpak gnome-software-plugin-flatpak gnome-software-plugin-snap wget tree  htop net-tools vim neofetch caffeine samba smbclient cifs-utils. You can use the following commands:

  * `sudo apt install gcc make perl nemo git python3-pip -y`
  * `sudo apt install curl wget tree  htop net-tools vim -y`
  * `sudo apt install neofetch caffeine samba smbclient -y`
  * `sudo apt install gnome-tweaks ubuntu-restricted-extras ubuntu-restricted-addons -y`
  * `sudo apt install snapd flatpak gnome-software-plugin-flatpak gnome-software-plugin-snap  -y`

9. Replace the default screenshot tool with flameshot. Use this command:
  * 
 

10. Setup git and download your repository to your Ubuntu machine.
  * Sign in to your github account.
  * Open a terminal and run the following commands:
    * Set your username: <br> `git config --global user.name 'your username here'` <br>
    * Set your email address: <br> `git config --global user.email 'your email here'` <br>
    * Setup SSH authentication
      * Generate an ssh key: <br> `ssh-keygen -t ed25519 -C "your_email@example.com"` <br> This creates a new SSH key, using the provided email as a label. When you're prompted to:<br> `"Enter a file in which to save the key,"` <br>press Enter. This accepts the default file location. At the prompt, to type a secure passphrase, press enter for no passphrase. If you want to use a passphrase, go ahead as it provides an extra layer of security. However, for this course you do  not need to add a passphase. 
      * Use the following command to see your public ssh key: <br> `cat ~/.ssh/id_ed25519.pub` <br> copy the entire output of this command to the clipboard.
      * In your github page, go to `settings` > `SSH and GPG Keys` Here add your ssh key that you copied to the clipboard in the step prior. Type `yes` (the whole word) and press enter and you are done
      * Test you ssh connection by using this command: <br>`ssh -T git@github.com`<br>
    * Clone your github repository. Use these commands: <br>`cd; git clone git@github.com:yourGithub-User-Name-Here/your-Repository-Name-Here`<br>
    * Open a file manager and go to the repository you cloned (the folder) and organize the files as I do in the video.
    * Open VS Code and open your repository folder. 
    * Open a terminal in VS Code and run the following commands: <br>`git add .; git commit -m "Files organized"; git push`<br>
* Open your github repository and your web browser and noticed how the files are now organized as they are in your computer.

<hr>

## Time to submit this lab.
* Inside your repository folder, create a new folder called `lab2`
* Copy the screenshots you took from your windows computer to your vm by dragging and dropping the files in the newly created `lab2` folder
* Place those files in a folder called: `lab2`
* Inside the lab2 folder create a new file named: `lab2.md`
* Open your repository in VS code and complete the document `lab2.md` with your screenshots
* Save the file. 
* Convert the file to PDF.
* Commit and push the changes to github. Use this command: <br>`git add .; git commit -m "Lab2 finished"; git push`<br>


## What will you Submit:
* The URL to the lab2.md file and a pdf file of lab2.
* Don't forget to take a snapshot of your virtual machine.
* Turn off your Virtual Machine properly. Avoid closing the Virtual Machine Window as this can break the virtual machine.
