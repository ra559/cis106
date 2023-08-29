
**Submit a markdown file (Github Link and pdf file just like we did for labs) containing the following:**<br>

1. Screenshot of your virtual machine hardware configuration. The complete settings of your server virtual machine include but are not limited to:
   1. Number of CPUs
   2. RAM
   3. Hard drive
      1. (see Part 1 Virtual Machine from the guide for an example of what I am talking about)
2. Screenshot of the log in screen to the server right after you log in to the server
3. Screenshot of you connecting to the server with ssh from your Ubuntu Desktop. Alternatively, you can use a gif. Here is a nice gif recorder that works from the browser: https://gifcap.dev/ if you need to make the gif smaller in size, use this compressor: https://ezgif.com/optimize
4. Screenshot of the following commands: 
   1. `systemctl status apache2 --no-pager`
   2. `systemctl status sshd --no-pager`
   3. `systemctl status ufw --no-pager`
5. Screenshots of the last 10 lines of the following log files:
   1. Apache: `access.log`
   2. Apache: `error.log`
   3. SSH: `auth.log`
6. Screenshot of the following configuration:
   1. `sites-available` config file
   2. `apache2.conf`
7. A screenshot like this one where you show the ip address of your server and the website being accessed all from the Ubuntu Desktop Virtual machine
![example](https://cis106.com/assets/sample-site-preview.png)

Each screenshot should have a description of what the picture is. A simple sentence is enough. For example, "This is a screenshot of Apache log file: access.log"

## Deliverable 2: Working with Ubuntu Server and Apache
> **Video playlist here[here](https://youtu.be/F0DdCC5Lq3A)**
> **Detail instructions with screenshots available [here](https://cis106.com/project/webserverProject/)
For deliverable 2, students will follow a playlist of youtube videos where we complete the following tasks:
1. Create a virtual machine for the server
2. Install Ubuntu Server
3. Install Apache2
4. Setup the firewall
5. Setup SSH to manage the server from the client virtual machine
6. Setup virtual hosts

Here you can find an example of how the document should look like.

> [Deliverable 2 example]()

As you can see, the student will submit a markdown file and pdf file along side the URL to deliverable 2. This file must contain screenshots and a brief description of each step completed.

## Deliverable 3: Hosting the site
> **Video [here](https://youtu.be/F0DdCC5Lq3A)**
For deliverable 3, students will write a simple html page. The student will do the following:
1. Create a simple markdown file about anything. The following are good examples:
2. The student will then convert the markdown file to HTML and will add bootstrap to the HTML.
3. The student will then upload the html page to the server.

Here you can find an example of how the document should look like.

> [Deliverable 3 example]()

As you can see, the student will submit a markdown file and pdf along side the url to deliverable 3. This file must contain a screenshot of the web browser open in the client virtual machine showing the website open. This is the only thing required for this deliverable. Adding a description is optional. 

## Deliverable 4: Final Deliverable
> **Video [here](https://youtu.be/F0DdCC5Lq3A)**
For deliverable 4, the student will compile all deliverables into a single document and add a table of contents. The file will be converted to pdf and the student will submit the markdown, pdf file, and the link to the final deliverable url in the students github account.

Here you can find an example of how the document should look like.

> [Deliverable 4 example]()

As you can see, the student will submit a markdown file and pdf along side the URL to deliverable 4. The file looks like a complete project with everything that has been done so far. 