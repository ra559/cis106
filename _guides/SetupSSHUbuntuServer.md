---
layout: page
title: Setup SSH Guide
---

# Setup SSH Guide
## Installation
* Make sure that your server and your client computer are in the same network. The easiest way to do this is to make sure that the network addapter in the viertual machine is set to bridge instead of nat. However, your network may prevent you from doing this. Some IDS and smart routers may prevent you from getting an ip. In this case, you need to use port forwarding in your vm. here is a guide on how to do it: https://nsrc.org/workshops/2014/sanog23-virtualization/raw-attachment/wiki/Agenda/ex-virtualbox-portforward-ssh.htm#:~:text=To%20enable%20port%20forwarding%2C%20open%20the%20settings%20for%20your%20Virtual%20Machine.&text=Verify%20that%20NAT%20is%20selected,you%20can%20add%20new%20forwardings.
 
* Make sure that the ssh server program is installed in the server virtual machine
```
sudo apt install openssh-server -y
```
* Make sure that the ssh client program is installed in the client machine. This is the computer that you will be using to manage your server.
```
sudo apt install openssh-server -y
```
* Enable and start ssh in the server:
```
sudo systemctl enable ssh; sudo systemctl start ssh
```
* Test the connection by loging in to the server from the client. First, use the ip or hostname command to find out the ip address of the server. 
* On the server type, `hostname -I` this will give you the ip address of your server.
* On the client type: 
```
ssh username@server-ip-address
````
> if you used port forwarding your command will be:
```
ssh -p 2222 username@127.0.0.1
```
* Read and answer the questions and you will connect sucessfully. 

## Setup private and public key authentication with or without password:
* On the server, configure the firewall to accept ssh connections.
```
sudo ufw allow ssh
sudo ufw enable
sudo ufw status
```
* Now we need to generate an ssh key in our client computer. If you are using your ubuntu machine from the course, then you already have one. If you are not, then you must create the ssh keys:
* In your client machine type: 
```
ssh-keygen
```
Now you can type this command to copy your ssh key to the server
```
ssh-copy-id -i .ssh/id_rsa.pub -p 2222 webmaster@127.0.0.1
```

> if you use port forwarding your command will be:

```
ssh-copy-id -p 2222 username@127.0.0.1
```

* Now you can connect to your server without having to remember the password.

