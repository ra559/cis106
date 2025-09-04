---
title: Setting up a web server in Debian
layout: page
---

# {{page.title}}

## READ ME
This guide assumes the following:
1. You have installed Virtualbox 
2. You know how to create a Debian virtual machine

If you do have not installed Virtualbox, or do not know how to create a virtual machine, follow steps 1, 2 and 3 of Lab 2. This guide starts from the point of creating a Debian 13 Web Server Virtual Machine.

<hr>

## Requirements
* Hypervisor: VirtualBox  
* Host OS: Windows 11/10 or MacOS (Intel/Apple Silicon)
* Guest OS: Debian 13 (NO GUI)
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

<hr>

## Step 1: Create a virtual machine

1. 

<hr>

## Step 2: Create a Debian Virtual Machine
### Files to download:
* Download the Debian ISO. Which Debian ISO Should You Download?


| Your Computer Type        | CPU Type               | ISO File to Download              | Download Link                                                                                            |
| ------------------------- | ---------------------- | --------------------------------- | -------------------------------------------------------------------------------------------------------- |
| **Windows 11/10**         | Intel or AMD (x86\_64) | `debian-13.0.0-amd64-netinst.iso` | [Download](https://www.debian.org/) -> Click the black **Download** button                                |
| **macOS (Intel)**         | Intel (x86\_64)        | `debian-13.0.0-amd64-netinst.iso` | [Download](https://www.debian.org/) -> Click the black **Download** button                                |
| **macOS (Apple Silicon)** | ARM (arm64)            | `debian-13.0.0-arm64-netinst.iso` | [Direct Link](https://cdimage.debian.org/debian-cd/current/arm64/iso-cd/debian-13.0.0-arm64-netinst.iso) |


1. Create a virtual machine where Debian will be installed that meets the following specifications:
   1. RAM: 1GB
   2. CPU: 1
   3. Storage: 20GB

2. Follow the steps in this [presentation](https://docs.google.com/presentation/d/e/2PACX-1vSL0uIh10efjylcStOP8r9AxUlq1mZ-mQ_ojA4ESu7eLgMJOdYlOpbXdplPlA6gIiIrTU4LS_6dCV27/pub?start=false&loop=false&delayms=3000&slide=id.p) as a general guide and adjust the settings accordingly.


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

