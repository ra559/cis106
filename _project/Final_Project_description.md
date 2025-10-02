---
layout: "page"
title: Final Project Description
---

# {{page.title}}

## Description
The goal of this project is to host a web server using Debian 13, Apache, and VirtualBox as the hypervisor. This project will expose students to the following technologies:

* Virtualization (VirtualBox/UTM)
* Debian 13 - No Desktop Environment
* Apache Web Server
* SSH
* HTML
* Markdown
* VS Code

The project is divided into 3 deliverables. It is done this way, so you can work slowly through the semester as you gain more knowledge working with Linux. This also allows you to earn a grade as the semester progresses because the final project grade is divided equally among the 3 deliverables. The final project is 15% of your final grade, however, this can change, therefore do not skip any deliverable!

Each deliverable will be submitted as a Markdown document in your GitHub Repository. You will also be required to submit a PDF version of each deliverable, just in case something happens to your GitHub Repository. 

**No late submission will be accepted.**

## Requirements
* A virtual machine/PC where you can install Debian. 

## Deliverable 1: Project's Requirements
The goal of deliverable 1 is to demystify the task. You are required to familiarize your self with the technologies that we will use to complete the project.

For **deliverable 1**, we are going to accomplish the following tasks:

1. Answer The following questions:
* What is a web server? (In the context of software Ex. Apache)
* What are some different web server applications? Include definitions, project's website/where to download it, which operating system is available for and its latest version. 
* What is virtualization?
* What is virtualbox?
* What is a virtual machine?
* In the context of virtualization, what does host machine and guest machine mean?
* What is Debian?
* What is a firewall?
* What is SSH?
* What is an IP Address?
* What is a network mask?
* What is a port? (in the context of networking/computers)
* What is port forwarding?
* What is localhost? (in the context of networking/computers)
* What does this ip address represent 127.0.0.1?
* What is Git?
* What is GitHub? 
2. Read the tutorial. Write down every concept you don't understand and research.


To demonstrate the completion of deliverable 1, the student needs to submit a markdown and pdf file where all the questions are answered. Here you can find an example of how the document should look like.


###  How am I going to grade deliverable 1?
* Your markdown file should contain:
  * Proper markdown syntax
  * Well organized and easy to read
  * If you used any images, properly resized them. Use an image resizing tool or HTML to resize them so that they don't break the formatting.
  * Here is an example of how I expect the formatting to be:
    * [Final Project example for deliverable 1](https://github.com/robertalberto0713/cis106/blob/main/final_project/deliverable1/deliverable1.md)


### What will you submit for Deliverable 1
1. Convert the deliverable1.md file to pdf and html
2. In blackboard, submit the pdf file and the URL to the markdown file as it appears in Github. Just like you do for your labs/week reports/notes

<hr>


##  Deliverable 2 Setting Up The Web Server

> *Video:[Deliverable 2 Latest Video 0-100!](https://youtu.be/6L0OXwMT-tg)

### Resources:
* [Apache Commands You Should know](https://linuxize.com/post/apache-commands-you-should-know/)
* [IP Command With Examples](https://www.cyberciti.biz/faq/linux-ip-command-examples-usage-syntax/)
* [UFW Essentials](https://www.digitalocean.com/community/tutorials/ufw-essentials-common-firewall-rules-and-commands) 
* [How To Troubleshoot Common Apache Errors](https://www.digitalocean.com/community/tutorials/how-to-troubleshoot-common-apache-errors)

Follow [this guide](https://cis106.com/guides/ApacheWebserver/) to install Debian with a web server. After completing the installation, which is only steps 1 to 6, answer the following questions. You must **type your answer and take screenshots** of the commands and their output.

1. What are the server hardware specifications (virtual machine settings)? **Take a screenshot - don't type it!**
2. What is the Debian Login Screen? **(Take screenshot - do not type it!)**
3. What is the IP address of your Debian Server Virtual Machine? **(type the command and show a screenshot of the commands output)**
4. How do you work with the Firewall in Debian? **(Type and explain what each command does)**
   1. How do you check if the Firewall is running? 
   2. How do you disable the Firewall?
   3. How do you add Apache to the Firewall?
5. What different commands do we use to work with Apache? **(Type and explain what each command does and include a screenshot!)**
   1.  What is the command you use to check if Apache is running?
   2.  What is the command you use to stop Apache?
   3.  What is the command you use to restart Apache?
   4.  What is the command used to test Apache configuration?
   5.  What is the command used to check the installed version of Apache?
   6.  What are some common configuration files for Apache?
   7.  Where does Apache store logs?
   8.  What are some basic commands we can use to review logs?
6. Not all the answers are in the guide. Some researching and testing is required
7. Make sure the screenshots are properly formatted. Not too big and not too small. Use either a resizing tool or HTML.

<br>

To demonstrate the completion of deliverable 2, the student must submit a markdown and pdf file where all the questions are answered.


### How am I going to grade deliverable 2?
* Your markdown file should contain:
  * Proper markdown syntax
  * Well organized and easy to read
  * Images properly resized. Use a tool or HTML to resize them so that they don't break the formatting.
  * All required screenshot are included

## Deliverable 3 Adding content to the server

1. Use Step 7 and 8 from [the guide](https://cis106.com/guides/ApacheWebserver/) to learn how to add content to your web server.
   1. Note: When you get to the part where I am writing a resume, you can just copy/paste from lab 1 Challenge question. There is no need to re-invent the wheel.
2. After you have learned how to add content to your web server, make sure that you remove every file inside the `/var/www/html/` directory. You did Step 7 and 8 just to learn how to add files to your server. We want a clean `/var/www/html/` directory to continue.
3. Now, You will create a new repository for a website you will build. Pick any topic you like. Your website should include the following elements:
   1. At lest 3 sections
   2. Images
   3. Tables
4. You will write this website in markdown and then convert it to HTML. After you have converted the website to html, embed this [style sheet](https://raw.githubusercontent.com/robertalberto0713/cis106/refs/heads/main/final_project/deliverable2/style.css) so that it looks better than just plain HTML.
   1. Once the HTML is generated, open the html file and insert this line to load the style sheet: `<link rel="stylesheet" href="style.css">`
   2. You will place that line right after the last closing `</style>` tag and before the `<script src="https://unpkg.com/mermaid/dist/mermaid.min.js"></script>` line. Here is an [example](https://raw.githubusercontent.com/robertalberto0713/cis106/refs/heads/main/final_project/deliverable2/deliverable2.html#:~:text=%3Clink%20rel%3D%22stylesheet%22%20href%3D%22style.css%22%3E)
   3. And here is a [screenshot](https://github.com/robertalberto0713/cis106/blob/main/final_project/deliverable3/stylesheet_location.png)
5. These are the general steps to guide you:
   1. Create a repository in Github - Name it whatever you want
   2. Clone the repository in your Debian Desktop Virtual Machine
   3. Open the repository in VS Code and then create the markdown file
   4. Name your markdown file `index.md` 
   5. Convert the markdown file to HTML
   6. Add the stylesheet to your HTML file
   7. Commit and push your changes to Github
   8. Clone the repository in your Server Virtual machine under the directory `/var/www/html/`
6. Confirm, in your Host OS, that your web server is hosting the website you just created. The URL should be one of the following:
   1. `http://localhost:8080/name-of-repository/index.html` (Port Forwarding)
   2. `http://SERVER-IP-ADDRESS/name-of-repository/index.html` (Bridge Network Adapter)
   3. Note: I suggest that you open the site on an Incognito Window to avoid cache


### How am I going to grade deliverable 3?
* Your markdown file for deliverable 3 should simply contain:
  * Screenshots of your web site running on your web server (At least 2 screenshots)
  * The link to your web site repository (the one you cloned in your server)