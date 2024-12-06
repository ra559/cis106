
# {{page.title}}


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




### Install and remove software
1. Remove the following applications as they will not be needed. You can run these command on the terminal:

```bash
sudo apt purge apport aisleriot gnome-mahjongg gnome-sudoku gnome-mines  -y
sudo apt clean
sudo apt autoclean
```


### Disable animations
1. Open a terminal and run this command: <br>`gsettings set org.gnome.desktop.interface enable-animations false`
2. This will disable all the fancy desktop effects making the vm feel snappier. 

<p align="center" style="display:block"><img src="/assets/lab2/animations_off.gif"/></p>

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


## Videos
* [Part 1 Virtualization](https://youtu.be/whXYdsRrTG8)
* [Part 2 Virtualbox](https://youtu.be/M-81JJp_xDg)
* [Part 3 Ubuntu 22.04](https://youtu.be/aaR2SJl6iV0)
* [Part 4 Post Installation](https://youtu.be/lzL8TYt4iNo)
* [Part 5 VS Code](https://youtu.be/B3HtHqsZfqo)
* [Part 6 Git & Github](https://youtu.be/ju1GgANJfnU)
* [Part 7 Time to submit](https://youtu.be/dwXEI7HKtjc)

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


## Question 1 | Enable virtualization
Before you can create virtual machines, you need to know if your computer can virtualize. There are a couple of steps you need to follow to find out the answer to this question:

### MacOS users
* For those using MacOS, if you have a recent Apple computer (M1 CPU), you will not be able to use Virtualbox, there is another hypervisor you can use but I have not been able to test it since I do not own an M1 Mac where I can test it. You can watch and follow this [tutorial](https://www.youtube.com/watch?v=hnwK-nkXolc). Again, I have not tested this option therefore you are on your own.

  <p align="center" style="display:block"><img src="/assets/warning-icon.png" width="50" /></p>

  > ***from past semester experience, I cannot recommend MacOS with M1 CPUs. The experience is very poor and students have encountered too many problems at the level where they cannot complete the work on time. Proceed at your own risk***
* If you have an older Mac (Inter Version), you can use virtualbox as it is fully supported. Just make sure your Mac has enough resources to run virtual machines. For intel Macs, virtualization is already enabled and you can just follow this guide/video.


### Windows Users   
Follow these steps:
   1. Find out what hardware your computer has:
      1. CPU and number of cores
      2. Amount of RAM
      3. Amount of Free Storage
   2. If your computer does not meet the criteria below, stop this lab and get in contact with me. We may be able to find an alternative for you but this can only be done on a 1 on 1 basis.
   
   **REQUIRED SPECIFICATIONS:**
      - CPU: Quad core CPU
      - RAM: 8GB or More
      - Free Storage: 60GB or more
  
  <p align="center" style="display:block"><img src="/assets/warning-icon.png" width="50" /></p>

 > If you do not meet these requirements but your computer is close enough, you may be able to complete the course material. The downside is that your computer will be extremely slow.
   
If your computer meets or exceeds the above capabilities, then you need to check if virtualization is enabled. Follow [this guide](https://rapurl.live/vaj) to know if your computer has virtualization enabled and if it does not, use the same guide to learn how to enable it. You can also use [Speccy](https://www.ccleaner.com/speccy) to find out if your computer has virtualization enabled.

If you are having troubles enabling virtualization, let me know immediately. **DO NOT WAIT FOR THE LAST MINUTE!** This part can take time!
   
Take a screenshot showing your computer specifications and a screenshot of the task manager showing virtualization has been enabled. MacOS user should only take a screenshot of the computer specs. Here is an example:

| Computer specs                      | Virtualization                              |
| ----------------------------------- | ------------------------------------------- |
| ![specs](/assets/windowsspecs.jpeg) | ![virt](/assets/taskmanagervirtenabled.png) |

<hr>

## Question 2 | Create a Virtual Machine
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


> Take a screenshot of your virtual machine settings. You screenshot must show all the settings of your VM. Here is a proper example:

| virtual machine settings                |
| --------------------------------------- |
| ![](/assets/virtualmachinesettings.png) |

<hr>

## Question 3 |  Install Ubuntu 22.04
* Go over the presentation ["Installing Ubuntu 20.04 in VirtualBox"](https://shorturl.at/hlor0). There, I have laid out every step with proper explanations. The presentation is using an earlier version of Virtualbox and Ubuntu but the differences are not very significant. I will do it in the video as well but it will benefit you to read the presentation. 

> Take a screenshot of the last screen before rebooting Ubuntu. If you missed it, take a screenshot of the welcome message or the desktop on first boot.

<hr>

## Question 4 | Post Installation Tasks
These are the tasks that you need to complete before taking the screenshots:
* Update and upgrade
* Add canonical partners in the software settings
* Set update daily reminder to never
* Change Wayland for X.org
* Take snapshot.
* Install the guest additions for virtualbox.
  * Run this command: <br> `sudo apt install build-essential linux-headers-$(uname -r) -y` <br>
  * Use this [video](https://youtu.be/IuqJxbYuU-Y) to install guest additions.
* Reboot the VM
* Go Full Screen
* Disable animations. Run this command on your terminal: <br> `gsettings set org.gnome.desktop.interface enable-animations false` <br>
* Turn your virtual machine off

> Take a screenshot of your virtual machine showing the snapshot. Here is an example:

![vm snapshot](/assets/snapshot.png)<br>

<hr>

## Question 5 | Complete the following tasks


1. Download and install [VS Code](https://code.visualstudio.com/) and then Install all the extensions of VS Code
  * [Live Server by Ritwick Dey](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer&ssr=false#review-details)
  * [Markdown All in one by Yu Zhang](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one&ssr=false#review-details)
  * [Markdown Preview Enhanced by Yiyi Wang](https://marketplace.visualstudio.com/items?itemName=shd101wyy.markdown-preview-enhanced)
  * [Markdown PDF by yzane](https://marketplace.visualstudio.com/items?itemName=yzane.markdown-pdf&ssr=false#review-details)
  * [PDF Preview by Analytic Signal Limited](https://marketplace.visualstudio.com/items?itemName=analytic-signal.preview-pdf)
  * [Code Spell Checker by Street Side Software](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)


2. Using the terminal, remove all unnecessary applications from Ubuntu 22.04. Use this command:

```
sudo apt purge apport aisleriot gnome-mahjongg gnome-sudoku gnome-mines  -y
```

3. Using the software center install the following applications: 
  * flameshot 
  * vlc 
  * deluge 
  * geany 
  * tilix 

> In the terminal you can use this command: <br> `sudo apt install flameshot vlc deluge geany tilix -y`<br> 

4. Using the terminal install the following applications: gcc make perl nemo git python3-pip gnome-tweaks curl snapd flatpak gnome-software-plugin-flatpak gnome-software-plugin-snap wget tree  htop net-tools vim neofetch caffeine samba smbclient cifs-utils. You can use the following commands:

  * `sudo apt install gcc make perl nemo git python3-pip -y`
  * `sudo apt install curl wget tree  htop net-tools vim -y`
  * `sudo apt install neofetch caffeine samba smbclient gnome-tweaks -y`
  * `sudo apt install snapd flatpak gnome-software-plugin-flatpak gnome-software-plugin-snap  -y`
  * `sudo apt install ubuntu-restricted-extras ubuntu-restricted-addons -y`

5. Replace the default screenshot tool with flameshot.

### Setup Git and download your repository to your Ubuntu machine.
1. Sign in to your Github account. 
2. Open a terminal and run the following commands:
3. Set your username: <br> `git config --global user.name 'your username here'` <br>
4. Set your email address: <br> `git config --global user.email 'your email here'` <br>
5. Setup SSH authentication
6. Generate an ssh key: <br> `ssh-keygen -t ed25519 -C "your_email@example.com"` <br> This creates a new SSH key, using the provided email as a label. When you're prompted to:<br> `"Enter a file in which to save the key,"` <br>press Enter. This accepts the default file location. At the prompt, to type a secure passphrase, press enter for no passphrase. If you want to use a passphrase, go ahead as it provides an extra layer of security. However, for this course you do  not need to add a passphase. 
7. Use the following command to see your public ssh key: <br> `cat ~/.ssh/id_ed25519.pub` <br> copy the entire output of this command to the clipboard.
8. In your github page, go to `settings` > `SSH and GPG Keys` Here add your ssh key that you copied to the clipboard in the step prior. Type `yes` (the whole word) and press enter and you are done
9. Test you ssh connection by using this command: <br>`ssh -T git@github.com`<br>
10. Clone your github repository. Use these commands: <br>`cd; git clone git@github.com:yourGithub-User-Name-Here/your-Repository-Name-Here`<br>
11. Open a file manager and go to the repository you cloned (the folder) and organize the files as I do in the video.
12. Open VS Code and open your repository folder. 
13. Open a terminal in VS Code and run the following commands: <br>`git add .; git commit -m "Files organized"; git push`<br>
14. Open your github repository and your web browser and noticed how the files are now organized as they are in your computer.

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
* Turn off your Virtual Machine properly. Avoid closing the Virtual Machine Window as this can break the virtual machine.
* Take a snapshot of your virtual machine.


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

