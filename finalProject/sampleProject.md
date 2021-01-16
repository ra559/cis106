# Setup an FTP Server

## Table of Content
<!-- TOC -->autoauto- [Setup an FTP Server](#setup-an-ftp-server)auto    - [Table of Co<!-- TOC -->autoauto- [Setup an FTP Server](#setup-an-ftp-server)auto    - [Table of Content](#table-of-content)auto    - [Hardware Specifications](#hardware-specifications)auto    - [Software Specifications](#software-specifica<!-- TOC -->autoauto- [Setup an FTP Server](#setup-an-ftp-server)auto    - [Table of Content](#table-of-content)auto    - [Hardware Requirements](#hardware-requirements)auto    - [Software Specifications](#software-specifications)auto    - [Setup Operating System](#setup-operating-system)auto        - [Connecting the Raspberry Pi to the Network.](#connecting-the-raspberry-pi-to-the-network)auto        - [Connect to the Pi](#connect-to-the-pi)auto    - [Install FTP Server](#install-ftp-server)auto    - [Take FTP Server online](#take-ftp-server-online)auto    - [Challenges](#challenges)auto    - [Take this project further](#take-this-project-further)autoauto<!-- /TOC -->tions)auto    - [Setup Operating System](#setup-operating-system)auto    - [Install FTP Server](#install-ftp-server)auto    - [Take FTP Server online](#take-ftp-server-online)auto    - [Challenges](#challenges)auto    - [Take this project further](#take-this-project-further)autoauto<!-- /TOC -->ntent](#table-of-content)autoauto<!-- /TOC -->


## Hardware Requirements
- Raspberry Pi 3b+ or better
- Micro SD Card 64GB Class 10 (or any other size larger than 16GB)
- Monitor for initial setup only
- keyboard and mouse also for initial setup
- Raspberry pi power supply

You can buy a Raspberry Pi 3B+ starter kit from [Amazon](https://rebrand.ly/fcef9) or [Microcenter.](https://rebrand.ly/gzyz0) Make sure that your starter kit contains a power supply, microSD card and microSD card USB Adapter if your computer does not have an SD reader. 

Since the FTP Server will be used to store files that are at least 2GB, it is recommended that you either select a big SD Card or attach an external storage to your Raspberry Pi via the USB port. In the case of this project, I will be using the SD Card. If you are setting this up for an environment where performance matters a lot, you should use a Raspberry Pi 4 and an SSD for storage.

## Software Specifications
Raspberry Pi OS is the default operating system (Linux Distribution) for the Raspberry Pi. Raspberry Pi OS, previously known as Raspbian, is developed by the Raspberry Pi foundation and it is based on Debian. This means that this guide can be followed on any computer running Debian or Ubuntu.

SSH or Secured Shell is a network protocol that allows us to create a secured connection between two computers. We will be using SSH to manage our Pi, install software, and setup a secure FTP server. 

SFTP is a secure file transfer protocol. Basically, FTP over SSH. 


## Setup Operating System
First, make sure to assemble the Raspberry Pi. This step will vary depending on the Pi kit that you buy but all kits come with instructions that you can follow. Once you have assembled the Raspberry Pi, connect the raspberry Pi to the monitor and connect the,keyboard and mouse. Do not connect the Raspberry Pi to the electricity since we have not setup the microSD card yet.

Insert image here

To install Raspberry Pi OS in the microSD card we are going to use a software called Raspberry Pi Imager which is provided by the Raspberry Pi Foundation. You can download the software from [here.](https://www.raspberrypi.org/software/). Once you have downloaded and installed the Raspberry Pi imager, start it. In Windows, make sure to run it as Administrator. If you are using Linux, you can start the application normally and you will be asked for your password before flashing the image into the SD Card.
To flash Raspberry Pi OS follow these steps:
1. Select the operating system (Raspberry Pi OS (other) -> Raspberry Pi OS (Lite))2. Insert the micro SD card to your computer.
3. Select the micro SD card.
4. Click on write.

Once the process is done, disconnect the sd card from your computer and insert it in the micro sd card slot in the Raspberry Pi. Now, you can connect the raspberry pi power supply. The Raspberry Pi will do its initial configuration and once it is done you will be presented with a CLI login prompt. Use the following credentials to log in:
- Username: pi
- Password: raspberry

### Connecting the Raspberry Pi to the Network.
If you are using ethernet, skip this part. Otherwise, follow these steps to connect your raspberry pi your wireless network:
1. Type: `sudo raspi-config`
2. Select option 1: System Options
3. Select option 1: Wireless Lan
4. Select your country
5. In the prompt `Please Enter SSID` enter the name of your wireless network (This is case sensitive)
6. Enter your wireless network password

There are a couple of more things to do:
- Change your password
  - Select "System Options" -> "Password" -> "Enter new password" 
- Change your hostname
  - Select "System Options" -> "Set Hostname" -> "Enter hostname (I call mine sftpserver)" 
- Enable SSH
  - Select "Interface options" -> "SSH" -> "Yes"
- Update the system
  - Select "Update"
  - Finish and Reboot

### Connect to the Pi
First you need to know the Raspberry Pi's Ip address. To find this information you can use several commands:
* `hostname -I`
* `ifconfig`
* `ip addr`
  
In your regular computer, you can use ssh to connect to the raspberry pi. Windows 10, Mac OS, and Most Linux distros come with an SSH client already installed. To connect to your Raspberry Pi use the following command:

`ssh username@ip-address-of-your-pi` for example: `ssh pi@192.168.1.169`

Once you run the command, a message similar to this will be prompted:
```
The authenticity of host '192.168.1.169 (192.168.1.169)' can't be established.
ECDSA key fingerprint is SHA256:BJlQmHyFwLGExcwkSvaasdasWty1BwSq2mxVVsumDqGc.
Are you sure you want to continue connecting (yes/no/[fingerprint])? 
```
Make sure that you answer "yes". You will be asked for the password of the pi user and upon entering it you will be connected to your raspberry pi. Now you can disconnect the raspberry pi from the monitor and also the keyboard and mouse since we can control the Pi from any other computer even after a reboot.
Setup SSH

## Install FTP Server
Before installing sftp, update the system with: `sudo apt update; sudo apt upgrade  -y` this should go smoothly since you updated the pi earlier. To install sftp, run this command: `sudo apt install openssh-server openssh-sftp-server -y`.  These packages should be installed already but if they are not they will be after running the installation command.

## Configure SFTP
1. First we need to create a user and a group for connecting to the ftp server.
   1. To create a user use: `sudo adduser ftpu` where ftpu is the name of the user. When you get prompter for a password make sure to type one. The wizard will ask you for some basic information and it is optional to add it.
   2. To create a group use: `sudo addgroup ftpg` where ftpg is the name of the group
   3. 

## Take FTP Server online
Setup a DDNS Service for static Address
Test FTP Server

## Challenges
TBA

## Take this project further
TBA