# Build a LAMP Stack
By R. Alberto
![LAMP STACK](../imgs/LAMP.jpg)

Table of content here


## Project Description
In this project, I am creating a Web application hosted on a Linux server for logging my blood sugar (glucose) levels. The application must meet the following requirements:
* Must provide an input box for entering an integer value for the current glucose level.
* Every entry must be saved to a database including the time stamp
* Must provide a way to display a table of all the entries arranged by date and time 

## Requirements
The project requires the use of a LAMP Stack (Linux, Apache, Mysql, and PHP). I am using the following specifications:
* Linux Distribution: Ubuntu Server 20.04
* Web Server: Apache
* DBMS: MariaDB (from the standard software repositories)
* Php version: PHP 7

## Setting Up The Server Environment
### Virtual Machine Specifications
The virtual machine is built on HyperV in a Windows 10 Pro64 bit host. The host hardware specifications are:

![vm specs](../finalProject/imgs/vmspecs.png)

The Virtual machine specifications are:
* RAM: 2GB
* CPU: 2 cores
* Network adapter: 1 NIC in Bridge configuration to make development easy

### Configuring the server’s operating system
After installing [Ubuntu Server](https://youtu.be/laQSC0KYWck) in the virtual machine, there are some configurations that need to be done before installing a web server and a database.  It is essential to set up a firewall so that only connections to certain services are allowed. Additionally, SSH needs to be set up so that a remote connection to the server can be performed. For this project, I have enabled ssh to use keys for authentication instead of the default username and password functionality. 
#### Setting up UFW
Ubuntu uses ufw (uncomplicated firewall) as the default firewall configuration tool for iptables. Ufw can block services by port, network interface, and IP addresses. The following commands are used to set it up:
* To check the firewall status:
`sudo ufw status`
* To list all applications that have register their profiles with UFW:
`sudo ufw app list`
* To enable/disable/reload the firewall
`sudo ufw enable|disable|reload`


## Install The Software

## Difficulties Encountered 

## Work Cited