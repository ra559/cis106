---
layout: post
title: Lab 2 - Installing Ubuntu 20.04 in VirtualBox.
---

## Presentations:
* [The basics of Virtualization](https://rapurl.live/est)
* [Using VirtualBox](https://rapurl.live/t0h)
* [Installing Ubuntu 20.04 in VirtualBox](http://bit.ly/2WR4i0o)


## Requirements
* Please go over the presentations before you do this lab. It will give you an idea of what we are trying to do here. 
* Please go slow and take your time to do this lab. It is long but it is the core of this course. 
* For those who do not have a computer powerful enough, you have a separate assignment to complete.

## NOTE! 
Only start this lab after you have watched the videos or read the presentations.


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

---
## Question 3 |  Install Ubuntu 20.04
Follow the [Ubuntu-vm-setup](../guides/Ubuntu-vm-setup.md) for installing Ubuntu 20.04 in your virtual machine. Make sure to go over the presentation "Installing Ubuntu 20.04 in VirtualBox" where I have laid out every step explained. I will do it in the video as well but it will benefit you more to read the presentation. 

> Take a screenshot of the last screen before rebooting Ubuntu. 

---
## Question 4 | Prepare Ubuntu 20.04 
Follow the [Ubuntu-vm-setup guide](../guides/Ubuntu-vm-setup.md) for a the post installation configuration. Once you have completed the installation of all the applications and have switched your desktop environment, take a screenshot of virtual machine.

These are the tasks that you need to complete before taking the screenshots:
* Update and upgrade
* Remove unnecessary software
* Essential software installation
* Disable animations
* Change Default File Manager: Nemo
* Change Default screenshot tool with flameshot
* Enable Dark Theme (optional)
* Change the desktop environment


---
## Question 5 | Setup VS Code, Git and Github
Vs Code was already installed in the previous question but the extensions have not been installed. Install all of these extensions:
* Live Server
* Markdown All in one
* Markdown Preview Enhanced
* Markdown PDF
* Markdown TOC
* PDF Preview
* Markdown Converter
* Code Spell Checker

Once you have completed these steps, follow the guide: ['How to Setup Git and Github in Ubuntu 20.04'](../guides/Ubuntu%20Github%20Setup.md) to install and setup Git and Github in your virtual machine. This is the environment that we are going to use from this point on. Windows/MacOS will no longer be used for completing labs or any other assignment.

> Take a screenshot of your virtual machine with VS Code running.

> **ADVICE!**
> Take a snapshot of your system. This will come handy in the case that you break your system.
## What will you Submit:
* Create a markdown document with the following:
```
# Question 2 Screenshot
![](url to screenshot here)
# Question 3 Screenshot
![](url to screenshot here)
# Question 4 Screenshot
![](url to screenshot here)
# Question 5 Screenshot

Assignment description [here](https://raw.githubusercontent.com/ra559/cis106/main/labs/lab2.md)
```
* Upload this document to Github and submit the URL in Blackboard. 
   
