---
layout: "page"
title: Install MySQL Ubuntu 22.04
---

## README
> This tutorial was made upon requests. The purpose of this tutorial is to show students that are transitining to linux how to install, manage, and run basic queiries using Linux.  I made this tutorial because the school only teaches mysql on windows and since some of my students want to use Linux as their main operating system it will help them get started by covering the part that is normally skipped in the database course in the colege. This tutorial is not a comprehensive guide and full disclousure, I am not good with mysql. My knowledge goes as far as installation, connection and simple queiries However, if you have a question, I will do my best to help you get the answers you need.  If you find any erros in this tutorial please let me know so we can keep it up to date!

## Sources:
> * [How To Install MySQL on Ubuntu 22.04](https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-22-04)
## Part 1 

### Perform a system update
Use the command:
```
sudo apt update; sudo apt upgrade
```

### Install MySQL
1. Install MySQL: 
```
sudo apt install mysql-server -y
```
2. Start MySQL Service:
```
sudo systemctl start mysql.service
```
3. Run mysql_secure_installation
   1. Access mysql shell: `sudo mysql`
   2. Alter root user to use native password authentication: 
   ```
   ALTER USER 'root'@'localhost'
   IDENTIFIED WITH mysql_native_password BY 'password';
   ```
   3. Exit mysql shell: `exit`
   4. Run mysql secure installation: `sudo mysql_secure_installation`
   5. Login with root: `mysql -u root -p`
   6. Change the authentication to auth_token:
   ```
   ALTER USER 'root'@'localhost' IDENTIFIED WITH auth_socket;
   ```
   7. Exit mysql shell: `exit`

## Part 2

## Creating a dedicated user

## Creating a database

## Using an alternative CLI

## Installing GUI Clients

## Part 3 Basic SQL Queries

Create a table
Rename a table
Insert data
Update data
Delete data
Query Data

## Part 4 Query a database with python

