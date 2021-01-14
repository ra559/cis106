# How to Setup Git and Github in Ubuntu 20.04

## Assumptions:
I assume the following:
* You have a computer running Ubuntu and VS Code is installed in it.
* You have a basic understanding of the Linux Command Line and your Terminal Emulator
* You have a Github Account


# Install and setup git

Install command: `sudo apt install git -y `

**Set up Git**
   1. Set your username:
   
   ` git config --global user.name 'your username here'`
   
   1. Set your email address:
   
    `git config --global user.email 'your email here'`

   2. Set credential caching (so you don't have to type your password all the time):
   
   `git config --global credential.helper cache`
   
   `git config --global credential.helper 'cache --timeout=time-here-in-seconds'`
   
   Here is a little cheat cheat:
   * 24 hours in seconds: **86400** 
   * 48 hours in seconds: **172800**
   * 72 hours in seconds: **259200**
   * 1 week in seconds: **604800**
   * 2 weeks in seconds: **1209600**
   * 1 month in seconds: **2419200**
   * 1 year in seconds: **31557600**

