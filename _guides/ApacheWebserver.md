---
title: Setting up a web server in Debian
layout: page
---

# {{page.title}}

## Requirements
* Hypervisor: VirtualBox  
* Host OS: Windows 11/10 - MacOS (for Intel CPUs)
* Guest OS: Debian 
* Server Application: Apache
* Other:
  * SSH - For remote management of the server virtual machine

### Host Machine System Requirements
* **CPU**: Quad core CPU or higher 
* **RAM**: 8GB or More 
* **Free Storage**: 60GB or more

### Guest Machine System Requirements
* **CPU**: 1 Core
* **RAM**: 1 GB
* **Free Storage**: 20 GB

## Step 1: Install VirtualBox

1. Go to [virtualbox.org](https://www.virtualbox.org/) and download the installer for your operating system:
   1. Click on the Download button
   2. On the VirtualBox Platform packages, select your Operating System
   3. Download the Extension Pack by clicking on the "Accept and Download" button
2. Download the [Microsoft Visual C++ Redistributable](https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170)
3. Install the Microsoft Visual C++ Redistributable
4. Install VirtualBox
5. Install The VirtualBox Extension pack

### Screenhots
![VirtualBox](https://docs.google.com/drawings/d/e/2PACX-1vQQfiDo_On7FgpcNt2wlEG_9XGnNgWFwqX28YbbSnQGDBZ0D_cdDuxk_1R_z1HP3sR4JsHMAhadyIcg/pub?w=960&h=720)

<br>

![Microsoft Visual C++](https://docs.google.com/drawings/d/e/2PACX-1vTiCrPwstw2j6puZ-69aeXSI-HKAH23LXdsONySvSd4uj4JKhXIMoSUbtufplP-8jgFL3KLfkWA2kvv/pub?w=960&h=720)


## Step 2: Create a Debian Virtual Machine
### Files to download:
* [Debian ISO](https://www.debian.org/)
  * Got to [Debian.org](https://www.debian.org/) and click on download

1. Create a virtual machine where Debian will be installed.
   1. Follow the steps in this presentation: 

## Step 3: Install Debian
2. Turn on the virtual machine and install Debian.
   1. Follow the steps in this presentation: 

## Step 4: Update
sudo apt update && sudo apt upgrade -y

## Step 5: Configure the server

1. Check that Apache is enabled and running. Use the following command:
   1. `systemctl status apache2`
2. Check that SSH is enabled and running. Use the following command:
   1. `systemctl status ssh`
3. Install UFW. Use the following command:
   1. `sudo apt install ufw`
4. Enable UFW. Use the following command:
   1. `sudo ufw enable`
5. Configure UFW to allow http(s) and ssh traffic
   1. `sudo ufw allow 'WWW Full'`
   2. `sudo ufw allow 'Apache'`

## Step 6: Check if the web server is working
At this point you should be able to see the default apache index.html site. 

1. Get the IP address of your virtual machine: `hostname -I`
2. Open a web browser in your host machine and type the IP address in the URL bar.

![alt text](/assets/guides/webserver/apacheindex.png)

## Step 6: Remote Access to the server
1. In your host OS, you will need to open a terminal application and use the SSH command. 
2. Here is the general formula of the ssh command:

![ssh syntax](https://rapurl.live/7ge)<br>

From this point on, we can manage the server from our Host OS

## Step 7: Adding content to our web server

sudo apt update && sudo apt upgrade
sudo apt install ufw
sudo ufw app list
sudo ufw allow 'WWW Full'
sudo ufw allow 'OpenSSH'
sudo ufw enable
sudo chown -R rap:www-data /var/www/html
sudo chmod -R 775 /var/www/html

Upload files to the web server 

