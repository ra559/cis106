# Ubuntu Setup Cloud Machine
---

## Virtual Machine Specifications
* OS: Ubuntu 20.04 64 Bits [ISO URL](https://ubuntu.com/download/desktop) 
* HDD: 50 GB
* RAM: 4GB
* Video: 128 MB or Higher
* Audio Controller: Disabled (if possible)
* CPU: 2 Cores
* Hostname: cis106vm
* User: student
* Password: pccc
* Shared Clipboard: Enabled - Bidirectional (For Virtualbox setting only N/A cloud) 


## During Installation Settings
* Keyboard layout: English US
* Installation type: Normal with third party software, Erase disk 
* Timezone: NY
* User Details
  * Name: Student
  * Hostname: cis106vm
  * Username: Student
  * Password: pccc
  * Require login (Important)

## Post Installation Settings
* Update and upgrade
* Remove unnecessary software
* Essential software install
* Disable animations
* Change Default File Manager: Nemo
* Change Default screenshot tool with flameshot
* Enable Dark Theme
* One liner to complete these tasks: 
`sudo apt install curl -y; curl https://raw.githubusercontent.com/ra559/cis106/main/guides/oneliner.sh | bash`
* Install restricted extras: `sudo apt install ubuntu-restricted-extras ubuntu-restricted-addons -y` 

### VS Code setup
1. Install VS Code Extensions:
   1.  Live Server
   2.  Markdown All in one
   3.  Markdown Preview Enhanced
   4.  Markdown PDF
   5.  Markdown TOC
   6.  Markdown Converter
   7.  PDF Preview
   8.  Code Spell Checker

## Change Desktop Environment
* Replace GDM with Lightdm: `sudo apt install lightdm -y`
* Set default Desktop Environment to Gnome Flashback

![Gnome Classic](../imgs/setGnomeClassic.gif)

## Install Guest Additions
This step is for VirtualBox only. Skip if using any other hypervisor

![Guest additions](../imgs/install%20guest%20additions.gif)

## Virtual machine ready to use

[Download here](https://mega.nz/file/GVZRzaKR#AwSoUVgodyMLi08lu2sqCENRGoxfTGvbA4e8MS91oLU)





