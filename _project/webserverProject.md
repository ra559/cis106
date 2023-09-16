---
layout: "page"
title: Web Server Project Deliverable 2
---

# {{page.title}}

## Part 1 Virtual Machine

Create a virtual machine that meets the following specifications:

* CPU: 1 Core
* RAM: 1 GB
* HDD: 10 GB

These are the recommended system requirements for Ubuntu Server 22.04.
![Ubuntu Server VM Settings](/assets/ubuntu-server-vm-settings.png)<br>

## Part 2 Install Ubuntu Server
### Step 1
![Step 1](/assets/step1-grub.png)<br>
### Step 2
![Step 2](/assets/step-2-language-select.png)<br>
### Step 3
![Step 3](/assets/step-3-update-installer.png)<br>
*Select* **Update to the new installer**. This will update the Ubuntu installer and proceed with the installation.
### Step 4
![Step 4](/assets/step-4-keyboard-select.png)
This step will automatically select the language layout of your keyboard. If for whatever reason it is different than what your physical keyboard has, then manually adjust it.
### Step 5
![Step 5](/assets/Step-5-install-type.png)<br>
Choose the default Ubuntu Server installation. We will need some of the repositories in the default installation.
### Step 6
![Step 6](/assets/step-6-ip-address.png)<br>
Since we are installing Ubuntu in a virtual machine that at the moment is configured to have a NAT network interface card, as long as your host PC has internet connection, you should automatically get an IP address. If you don't, something is wrong with your VM, Host Machine, or Internet Connection. 
> Note: If you are doing this project in the school's network, be aware that the school's routers are configured to block Bridged Ethernet adapters. 
### Step 7
![Step 7](/assets/step-7-proxy.png)<br>
Leave this part empty as we are not using a proxy.
### Step 8
![step 8](/assets/step-8-mirror.png)<br>
We will use the default mirror so there is no need to change this

### Step 9
![Step 9](/assets/step-9-disk.png)<br>
This step is to format our disk. Here we will select the entire disk. To move around here use either the arrow keys or the tab key.

### Step 10
![Step 10](/assets/step-10-confirm-disk.png)<br>
![Step 10.1](/assets/step-10-1-confirm-disk.png)<br>
This step is just to let you know the changes that will be made to the server's virtual hard drive.
### Step 11
![Step 11](/assets/step-11-server-info.png)<br>
Here you will enter the information about your computer. Write this information down because you will needed it later.
### Step 12
![Step 12](/assets/step-12-ssh.png)<br>
It is a good idea to install ssh now as we will use it later on. Do not import SSH keys. We will do that manually later.
### Step 13 
![Step 13](/assets/step-13-services.png)<br>
Do not select these services. We won't be using them.
### Step 14 
![Step 14](/assets/step-14-installation.png)<br>
This is the installation process. Once it is done it will start updating the system. Once the update is done, it will ask you to reboot.
### Step 15
![Step 15](/assets/step-15-reboot-now.png)<br>
### Step 16
![Step 16](/assets/step-16-press-enter.png)<br>
Here Just press enter. Virtualbox will unmount the installation disk for you

## Part 3 Install Apache
First, login to the server. You will need to type your username and password. Here is an example:
![log in](/assets/loging-in-ubuntu-server.gif)<br>
Notice that the password is hidden while typing just like when you are typing it in the terminal emulator. Be aware that during the upgrade, Ubuntu will ask you to restart some services.

Apache is available in Ubuntu's default repositories. However, before we can start installing new packages, let's update the system:

```
sudo apt update; sudo apt upgrade -y
```
![Update Ubuntu](/assets/update-ubuntu-server.gif)<br>

To install Apache use:

```
sudo apt install apache2 -y
```
![install apache](/assets/install-apache.gif)<br>
Be aware that here you will also need to restart some services here.

## Part 4 Setup SSH
#### Before Setup
Before we can setup SSH, we need to enable the firewall. Use this command:
```
sudo ufw enable
```
Now lets configure ufw to allow Apache and SSH traffic:
```
sudo ufw allow 'Apache'
sudo ufw allow 'OpenSSH'
```
Now check the status of the firewall:
```
sudo ufw status
```
![firewall](/assets/firewallcheck.gif)<br>

Now lets check the status of Apache and SSH to make sure they are running:
```
systemctl status apache2 --no-pager
systemctl status ssh --no-pager
```
Both commands should return `active (running)` if they do not, restart the services with the command:
```
sudo systemctl restart apache2 ssh
```
![service status check](/assets/service-status-check.gif)<br>

### Change the Network Adapter
**Follow these steps:**
1. Turn off the server virtual machine using this command: <br>`sudo shutdown now`
2. Change the server network adapter configuration from NAT to Bridge. 
![Network Adapter](/assets/networkadapter.png)<br>
>However, there is a chance that using a bridge adapter won't work for you. Some IDS (Instruction Detection Systems) and smart routers may prevent you from getting an Ip Address if your Network Adapter is bridge. In this case, you need to use [port forwarding](https://learn.g2.com/port-forwarding) in your virtual machine. Here is an example:

![portforwarding](/assets/portforwardingvirtualbox.png)<br>
 
### Connect with SSH
![ssh connection](https://docs.google.com/drawings/d/e/2PACX-1vTQha8cbvbsKtr6D7fqbP3CZ64F9sFTVqWpxEwvpJfg5VymCf5a6rutXUkzd3R3CTFSS9JXBt4BmOU-/pub?w=502&h=200)<br>

**Follow these steps:**
1. Make sure SSH is installed in both the client and the server: <br> `sudo apt install openssh -y`
2. In the server, the SSH service must be already running, if it is not running, use this command to enable it and start it: <br>`sudo systemctl enable ssh; sudo systemctl start ssh`
3. You will need to get the IP address of the server. Use this command to get the IP address: `hostname -I`. Additionally, you can setup a static IP address in your server. Here is a guide on how to do it. If you are doing this project in your laptop, I advise to stay away from setting up static IP addresses.
4. On the client computer use this command:<br>![ssh syntax](https://rapurl.live/7ge)<br>
![ssh connection](/assets/ssh-with-titles.gif)
5. If you are using port forwarding, your command would be:<br>`ssh -p 2222 username@127.0.0.1`

### Setup private and public key authentication with or without password (optional)
1. On the server, configure the firewall to accept ssh connections.
```
sudo ufw allow ssh
sudo ufw enable
sudo ufw status
```
2. Now we need to generate an ssh key in our client computer:
In your client machine type:<br>`ssh-keygen`
Now you can type this command to copy your ssh key to the server:<br>`ssh-copy-id -i .ssh/id_rsa.pub webmaster@server-ip-address`

3. if you use port forwarding your command will be:<br>`ssh-copy-id -p 2222 username@127.0.0.1`
4. Now you can connect to your server without having to remember the password.

## Part 5 Setup virtual hosts
Virtual host allows us to serve more than one website in a single web server. By default, Apache has one server block enabled. This server block is served from the directory: `/var/www/html`. For a single website, all the files are placed within this directory. When we setup virtual hosts, each site has its own directory. The recommendation is to leave the default `html` directory and for each site a new directory inside `/var/www`. In this project, we will have one virtual site called `mywebsite`. You are welcome to use a different name just remember to adjust every command where the word `mywebsite` is reference for your preferred website domain name.  

**Follow These Steps**
1. Create the directory for `mywebsite` as follows: <br>`sudo mkdir /var/www/mywebsite`
2. Modify the ownership of `mywebsite` so that it is now owned by your user instead of root <br>`sudo chown -R $USER:$USER /var/www/mywebsite`
3. Now let's change the file permission so that the owner can read, write, and execute the files while granting only read and execute permissions to groups and others: <br>`sudo chmod -R 755 /var/www/mywebsite`
4. Now lets create a simple html document to be served from our new virtual host. Create a document with the nano text editor called `index.html` in the `/var/www/mywebsite/` directory: <br>`sudo nano /var/www/mywebsite/index.html`.
5. Once the new document opens, type the following text:

```
<html>
    <head>
        <title>My First Website</title>
    </head>
    <body>
        <h1>This is a sample document!</h1>
    </body>
</html>
```

6. Save and close the file when you are finished. You can do this by pressing `CTRL + X`, then `Y` and `ENTER`.

<hr>

> **NOTE:**
> If you don't want to use Nano, you can also do this in a single command
```
sudo curl https://cis106.com/assets/basic.html -o /var/www/mywebsite/index.html
```
<hr>



![setup virtual host 1](/assets/setup-virtual-host-1.gif)<br>

7. Now we need to create a virtual host file so that this new content can be served. The default configuration is located in `/etc/apache2/sites-available/000-default.conf` However, we do not need to touch this file, we can instead create a new one as it is best practice. To create a new config file, we are going to use nano again: <br>`sudo nano /etc/apache2/sites-available/mywebsite.conf`
8. Add the following text to the domain config file:

```
<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    ServerName mywebsite
    ServerAlias www.mywebsite
    DocumentRoot /var/www/mywebsite
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
```

9. Save and close the file when you are finished. You can do this by pressing `CTRL + X`, then `Y` and `ENTER`.
10. Now enable the site with the following command: <br>`sudo a2ensite mywebsite.conf`
11. Now lets disable the default domain:<br>`sudo a2dissite 000-default.conf`
12. Before we can refresh the configuration, we need to add a configuration line to the `apache2.conf` file. Open the file in nano:<br>`sudo nano /etc/apache2/apache2.conf`
13. Add the following line at the end of the file:<br>`ServerName 127.0.0.1`
14. Save and close the file when you are finished. You can do this by pressing `CTRL + X`, then `Y` and `ENTER`.
15. Now you can test the configuration for errors:<br>`sudo apache2ctl configtest`
16. The output of the command should look like this:

```
Syntax OK
```

17. If there are no errors, restart Apache to apply the changes:<br>`sudo systemctl restart apache2`<br>
![Setup Virtual Host 2](/assets/setup-virtual-host-2.gif)<br>
18. Now, if you open a web browser in your host computer and go the URL: `http://mywebsite` your `index.html` document should load.
19. If `httpL//`
![sample site preview](/assets/sample-site-preview.png)<br>

