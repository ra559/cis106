# Ubuntu Setup Cloud Machine
---
 
## Post Sign in Tasks
* Update and upgrade
* Remove unnecessary software
* Essential software install
* Disable animations
* Change Default screenshot tool with flameshot
* Enable Dark Theme
* use this one-liner to complete these tasks:  
  
  `sudo apt install curl -y; curl https://raw.githubusercontent.com/ra559/cis106/main/guides/oneliner.sh | bash`
  
* Install restricted extras: `sudo apt install ubuntu-restricted-extras ubuntu-restricted-addons -y` 

### VS Code setup
1. Install VS Code Extensions:
   1.  Live Server
   2.  Markdown All in one
   3.  Markdown Preview Enhanced
   4.  Markdown PDF
   5.  Markdown TOC
   6.  PDF Preview
   7.  Code Spell Checker

# Replace Gnome 3 with Gnome Classic
1. Run this command: `sudo update-alternatives --config x-session-manager`
2. In the options that will be presented to you choose: `/usr/lib/gnome-flashback/gnome-flashback-metacity`
3. Log out and log back in.



