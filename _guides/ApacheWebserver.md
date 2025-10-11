---
title: Setting up a web server in Debian
layout: page
---

# {{page.title}}

- [{{page.title}}](#pagetitle)
  - [READ ME](#read-me)
  - [Video](#video)
  - [Requirements](#requirements)
    - [Host Machine System Requirements](#host-machine-system-requirements)
    - [Guest Machine System Requirements](#guest-machine-system-requirements)
  - [Step 1: Create a virtual machine](#step-1-create-a-virtual-machine)
    - [Files to download:](#files-to-download)
  - [Step 2: Install Debian](#step-2-install-debian)
  - [Step 3: Update](#step-3-update)
  - [Step 4: Configure the server](#step-4-configure-the-server)
    - [1. Configure the firewall](#1-configure-the-firewall)
    - [2. Check Running services](#2-check-running-services)
    - [3. Check if the web server is working](#3-check-if-the-web-server-is-working)
  - [Step 5: Remote Access to the server](#step-5-remote-access-to-the-server)
    - [Understanding the virtual machine networking](#understanding-the-virtual-machine-networking)
    - [How to tell if you can use Bridge Network Adapter](#how-to-tell-if-you-can-use-bridge-network-adapter)
      - [More on this IPV4 stuff!](#more-on-this-ipv4-stuff)
    - [How to use NAT with Port Forwarding](#how-to-use-nat-with-port-forwarding)
      - [What is port forwarding?](#what-is-port-forwarding)
      - [How to enable port forwarding](#how-to-enable-port-forwarding)
  - [Step 6: Managing our Server Virtual Machine from the Host](#step-6-managing-our-server-virtual-machine-from-the-host)
    - [How do I use SSH](#how-do-i-use-ssh)
    - [How do I connect to my virtual machine from my host machine](#how-do-i-connect-to-my-virtual-machine-from-my-host-machine)
  - [Step 7: Adding content to our web server](#step-7-adding-content-to-our-web-server)
    - [Uploading files using SCP - Alternative 1: Using the command line](#uploading-files-using-scp---alternative-1-using-the-command-line)
    - [Uploading files using Filezilla - Alternative 2: Using a graphical application](#uploading-files-using-filezilla---alternative-2-using-a-graphical-application)
    - [How do I add files?](#how-do-i-add-files)
  - [Step 8: Using Git in our server](#step-8-using-git-in-our-server)
    - [Here is an example of this workflow](#here-is-an-example-of-this-workflow)



## READ ME
This guide assumes the following:
1. You have installed Virtualbox 
2. You know how to create a Debian virtual machine

## Video
[Video](https://youtu.be/opAZoJPpI9A)

<hr>

## Requirements
* **Hypervisor**: VirtualBox  
* **Host** **OS**: Windows 11/10 or MacOS (Intel/Apple Silicon)
* **Guest** **OS**: Debian 13 (NO GUI)
* **Server** **Application**: Apache
* **SSH**:For remote management of the server virtual machine
* **Git/GitHub**: To Upload files to the web server

### Host Machine System Requirements
* **CPU**: Quad core CPU or higher 
* **RAM**: 8GB or More 
* **Free Storage**: 60GB or more

### Guest Machine System Requirements
* **CPU**: 1 Core
* **RAM**: 1 GB
* **Storage**: 10 GB

<hr>


## Step 1: Create a virtual machine


### Files to download:
* Download the Debian ISO. Which Debian ISO Should You Download?


| Your Computer Type        | CPU Type               | ISO File to Download              | Download Link                                                              |
| ------------------------- | ---------------------- | --------------------------------- | -------------------------------------------------------------------------- |
| **Windows 11/10**         | Intel or AMD (x86\_64) | `debian-13.0.0-amd64-netinst.iso` | [Download](https://www.debian.org/) -> Click the black **Download** button |
| **macOS (Intel)**         | Intel (x86\_64)        | `debian-13.0.0-amd64-netinst.iso` | [Download](https://www.debian.org/) -> Click the black **Download** button |
| **macOS (Apple Silicon)** | ARM (arm64)            | `debian-13.0.0-arm64-netinst.iso` | [Direct Link](https://cdimage.debian.org/debian-cd/current/arm64/iso-cd/)  |


1. Create a virtual machine where Debian will be installed that meets the following specifications:
   1. RAM: 1GB
   2. CPU: 1
   3. Storage: 20GB

2. Follow the steps in this [presentation](https://docs.google.com/presentation/d/e/2PACX-1vSL0uIh10efjylcStOP8r9AxUlq1mZ-mQ_ojA4ESu7eLgMJOdYlOpbXdplPlA6gIiIrTU4LS_6dCV27/pub?start=false&loop=false&delayms=3000&slide=id.p) as a general guide and adjust the settings accordingly.

<p style="text-align: center"><img src="/assets/debianServer/step1.gif" width="500px" height="500px" ></p>


<hr>

## Step 2: Install Debian
2. Turn on the virtual machine and install Debian.
   1. Follow the steps in this [presentation](https://docs.google.com/presentation/d/e/2PACX-1vSN5c6pPHfnlbcl10KlrxZ4kh606rIkDwdFd6uo9VqpOiwHrlqOOYFA3_ypMp9MA_R65TtbQPgJYHnx/pub?start=false&loop=false&delayms=3000&slide=id.g374a13ca6e9_0_0) as a general guide. Please do not install a desktop environment as we wont need one. When you get to [this step](https://docs.google.com/presentation/d/e/2PACX-1vSN5c6pPHfnlbcl10KlrxZ4kh606rIkDwdFd6uo9VqpOiwHrlqOOYFA3_ypMp9MA_R65TtbQPgJYHnx/pub?start=false&loop=false&delayms=3000&slide=id.g374a13ca6e9_0_183), pick: Web Server, SSH Server, and Standard System Utilities


<p style="text-align: center"><img src="/assets/debianServer/softwareSelection.png" width="500px" height="500px" ></p>


<hr>

## Step 3: Update

1. Once the Debian is installed, the virtual machine will reboot. This virutal machine does not have a desktop environment so we will be presented with a [TTY](https://docs.google.com/presentation/d/e/2PACX-1vSMW_nt1pQzuvuV3HlZ-3gw9ObsRqnTVSPRW34tPB-cJ_iUgwuVr1iKY8MdWxh4_ctfRq9PDpXPMdif/pub?start=false&amp;loop=false&amp;delayms=3000&slide=id.g62ffdcbad3_0_101) to sign to. Enter your username and password. 
2. Update Debian using the following command:

```bash
sudo apt update && sudo apt upgrade -y
```

<hr>

## Step 4: Configure the server

### 1. Configure the firewall
First, let's install, enable, and configure the firewall. 
1. Install: `sudo apt install ufw`
2. Enable: `sudo ufw enable`
3. Configure:
   1. `sudo ufw allow 'WWW Full'`
   2. `sudo ufw allow 'OpenSSH'`

You can learn more about ufw [here](https://www.digitalocean.com/community/tutorials/ufw-essentials-common-firewall-rules-and-commands)

### 2. Check Running services
1. Check that Apache is enabled and running. Use the following command:
   1. `systemctl status apache2`
2. Check that SSH is enabled and running. Use the following command:
   1. `systemctl status ssh`
3. Check that UFW is enabled and running. Use the following command:
   1. `systemctl status ufw`
4. If any of these services are not running, enable them and restart them. You can lear more abo0ut the `systemctl` command [here](https://www.digitalocean.com/community/tutorials/how-to-use-systemctl-to-manage-systemd-services-and-units).

### 3. Check if the web server is working
At this point you should be able to see the default apache index.html site. The easiest way to see if the web server is hosting something is by using `curl` or `wget`. Since `wget` is installed by default, use the following command to download the `index.html` document that is currently being hosted by the server:

```bash
wget localhost
# You can also use this alternative command:
wget 127.0.0.1
```

Take a look at the index.html file. It should be Apache's Home page.

```bash
ls -l index.html
less index.html # press q to exit
```

<hr>

## Step 5: Remote Access to the server

### Understanding the virtual machine networking

Depending on the network configuration of your virtual machine you may not be able to reach your web server from outside of your virtual machine. Take a moment to look at the network settings of your virtual machine:

<p style="text-align: center"><img src="/assets/debianServer/networkConfigVM.png" width="500px" height="500px" ></p>

The "Attached to" configuration has the following options (See the Introduction to Networking Modes in [VBOX documentation](https://www.virtualbox.org/manual/UserManual.html#generalsettings:~:text=be%20explicitly%20enabled.-,Introduction%20to%20Networking%20Modes,-Each%20of%20the))

* **Not attached**: In this mode, Oracle VirtualBox reports to the guest that a network card is present, but that there is no connection. 
* **Network Address Translation (NAT)**: In this mode, your virtual machine connects to the internet via your host machine. The virtual machine is isolated. This isolation makes your virtual machine not reachable from other computers in your network.
* **NAT Network**: This mode allows you to use NAT between your VMs, as well as with external connections. You first have to create the NAT Network service that you want to use, and then select NAT Network as the network mode.
* **Bridged networking**: This is for more advanced networking needs, such as network simulations ***and running servers in a guest***. When enabled, Oracle VirtualBox connects to one of your installed network cards and exchanges network packets directly, *circumventing your host operating system's network stack*. ***This is the easiest way to setup a server in a virtual machine!***
* **Internal networking**: This can be used to create a different kind of software-based network which is visible to selected virtual machines, but not to applications running on the host or to the outside world.
* **Host-only networking**: This can be used to create a network containing the host and a set of virtual machines, without the need for the host's physical network interface. Instead, a virtual network interface, similar to a loopback interface, is created on the host, providing connectivity among virtual machines and the host.
* **Cloud networking**: This can be used to connect a local VM to a subnet on a remote cloud service.
* **Generic networking**: Rarely used modes that share the same generic network interface, by allowing the user to select a driver which can be included with Oracle VirtualBox or be distributed in an extension pack.

> This information was extracted from [Virtualbox Documentation](https://www.virtualbox.org/manual/UserManual.html#generalsettings:~:text=be%20explicitly%20enabled.-,Introduction%20to%20Networking%20Modes,-Each%20of%20the).

For this project, we will use either NAT with Port Forwarding or Bridge Adapter. The easiest of the two options is Bridge Adapter because all we need to do is change the Attached to Setting to "Bridge". This will allow our VM to get an IP address from your Home Router and it will be just another computer in your network. However, for some people, this is not possible because their network interface card does not allow them to use Bridge mode. Some routers also may reject a Bridged Network adapter. For example, in the College Network, we cannot use Bridge Network Adapter because the router rejects the connection. So the first thing we need to do is figure out if we can use Bridge Network Adapter. 

### How to tell if you can use Bridge Network Adapter

1. Turn off your virtual machine and then change the network adapter settings to "Bridge Adapter"
2. Start your virtual machine and sign in
3. Type the command: `hostname -I` to see if your virtual machine gets an IP address. If it gets an IP Address, write it down. 
4. Find out the IP address of your host machine (Windows/MacOS) 
   1. For Windows
   2. For MacOS
5. Compare the IP address of your server virtual machine and the host OS. Notice that they are similar. Either the first 2 or first 3 octets need to be the same (depending on your networks subnet mask). For example:
   1. Host OS: `192.168.1.09`
   2. VM OS:   `192.168.1.11`
6.  This is because of how IP Version 4 works. In IPV4 we have the concept of Subnet mask. The subnet mask tells which part of that address is the network and which part is the host. 
7.  If your virtual machine got an IP address, and said IP looks like your host IP, then you can use Bridge Network adapter. 
8.  If your virtual machine did not get an IP address, then you cannot use "Bridge Network Adapter". Please use NAT with Port Forwarding. 

#### More on this IPV4 stuff!
* An IPv4 address is 32 bits, usually written like 192.168.1.10.
* A subnet mask is also 32 bits, like 255.255.255.0.
**How they relate:**
1. Line up the address and the mask in binary.
2. Wherever the mask has 1s, that part of the IPv4 address is the network ID.
3. Wherever the mask has 0s, that part of the IPv4 address is the host ID (the device inside that network).

| What it means | Human readable | Binary                              |
| ------------- | -------------- | ----------------------------------- |
| IP Address:   | 192.168.1.10   | 11000000.10101000.00000001.00001010 |
| Network Mask: | 255.255.255.0  | 11111111.11111111.11111111.00000000 |
| Network ID:   | 192.168.1.0    | 11000000.10101000.00000001.00000000 |
| Host ID:      |                | --------------------------.00001010 |

So how do we read the IP Address `192.168.1.10/24`?  Simple! The device `10` on the `192.168.1` network

* Network part = 192.168.1
* Host part = 10

This specific network mask configuration allows for up to up to 254 devices.

But what does that `/24` mean? Well, since IPV4 uses 32 bit addresses, it means that each octet has 8 bits (8x4=32). So the network mask as 3 populated octets (3x8=24). We call this a CIDR notation (Classless Inter-Domain Routing). In plain english it means: "the first 24 bits of the IPv4 address are the network part".


### How to use NAT with Port Forwarding

#### What is port forwarding?
A port is like a numbered door on an IP address. It lets a computer run many different network services on the same IP without mixing them up. For example, HTTP(S) runs on ports 80 and 443 respectively. SSH runs on port 22 and FTP on port 21. When you connect to an IP, you’re really connecting to an IP + port pair (called a socket). The computer receiving the request knows which port to use for each request. 

The issue is that in our case we are using a virtual machine with a NAT network. Therefore in order to penetrate this NAT network, we need to tell Virtualbox that every request that arrives to a custom port be routed to the virtual machine. That is what port forwarding does. 

> Port forwarding is when traffic that arrives at a certain port on one machine is forwarded to another machine and port.

In our virtual machine setup, the virtual machine has an internal only IP Address (NAT). This VM cannot accept external requests. With port forwarding, you are configuring the host so that if any traffic on a given custom port arrives, we will send it over to the virtual machine port. So in a nutshell, it creates a tunnel where communication can come in and go out!



<p style="text-align: center"><img src="https://docs.google.com/drawings/d/e/2PACX-1vRIEdRr9d0wLtFzvPrugYbzPah2yabSly-n9ktETmo47SIKo_DA_hUGvudhrzfP1L7IMm0S_bSuV6__/pub?w=1440&h=1080" width="500px" height="500px" ></p>

#### How to enable port forwarding

1. Open the virtual machine network settings and make sure the adapter is set to NAT
2. Click on Port Forwarding and add the rules as they are shown in the image below:

<p style="text-align: center"><img src="/assets/portforwardingvirtualbox.png" width="500px" height="500px" ></p>

* Since we are setting a web server, we need to forward port 80 as http runs on port 80
* We will be using SSH to administer the server therefore we need to forward port 22

<hr>

## Step 6: Managing our Server Virtual Machine from the Host

Currently, every time we need to do anything on the server VM, we need to turn on the virtual machine and sign in directly in the virtual machine TTY. If you have physical access to the server, this is fine. However, that is not how things work in the real world. Most of the time, you are configuring servers that are not on premise. Either they are hosted on the Cloud, VPS (virtual private server), or they are virtual machines running on a virtualization server. There is also the concept of containers which work similarly like virtual machines. 

This is where SSH comes into play. SSH (Secure Shell) is a protocol that lets you securely connect to another computer over a network. SSH uses encryption to protect login credentials and data in transfer. It uses port 22 by default. SSH is also used for transferring files securely. As an IT, computer science, and web development student, it is canonical that you learn the fundamentals of SSH. 

### How do I use SSH
This is the general formula for using ssh with and without port forwarding:

<p style="text-align: center"><img src="https://docs.google.com/drawings/d/e/2PACX-1vTbrAeoQE3-8-35_zezdjR6qMlceibRaJGEmDNcVahOIsSmDSFhqOXKni79-Ny3yA7NElajte42uzl1/pub?w=1440&h=1080" width="500px" height="500px" ></p>

* In the formula, the specified port is 2222 because that is the custom port we are forwarding from our host machine (127.0.0.1) to the server virtual machine.
* If we were to connect from another computer that is not our host machine then we would need to replace the local host IP address with the actual IP address of the machine.

### How do I connect to my virtual machine from my host machine

1. Windows, MacOS, and most Linux distributions have ssh already installed. All you need to do is open your terminal application:
   1. On Windows is PowerShell
   2. On MacOs is Terminal
   3. On Linux, well, whatever is your preferred terminal application
2. Then type the SSH command that fits your network configuration. For example:
   1. If I am using Bridge Network Adapter, and my virtual machine's IP Address is `192.168.1.157` then my command would be:
      1. `ssh rap@192.168.1.157`
   2. If I am using NAT with Port forwarding, then my the command I would use is:
      1. `ssh -p 2222 rap@127.0.0.1`

Here is an example using Bridge Network Adapter

<p style="text-align: center"><img src="/assets/debianServer/bridgeSSH.gif" width="500px" height="500px" ></p>

Here is an example using NAT with Port Forwarding

<p style="text-align: center"><img src="/assets/debianServer/natSSH.gif" width="500px" height="500px" ></p>

<hr>

## Step 7: Adding content to our web server

Our server stores all the files in `/var/www/html/` by default. That is the directory where we will place all of our pages. By default, this directory is owned by root and regular users cannot place data there. So we will change the permissions of the `/var/www/html` directory so that we can create and modify files there. 

1. Use the chown command to change the ownership of the directory: `sudo chown -R $USER:www-data /var/www/html`
2. Use the chmod command to change the permissions of the folder: `sudo chmod -R 775 /var/www/html`

Now, we can create html documents in our host machine and upload them to the server using SSH. This is something we will work on later. For now, lets test our web server with an already built website. 

1. In your host machine, go to this page: [html5up.net](https://html5up.net/) and download one of the templates. I will choose [this one](https://html5up.net/paradigm-shift).
2. There are many ways to upload files to the server. In this guide, we will 2 ways:

### Uploading files using SCP - Alternative 1: Using the command line
1. The command for uploading files via SCP when using port forwarding is: <br> `scp -P port file-to-upload remote-username@127.0.0.1:/path/to/place/file`
2. So in my case the command would be: <br> `scp -P 2222 ~/Downloads/html5up-paradigm-shift.zip rap@127.0.0.1:/var/www/html`
3. The command for uploading files via SCP when using Bridge Network Adapter is: <br> `scp file-to-upload remote-username@remote-server-ip-address:/path/to/place/`
4. So in my case the command would be: <br> `scp ~/Downloads/html5up-paradigm-shift.zip rap@192.168.1.157:/var/www/html`

Here is the port forwarding example expanded:

<p style="text-align: center"><img src="https://docs.google.com/drawings/d/e/2PACX-1vQ24k3qFIqp3auF7ftOXDzYykdAbFuzxIiwsl8GaZfsj1JsSqr5S2NOE-Fgdor0w02d6-vpHUjjZsDf/pub?w=1440&h=1080" width="700px" height="700px" ></p>


### Uploading files using Filezilla - Alternative 2: Using a graphical application
1. Install the FileZilla application in your host machine. You can download it from here: [filezilla-project.org](https://filezilla-project.org/). You need the FileZilla Client, not the server! If you are using Linux as your host OS, install Filezilla from your repository. 
2. After you install fileZilla, open it.
3. Click on File -> Site Manager -> New Site
4. Change the following settings:
      1. Protocol: SFTP - SSH File Transfer Protocol
      2. Host: 
         1. If you are using Bridge Network Adapter: Use the IP address of your virtual machine. In my case it is 192.168.1.157
         2. If you are using NAT Port Forwarding use: 127.0.0.1
      3. Port:
         1. If you are using Bridge Network Adapter use: 22
         2. If you are using NAT Port Forwarding use: 2222
      4. Login Type: Normal
      5. User: your user name in the server. In my case, it is `rap`
      6. Password: your password to sign in to the server
5. Click on OK
6. Click on the drop down and select your new connection
7. You will be presented with an unknown host key message. Click ok
8. Now you have successfully connected to your server

<p style="text-align: center"><img src="/assets/debianServer/filezilla_sucess.png" width="700px" height="700px" ></p>

### How do I add files?
1. The left panel represents your host machine. Navigate to the location you have the zip file
2. The right panel represents your server. Navigate to /var/www/html/
3. Drag and drop the zip file from the left to the right

<p style="text-align: center"><img src="/assets/debianServer/copy_filezilla.gif" width="700px" height="700px" ></p>

<hr>

## Step 8: Using Git in our server

At this point, we already know how to upload files to our server. However, it would be much more efficient if we could just store everything in a Github repository and then clone the repository in our server. That will allow us to work on our website and when we are ready to publish the changes, we just pull the latest updates from the server. 

### Here is an example of this workflow
1. Sign in to GitHub and create a repository called `portfolio`
2. Clone the repository in your host machine or the computer that you use to write code
   1. *For students taking CIS106, this would be your Desktop Virtual Machine*
   2. To clone the repository use the command: `git clone https://github.com/github-username/portfolio`
3. Open the local repository (portfolio folder) in VS Code 
4. Create a markdown file called `index.md`
5. Write your resume in markdown and when you are done convert the file to html.
   1. **Note For CIS106 Students:**
      1. Your index.md file should include a general idea of how you expect your resume to look like when you graduate.
      2. Please include a section for Projects and in there link to your github repository
      3. You have full creative freedom in this part. I suggest not to put real contact information like phone numbers or email addresses.
6. Push your changes to your GitHub repository
7. Ssh into your server and clone your repository in the directory: `/var/www/html`
8. Now, from your host computer you can see your webpage using the following URL.
   1. Port Forwarding: `http://127.0.0.1:8080/portfolio/`
   2. Bridge Network:  `http://192.168.1.157/portfolio/`   
9. In the future, for any changes you make, simply follow these general steps.
   1. Push the changes to GitHub
   2. SSH into the server
   3. cd into the local repository: `cd /var/www/html/portfolio`
   4. Pull the latest changes: `git pull`


