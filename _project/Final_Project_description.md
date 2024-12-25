---
layout: "page"
title: Final Project Description
---

# {{page.title}}

<!-- vscode-markdown-toc -->
* 1. [Description](#Description)
* 2. [Requirements](#Requirements)
* 3. [Deliverable 1: Project's Requirements](#Deliverable1:ProjectsRequirements)
	* 3.1. [How am I going to grade deliverable 1?](#HowamIgoingtogradedeliverable1)
* 4. [Deliverable 2 Installing Ubuntu Server And Apache](#Deliverable2InstallingUbuntuServerAndApache)
	* 4.1. [Resources:](#Resources:)
	* 4.2. [How am I going to grade deliverable 2?](#HowamIgoingtogradedeliverable2)
* 5. [Deliverable 3 Hosting a simple website](#Deliverable3Hostingasimplewebsite)
	* 5.1. [Option 1: Resume](#Option1:Resume)
	* 5.2. [What will you submit for option 1:](#Whatwillyousubmitforoption1:)
	* 5.3. [Option 2: A simple site](#Option2:Asimplesite)
	* 5.4. [What will you submit for option 1:](#Whatwillyousubmitforoption1:-1)
	* 5.5. [How am I going to grade deliverable 2?](#HowamIgoingtogradedeliverable2-1)

<!-- vscode-markdown-toc-config
	numbering=true
	autoSave=true
	/vscode-markdown-toc-config -->
<!-- /vscode-markdown-toc -->


##  1. <a name='Description'></a>Description
The goal of this project is to host a simple website (1-page site) in a web server. You will be installing Ubuntu Server in a virtual machine and managing the server from another computer. That computer can be your Host Machine (Windows) or the Ubuntu Desktop virtual machine that we use in the course. The project will give you basic/initial exposure to the following technologies:

* Virtualization (VirtualBox)
* Ubuntu Server
* Apache
* SSH
* HTML
* Markdown
* VS Code

The project is divided into 3 deliverables. It is done this way, so you can work slowly through the semester as you gain more knowledge working with Ubuntu Desktop. This also allows you to earn a grade as the semester progresses because the final grade is divided equally among the 3 deliverables. The final project is 20% of your final grade, however, this can change, therefore do not skip any deliverable!

Each deliverable will be submitted as a Markdown document in your GitHub Repository. You will also be required to submit a PDF version of each deliverable, just in case something happens to your GitHub Repository. 

No late submission will be accepted. This project is due on Dec 21st.

##  2. <a name='Requirements'></a>Requirements
* A virtual machine/PC where you can install Ubuntu Server. A Virtual machine will be preferred since everything in the tutorials will be done in a virtual machine.

This is the main tutorial we will follow:
* [How To Install the Apache Web Server on Ubuntu 22.04](https://rapurl.live/ch3)

Here are some sources you can use to investigate:
* [What is a Web Server](https://rapurl.live/pbe)
* [What is SSH](https://rapurl.live/9bg)
* [What is Ubuntu Server](https://rapurl.live/57a)
* [Open Source Web Servers](https://rapurl.live/pkm)

##  3. <a name='Deliverable1:ProjectsRequirements'></a>Deliverable 1: Project's Requirements
> **Old Video with more details is available [here](https://youtu.be/F0DdCC5Lq3A)** <br>
> **Newer and shorter video is available [here](https://youtu.be/CYasEYqKq-s)**<br>
> **[Image resize tool](https://www.simpleimageresizer.com/upload)<br>
> **Example of how the deliverable should look like [here](https://github.com/linuxworkshop67/cis106/tree/main/finalProject)**

For **deliverable 1**, we are going to accomplish the following tasks:
1. Read the tutorial. Write down every concept you don't understand and research them.
2. Answer The following questions:
* What is a web server? Hardware and software side
* What are some different web server applications?
* What is virtualization?
* What is virtualbox?
* What is a virtual machine?
* What is Ubuntu Server?
* What is a firewall?
* What is SSH?

To demonstrate the completion of deliverable 1, the student needs to submit a markdown and pdf file where all the questions are answered. [Here you can find an example of how the document should look like.](https://github.com/linuxworkshop67/cis106/blob/main/finalProject/deliverable%201/deliverable1.md)

###  3.1. <a name='HowamIgoingtogradedeliverable1'></a>How am I going to grade deliverable 1?
* Your markdown file should contain:
  * Proper markdown syntax
  * Well organized and easy to read
  * Images properly resized. Use a tool or HTML to resize them so that they don't break the formatting.
  * A table displaying the different web server software you found with their respective license and website where we can learn more about the project. See the [example](https://github.com/linuxworkshop67/cis106/blob/main/finalProject/deliverable%201/deliverable1.md). 
  
<hr>

##  4. <a name='Deliverable2InstallingUbuntuServerAndApache'></a>Deliverable 2 Installing Ubuntu Server And Apache

> *Video:[Deliverable 2 Latest Video 0-100!](https://youtu.be/6L0OXwMT-tg)

###  4.1. <a name='Resources:'></a>Resources:
* [Apache Commands You Should know](https://linuxize.com/post/apache-commands-you-should-know/)
* [IP Command With Examples](https://www.cyberciti.biz/faq/linux-ip-command-examples-usage-syntax/)
* [UFW Essentials](https://www.digitalocean.com/community/tutorials/ufw-essentials-common-firewall-rules-and-commands) 
* [How To Troubleshoot Common Apache Errors](https://www.digitalocean.com/community/tutorials/how-to-troubleshoot-common-apache-errors)

Follow [this guide](https://cis106.com/project/Final_project_deliverable2_web_server/) to install Ubuntu Server and Apache. After completing the installation, answer the following questions. You must **type your answer and take screenshots** of the commands and their output.

1. What are the server hardware specifications (virtual machine settings)? **Take a screenshot - don't type it!**
2. What is Ubuntu server log in screen? **Take screenshot - do not type it!**
3. What is the IP address of your Ubuntu Server Virtual Machine? 
4. How do you enable the Ubuntu Firewall?
5. How do you check if the Ubuntu Firewall is running?
6. How do you disable the Ubuntu Firewall?
7. How do you add Apache to the Firewall?
8. What is the command you used to install Apache?
9. What is the command you use to check if Apache is running?
10. What is the command you use to stop Apache?
11. What is the command you use to restart Apache?
12. What is the command used to test Apache configuration?
13. What is the command used to check the installed version of Apache?

**For every unique command (ip, ufw, systemctl, etc...) that answers the question you must provide:**
1. Definition of the command 
2. Explain how the command works (syntax) 
3. Some examples (2 or 3). Use inline code formatting or code block formatting when appropriate.
4. Screenshot of the examples. Make sure the screenshots are properly formatted. Not too big and not too small. Use either a resizing tool or HTML.

<br>
> Reviewing logs is an essential part of system administration; read the tutorial **"How To Troubleshoot Common Apache Errors"**. After you have finished reading the tutorial, answer the following questions:
<br>

1. What are the most common commands to troubleshoot Apache errors? Provide a brief description of each command. 
2. Which are the common Apache Log Files, and what are they used for? Provide examples and screenshots of where they are located in you server, you can use any of he following commands: <br> 
`cat`,`head`,`tail`


To demonstrate the completion of deliverable 2, the student must submit a markdown and pdf file where all the questions are answered. [Here](https://github.com/linuxworkshop67/cis106/blob/main/finalProject/deliverable%202/deliverable2.md) you can find an example of how the document should look like.


###  4.2. <a name='HowamIgoingtogradedeliverable2'></a>How am I going to grade deliverable 2?
* Your markdown file should contain:
  * Proper markdown syntax
  * Well organized and easy to read
  * Images properly resized. Use a tool or HTML to resize them so that they don't break the formatting.
  * Screenshot of your web server virtual machine settings (hardware)
  * Screenshot of the first screen that shows up when you log in to your server
  * Screenshot of the different apache log files


##  5. <a name='Deliverable3Hostingasimplewebsite'></a>Deliverable 3 Hosting a simple website

> *Video*:[Deliverable 3 Latest Video 0-100!](https://youtu.be/3MRK9zbBcQY)

For this deliverable, you have 2 options; Pick one! 

###  5.1. <a name='Option1:Resume'></a>Option 1: Resume 
* Create a simple resume of yourself. Here is an example of the kind of information to include:
  * http://resume-template.joelglovier.com/ 
* You do not need to include a photo of yourself, instead use a stock photo
  * You can find stock photos here: https://www.pexels.com/ 
* Once you have created your markdown file, convert the file to HTML.
* Compress all the files into a single archive so that they are easier to move.
* Send the files to the server.
* Once you have transferred the archive to the server, decompress the archive and move the files to their respective folder so that they can be served by the web server.
* Open your website in the browser of your host computer or Ubuntu desktop computer and take a screenshot of the browser.

###  5.2. <a name='Whatwillyousubmitforoption1:'></a>What will you submit for option 1:
* To demonstrate the completion of this deliverable, submit the following:
  * The URL to the GitHub repository in the final project folder where I can find all the files you used for creating the site including the markdown file, HTML file and the images. 
  * The screenshot of your website running. See the example [here](https://github.com/linuxworkshop67/cis106/blob/main/finalProject/deliverable%203/option%201%20example/deliverable3.PNG). 
  * <b style="color: red">I need to see the entire browser window with the ip address of your server in the URL bar showing your website running!</b>


###  5.3. <a name='Option2:Asimplesite'></a>Option 2: A simple site 
* Create a markdown file that contains instructions on how to set up a Web Server in Ubuntu Server. Include screenshots where you find them necessary. Make sure to explain each command that is necessary. Your Deliverable must contain the following:
    * Introduction (Keep it simple)
    * Basic terminology that the reader must know
    * Step-by-step instructions
    * Step 1: Installing VirtualBox
    * Step 2: Installing Ubuntu Server
    * Step 3: Installing Apache
    * Step 4: Setting up the firewall
* After creating the markdown file, convert the markdown file to PDF. 
* Rename the PDF to index.html
* Compress all the files, including images, in an archive and transfer the file to your web server
* Decompress the archive in your web server and move all the files to their proper destination. 
* Open your site in the host computer or Ubuntu desktop computer and take a screenshot. 

###  5.4. <a name='Whatwillyousubmitforoption1:-1'></a>What will you submit for option 1:

* To demonstrate the completion of this deliverable, submit the following:
    * The URL to the GitHub repository in the final project folder where I can find all the files you used for creating the site including the markdown file, HTML file and the images. 
    * The screenshot of your website running
* <b style="color: red">I need to see the entire browser window with the ip address of your server in the URL bar showing your website running!</b>


###  5.5. <a name='HowamIgoingtogradedeliverable2-1'></a>How am I going to grade deliverable 2?
* Your github repository deliverable 3 directory/folder must contain:
  * All the files used for making the markdown and html file
  * A screenshot of our html file running on your web server. See example [here](https://github.com/linuxworkshop67/cis106/blob/main/finalProject/deliverable%203/option%201%20example/deliverable3.PNG) 