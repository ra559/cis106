# Lab 2: Installing Ubuntu 20.04 in VirtualBox.

## Presentations:
* [The basics of Virtualization](https://docs.google.com/presentation/d/e/2PACX-1vSwjKH4jswd7r2OV_C-b4K1LJlAhdScHVvgDAtZgb1J6kpPoYkQIxZpjYqg_4bbPClbh85VVvbKzJV1/pub?start=false&loop=false&delayms=3000&slide=id.p1)
  * [Video here](https://youtu.be/_HnwxnvS-8w)
* [Using VirtualBox](https://docs.google.com/presentation/d/e/2PACX-1vTwJsImCvHoM2mQX6c5E2J11NPKGE90ip6kWV_LMPDCKQTG1QtcKTUGmsqkV1vKXdCUFtz66qan4PjJ/pub?start=false&loop=false&delayms=3000&slide=id.p)
* [Installing Ubuntu 20.04 in VirtualBox](https://docs.google.com/presentation/d/e/2PACX-1vQVjjsIYAyyDF9-yjC4tpfuKwFz3HPGCTFUH4KkUMeE7Ka7A_TD60kv-bx4wcReZGbqAp_KnbS260oZ/pub?start=false&loop=false&delayms=3000&slide=id.g52c6da636c_0_0)

## Requirements
* Please go over the presentations before you do this lab. It will give you an idea of what we are trying to do here.
* Please go slow and take your time to do this lab. It is long but it is the core of this course.

## Question 1 | Enable virtualization
Before you can create virtual machines, you need to know if your computer can virtualize. There are a couple of steps you need to follow to find out the answer for this question:

1. For those using MacOS, if you have a recent Apple computer, chances are that you can virtualize with no problem. Once you have installed VirtualBox, make sure to install the Extension Pack and move along to question 2. For those using a Macbook with only 2 cores and 4GB of RAM, know that your computer will be very slow for this class and you may want to consider using an alternative. Contact me if this is your case. 
   
2. For those using Windows, follow these steps:
   1. Find out what hardware does your computer have:
      1. CPU and number of cores
      2. Amount of RAM
      3. Amount of Free Storage
   2. If your computer does not meet this criteria, stop this lab and get in contact with me. We may be able to find an alternative for you but this can only be done on a 1 on 1 basis.
   
   **SPECIFICATIONS:**
      1. CPU: Quad core CPU or Dual Core with base frequency of 2.0GHz
      2. RAM: 6GB or More
      3. Free Storage: 60GB or more
   
   1. If your computer meets or exceeds the above capabilities, then you need to check if virtualization is enabled. Follow [this guide](https://support.bluestacks.com/hc/en-us/articles/115003174386-How-to-enable-Virtualization-VT-on-Windows-10-for-BlueStacks-4) to know if your computer has virtualization enabled and if it does not, use the same guide to learn how to enable it.
   
   2. If you are having troubles enabling virtualization, let me know immediately. **DO NOT WAIT FOR THE LAST MINUTE!** This part can take time!

## Question 2 | Create Virtual Machine
Before you can create virtual machines, you need to install VirtualBox and VirtualBox Extension Pack. To download Vbox and the extension pack go to:

* [Virtualbox Download Page](https://www.virtualbox.org/wiki/Downloads)

Make sure to select the right installer for your operating system:

![VirtualBox Download page](../imgs/vboxdownloadpage.png)

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

![Create VM](../imgs/createVM.gif)

Take a screenshot of your virtual machine settings.

**Place your screenshot here**

## Question 3 |  Install Ubuntu 20.04
Follow the [Ubuntu-vm-setup](../guides/Ubuntu-vm-setup.md) for installing Ubuntu 20.04 in your virtual machine. Make sure to go over the presentation "Installing Ubuntu 20.04 in VirtualBox" where I have laid out every step explained. I will do it in the video as well but it will benefit you more to read the presentation. 

Take a screenshot of the last screen before rebooting Ubuntu.

**Place your screenshot here**


## Question 4 | Prepare Ubuntu 20.04 
Follow the [Ubuntu-vm-setup](../guides/Ubuntu-vm-setup.md) for a the post installation configuration. Once you have completed the installation of all the applications and have switched your desktop environment, take a screenshot of virtual machine.

These are the tasks that you need to complete before taking the screenshots:
* Update and upgrade
* Remove unnecessary software
* Essential software install
* Disable animations
* Change Default File Manager: Nemo
* Change Default screenshot tool with flameshot
* Enable Dark Theme (optional)
* Change the desktop environment

**Place your screenshot here**


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

Take a screenshot of your virtual machine with VS Code running.

**Place your screenshot here**