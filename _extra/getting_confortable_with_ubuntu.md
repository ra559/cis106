---
layout: page
title: Getting Comfortable with Ubuntu 24.04
---

# {{page.title}}


- [{{page.title}}](#pagetitle)
  - [Question 1: Working With Files](#question-1-working-with-files)
    - [Part 2 - Working with files](#part-2---working-with-files)
  - [Question 2: Exploring System Settings](#question-2-exploring-system-settings)
  - [Question 3: Installing Applications Graphically](#question-3-installing-applications-graphically)
  - [Question 4: Editing a document](#question-4-editing-a-document)
  - [Question 5: Installing Gnome Extensions](#question-5-installing-gnome-extensions)
  - [What will you submit for extra credit](#what-will-you-submit-for-extra-credit)


> the goal of this lab/article/page is to give you exposure to using Ubuntu 24.04 (Gnome Desktop Environment)
> We Will be performing basic computer task

## Question 1: Working With Files
* 1- Open the file manager (files) and explore its interface. Use the image below for help.
<figure> 
    <img alt="Gnome Files Explained" src="https://docs.google.com/drawings/d/e/2PACX-1vTOX72_4rHSKoPwHDEjGcBzmgYp-RjnV2OqrjtPmHw8ne0GJ8arXbWDRTYt9_H2HnH5mhxS2OKHz5zD/pub?w=2005&h=1070"/>
    <figcaption> The information in this image was extracted from <a href="https://documentation.suse.com/sles/15-SP6/html/SLES-all/cha-gnomeuser-use.html">OpenSuse Documentation.</a></figcaption>
</figure>

* 2- Practice the following shortcuts:

| Key Combination           | Description                                                                                |
| ------------------------- | ------------------------------------------------------------------------------------------ |
| `Alt` + `⬅` & `Alt` + `➡` | Go backward/go forward                                                                     |
| `Alt` +  `↑`              | Open the parent directory                                                                  |
| `←`, `→`, `↑`, `↓`        | Select an item                                                                             |
| `Alt` + `↓` or `Enter`    | Open an item                                                                               |
| `Alt` + `Enter`           | Open an item's Properties dialog                                                           |
| `Shift` + `Alt` `↓`       | Open an item and close the current directory                                               |
| `Ctrl` + `L`              | Toggles the path bar from buttons to path                                                  |
| `Alt` + `Home`            | Opens the home directory                                                                   |
| any number or letter      | Starts a search within the current directory                                               |
| `Ctrl` + `T`              | Start a search within the current directories and their subdirectories                     |
| `Del`                     | Moves the selected file or directory to the trash, from which it can be restored with Undo |

 <figcaption> The information in this image was extracted from <a href="https://documentation.suse.com/sles/15-SP6/html/SLES-all/cha-gnomeuser-use.html#sec-gnomeuser-use-nautilus-shortcuts">OpenSuse Documentation.</a></figcaption>


* 3- In your home directory, create a new directory called Games.
* 4- Inside the Games directory, create 3 more directories called: `fps`,`action`,`rpg`
* 5- Delete the Games directory
* 6- Open the Trash and restore the Games directory
* 7- Delete the Games directory again
* 8- Empty the Trash


<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" 
    onclick="var x = document.getElementById('files-practice1');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">Show Solution</button>
<p align="center" style="display:none" id='files-practice1'><img src="/assets/extras/gcu/files-practice.gif"/></p>

> If you are doing this activity for the extra credit. Take a screenshot of your file manager with your trash empty. That will be the proof of submission for question 1

### Part 2 - Working with files

* 1- Open the file manager if it is not open
* 2- Use Firefox or any other web browser of your choice to download the following this zip file: [https://cis106.com/assets/extras/gcu/site.zip](/assets/extras/gcu/site.zip)
* 3- Decompress/unzip the file in your Downloads directory.
* 4- Inside the Downloads directory you should now have a new directory called `site`
* 5- Inside the site directory you should have 3 files:
  * `site.html`
  * `SCRIPT.js`
  * `STYLE.css`

<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" 
    onclick="var x = document.getElementById('files-practice2');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">Show Solution</button>
<p align="center" style="display:none" id='files-practice2'><img src="/assets/extras/gcu/files-practice2.gif"/></p>


* 6- Use the website, [Pexel.com](https://www.pexels.com/) to download 3 Landscape format images. 
* 7- Move the images to the `site` directory
* 8- Rename the images to: `image1.jpg`, `image2.jpg`, and `image3.jpg`
* 9- Open the file `site.html`. Notice that the website looks broken. 
* 10- Rename the files SCRIPT.js and STYLES.css to:
  * `STYLE.css` => `style.css`
  * `SCRIPT.js` => `script.js`
* 11- Refresh the website site.html and you will notice that now it looks as expected. This is because Linux is case sensitive. So STYLES.css is not the same as styles.css 


<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" 
    onclick="var x = document.getElementById('files-practice3');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">Show Solution</button>
<p align="center" style="display:none" id='files-practice3'><img src="/assets/extras/gcu/files-practice3.gif"/></p>


> If you are doing this activity for the extra credit. Take a screenshot of your file manager with your the site directory open. Take another screenshof of Firefox showing the site. Those 2 will be the proof of submission for question 1 part 2


## Question 2: Exploring System Settings
There are two ways of accessing the settings app:
* Via the system menu:

<figure> 
    <img alt="Gnome Files Explained" src="https://help.ubuntu.com/stable/ubuntu-help/figures/shell-exit.png"/>
    <figcaption>
    The information in this image was extracted from <a href="https://help.ubuntu.com/stable/ubuntu-help/shell-introduction.html.en">Ubuntu's Documentation.</a>
    </figcaption>
</figure>

* Searching for Settings using the applications launcher:

<figure>
    <img src="https://docs.google.com/drawings/d/e/2PACX-1vQRSlMuCrPw3AGyS5iyVWCekaoZkY6KGYqGVU_NT_dATxSQNWA_eUP4eEnXXsBIsg-RTZv65tULmVRL/pub?w=1427&h=1048"/>
</figure>

* Use the settings app to perform the following tasks:
  * **1- Appearance:**
    * Choose light or dark mode
    * Choose an accent color you like
    * Change the wallpaper
      * You can download a wallpaper from the internet if you want or use a predefined one.

<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" 
    onclick="var x = document.getElementById('appearance');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">Show Solution</button>
<p align="center" style="display:none" id='appearance'><img src="/assets/extras/gcu/appearance.gif"/></p>


  * **2- Ubuntu Desktop:**
    * Play around with the setting of the Desktop Icons and Dock

<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" 
    onclick="var x = document.getElementById('ubuntu-desktop');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">Show Solution</button>
<p align="center" style="display:none" id='ubuntu-desktop'><img src="/assets/extras/gcu/ubuntu-desktop.gif"/></p>

  * **Keyboard:**
    * Add a custom shortcut for the following applications:
      * Firefox
        * **name:** Web Browser
        * **command:** firefox
        * **shortcut:** Super Key (Windows key) + W (or any other key combination you want)
      * Tilix
        * **name:** terminal
        * **command:** tilix
        * **shortcut:** Super key (windows key) + Enter (or any other key combination you want)
      * Files
        * **name:** File manager
        * **command:** nautilus
        * **shortcut:** Super key (windows key) + F (or any other key combination you want)
      * VS Code
        * **name:** VS Code
        * **command:** code
        * **shortcut:** Super + C (or any other key combination you want)
      * Geany
        * **name:** Text Editor
        * **command:** geany
        * **shortcut:** Super + t (or any other key combination you want)
    * To add custom shortcut, follow these steps:
      * 1- Click on Keyboard and then scroll down to "View and Customize Shortcuts"
      * 2- In the dialog that pops up, scroll down to "Custom Shortcut"
      * 3- Click on "Add Shortcut..."


<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" 
    onclick="var x = document.getElementById('shortcuts');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">Show Solution</button>
<p align="center" style="display:none" id='shortcuts'><img src="/assets/extras/gcu/shortcuts.gif"/></p>


> If you are doing this activity for the extra credit. Take a screenshot of your desktop showing that you changed the wallpaper or the position of the doc. Take another screenshot showing your custom shortcuts. That will be the proof of submission for question 2

## Question 3: Installing Applications Graphically  
To install applications graphically, we use the Software Center also known as the App Center. Let's install a couple of applications:

1. Open the App Center
2. Search for LibreOffice and install it - This is a productivity suite just like Microsoft Software
3. Search for a Tetris game. Install one of the options.
4. Wait until the apps finish installing
5. Open the LibreOffice Writer and close it
6. Open the tetris game and close it


<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" 
    onclick="var x = document.getElementById('installApps');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">Show Solution</button>
<p align="center" style="display:none" id='installApps'><img src="/assets/extras/gcu/installApps1.gif"/><br><img src="/assets/extras/gcu/installApps2.gif"/></p>


> If you are doing this activity for the extra credit. Take a screenshot of the tetris game you installed. That will be the proof of submission for question 3


## Question 4: Editing a document

In this question we will be editing word documents and pdf files. 

1. Download this [word document](https://www.mtsac.edu/webdesign/accessible-docs/word/example03.docx)
2. Open the word document in LibreOffice. 
3. Edit the document and export it to pdf
4. Open the PDF file in libre Office Draw
5. Edit the PDf and export it again


<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" 
    onclick="var x = document.getElementById('editDoc');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">Show Solution</button>
<p align="center" style="display:none" id='editDoc'><img src="/assets/extras/gcu/editDoc.gif"/></p>


> If you are doing this activity for the extra credit. Take a screenshot of the edited pdf document showing your edits. That will be the proof of submission for question 4


## Question 5: Installing Gnome Extensions
Gnome extensions allow you to add extra functionality to your desktop environment. As part of the initial setup for the class, you installed the gnome extension app that allows you to download extensions. 

1. Open the app "Extensions Manager"
2. Search for the extension "Caffeine" and install it. This extension is used for preventing your computer to go to sleep. To use the extension, click on the system menu. You will see a new icon ( a cup of coffee).
3. Search for the extension "Apps Menu" by "Fmuelliner" and install it. This will give you a windows like menu at the top left corner.
4. You can disable or uninstall any Extension you want. Keep in mind that system updates make break some extensions. I recommend keeping the number of extensions to a minimum. 


<button class="btn btn-primary fs-5 mb-4 mb-md-0 mr-2" name="SolutionShow" 
    onclick="var x = document.getElementById('extensions');if (x.style.display === 'none') {x.style.display = 'block';} else {x.style.display = 'none';}">Show Solution</button>
<p align="center" style="display:none" id='extensions'><img src="/assets/extras/gcu/extensions.gif"/></p>


> If you are doing this activity for the extra credit. Take a screenshot of your desktop showing the extensions. That will be the proof of submission for question 5


## What will you submit for extra credit
1. In your cis106 directory/local repository, create a new directory called "ExtraCredit" (One word no spaces in file names pleases!)
2. Inside "ExtraCredit", create another directory called "extra1"
3. Open your cis106 directory/local repository in VS Code
4. Inside "extra1" create a markdown file called "extra1.md"
5. Add all the screenshots to "extra1.md" using proper markdown syntax and labeling each screenshot using heading 2 formatting. Save the markdown file.
6. Your markdown document should start with the following heading1: `# Extra Credit 1: Getting used to the Gnome Desktop Environment`
7. Convert your file to PDF
8. Run the github commands, in VS Code Terminal, to push all your changes to github:
   1. `gid add .`
   2. `git commit -m "Completed Extra 1"`
   3. `git push`
9. In blackboard submit the following:
   1.  The URL of `extra1.md` 
   2.  The PDF file `extra1.pdf`

