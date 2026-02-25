---
title: How do I practice the stuff I am learning in this class?
layout: page
---

# {{page.title}}


> Note: The instructions here are vague on purpose. The goal is to give you ideas on how to use the technologies we are learning in class.

Every lecture includes practice that you can do as many times as you want in your virtual machine. You should focus on the learning outcomes of each lecture/lab and practice them. For Instance, here I will cover how you should practice Lab 1 to Lab 3. 

## Video
* [How to practice](https://youtu.be/wRLTWqwnKUw)

## How do I practice Lab 1
The outcome of Lab 1 is to learn Markdown. So you should practice by creating a lot of markdown documents. Here are some example documents:
* 1- Add a README file to your CIS106 repository. You can find examples on Youtube but essentially it is just a README.md file in the main folder (root of the repository) that explains what a project is about. 
* 2- Create a personal website and host it for free on GitHub
  * Create a new repository in GitHub and clone it in your virtual machine
  * Open it on VS CODE and add a file named `index.md`. Write whaever information you want on that index.md file and convert it to html. 
  * Once you finish, save and push your changes to GitHub
  * In the repository settings in GitHub, enable GitHub Pages and voila! 
* 3- Write notes for all of your courses using Markdown. Here are some note taking apps that are cross platform that fully support Markdown:
  * [Joplin](https://joplinapp.org/)
  * [Obsidian](https://obsidian.md/)
  * [Simplenote](https://simplenote.com/)
  * [Logseq](https://logseq.com/)
  * [Zettlr](https://www.zettlr.com/)

## How do I practice Lab 2
The outcome of Lab 2 is to learn how to make and manage virtual machines, how to use git & github and how to install Debian. 
* **How do I practice virtualization?**
  * Make another virtual machine following the instructions.
  * Then install Debian in it.
  * Delete the machine and do it again, but without following the instructions.
  * Only reference the instructions when you feel lost.
  * You should also install other operating systems.
  * *Once you are comfortable enough making virtual machines, you should playaround with VirtualBox. Try learning/doing the following*
    * Creating snapshots
    * Exporting and importing virtual machines
    * Cloning virtual machines
    * Modifying the network interface
    * Create a small network of 3 virtual machines (assuming you have enough computing power to run 3 vms)
* **How do I practice the git & github workflow?**
  * If you want to keep your class VM clean, then create a separate virtual machine for testing purposes.
  * Create several repositories and play with them. I will do some examples here. These are the general steps
  * 1. Create your testing virtual machine.
    2. Configure your GitHub account as you did for lab 2
    3. In GitHub, create a repository for a website. For example, resume
    4. Clone the GitHub repository on your machine and open it in VS Code
    5. Type your resume in markdown and convert it to HTML. Rename the file to index.html
    6. Push the changes to GitHub
    7. Enable [GitHub Pages](http://youtube.com/watch?v=5XhxR9Vs6zc) for that repository.
    9. Do you want to take it to the next level? [Learn Jekyll](https://www.youtube.com/watch?v=F8iOU1ci19Q)
    10. The same thing goes for Git & GitHub. Want to learn more? What is stopping you? Here are some good options:
      11. [Git & GitHub Crash Course for Beginners by Freecodecamp](https://www.youtube.com/watch?v=mAFoROnOfHs&t=66s)
      12. [Git and GitHub - Full Course by Boot.dev](https://www.youtube.com/watch?v=rH3zE7VlIMs)
  * And here is a project for you. How about putting all of your college notes in a GitHub repository and setting up a Jekyll site so you can access them whenever?
  * Here are some other ideas?
    * Try installing other Debian/Ubuntu Based distributions:
      * [Zorin OS](https://zorin.com/os/)
      * [Linux Mint](https://linuxmint.com/)
      * [Linux Lite](https://www.linuxliteos.com/)
    * Try downloading ready made OVA files and import them:
      * [OSBOXES](https://www.osboxes.org/)
      * [Kali Linux Virtualbox VM](https://www.kali.org/docs/virtualization/)
    * Try making Windows virtual machines
      * You can get the ISO file of Windows 11 and 10 directly from Microsoft using the Windows Media Creation Tool

## How do I practice Lab 3
The point of Lab 3 is to familiarize yourself with GNOME and the terminal. So take a snapshot of your practice virtual machine, then customize it, and then revert the snapshot. Rinse and repeat. For the terminal, simply run commands on it. Do the practice in the presentation. Have multiple terminal windows open. 
<br>

**Here is an interesting activity:**
1. Create a new Debian virtual machine, but without a desktop environment. This would be a server virtual machine.
2. Then create a snapshot of the virtual machine
3. Then install a desktop environment.
4. Then revert the snapshot and try a different desktop environment.
5. Rinse and repeat.

## How do I practice Lab 4
The point of Lab 4 is to learn how to install and remove programs and how to write and run scripts. So to practice, do exactly that. Install and remove software and write and run scripts. Keep it simple. Just write scripts that use the commands in the presentation. If you feel inclined, look at the Bash scripting articles in cis106.com. Also look at the extra activities, you will find some scripts to write there. 