---
layout: post
title: Lab 3 - Using Ubuntu
---

# {{page.title}}
* [Video HERE](https://youtu.be/lo-UvVs4C8I)

* You have to complete labs 1, and 2 before attempting lab 3.
* Software installation cheat sheet available [here](https://bit.ly/3djIsfy)
  * Video of Presentation available [here](https://youtu.be/_PoTDzMfi0o)
  * Presentation available [here](https://shorturl.at/BDO39)


## Question 1 | Using Ubuntu for basic tasks
Perform the following tasks. The point of this question is to get you familiar with the system. The more you use Ubuntu, the less intimidating it becomes. 

1. Open a terminal and type the `date` command. Take a screenshot of the terminal and highlight the date command. Add some text to the screenshot. Save your screenshot in your `lab3` directory inside your github repository. If the `lab3` directory does not exist, create it.

2. **Create a desktop shortcut for the cis106 website**
* Open a text editor.
* Add the following text:

```
#!/usr/bin/evn xdg-open
[Desktop Entry]
Type=Application
Terminal=false
Exec=/snap/bin/firefox https://cis106.com
Name=cis106
Icon=$HOME/.cis106.png
```
* Save the file with the name: `cis106.desktop` and save it in your Desktop directory.
* On the desktop, right click on the file `cis106.desktop` and enable launching (can also be called: `Allow executing as program`):

![allow launching](/assets/allowLanuching.gif)<br>  

* Now lets add the launcher to our favorites application in the Dock:
  * Run the following command:
```
cp Desktop/cis106.desktop .local/share/applications/
```
  * Now run this command:
```
dconf write /org/gnome/shell/favorite-apps "['firefox_firefox.desktop', 'org.gnome.Nautilus.desktop', 'org.gnome.Terminal.desktop', 'code.desktop', 'cis106.desktop']"
```

1. **Write a Document**
   1. Open Libre office writer.
   2. Go on firefox and copy and paste some text from wikipedia
   3. Convert the file to pdf
   4. Save the pdf file in the `lab3` directory inside your github repository.
2. **Create a Presentation in LibreOffice Impress**
   1. save the presentation in the `lab3` directory
3. **Play around with the settings of Ubuntu**
   1. Click on the System Tray. Open "Settings"
   2. Change the background.
   3. Go to this [site](https://wallhaven.cc/) and download a new wallpaper and add it as a background. 
   4. Play around with the appearance of Ubuntu.
   5. Play around with the notifications
   6. Disable search for everything except software
   7. Change the screen blank to "Never" in the power settings
   8. Take a look at the rest of the settings
4. **Install a Font**
   1. Go to this [website](https://www.nerdfonts.com/font-downloads)
   2. Download the following fonts: 
      1. FiraCode Nerd Font
      2. FiraMono Nerd Font
      3. Inconsolata Nerd Font
      4. InconsolataGo Nerd Font
      5. Iosevka Nerd Font
      6. JetBrainsMono Nerd Font
      7. Lekton Nerd Font
      8. Monofur Nerd Font
      9. Monoki Nerd Font
      10. SpaceMono Nerd Font
5. [Tilix](https://gnunn1.github.io/tilix-web/) is an advance terminal emulator that supports split screen and other advanced features. Open Tilix, and do the following:
   1. Open the app settings, in the Appearance tab, change the theme variant to dark
   2. Add a background image. Like this [one](https://wallpapersmug.com/download/1920x1080/6d3c26/dark-minimal-mountains.png) 
   3. In the Default profile, 
      1. Change the font to any of the font you downloaded earlier. I suggest Fira Mono
      2. Change the Cursor to: Underline
      3. Change the Cursor blink mode: ON
      4. Set the color Scheme to Linux
      5. Adjust the transparency until the background is slightly visible

> This question requires no screenshot

## Question 2 | Using a different desktop environment

1. Install Gnome Classic. GNOME Classic is a GNOME Shell feature and mode for users who prefer a more traditional desktop experience. Read more [here](https://rapurl.live/vgo) 

* Open a terminal and run this command:
```
sudo apt update; sudo apt install gnome-session-flashback -y
```
* Log out and select the gnome classic session in the gear icon. Log in.
![switchingde](/assets/switchinge-de.gif)

> Take a screenshot of your ubuntu system.

> **Note:** *You can go back to Gnome 42 if you want.*
<hr>

## Question 2.1 (Alternative)| Customizing Ubuntu 22.04 Appearance and behavior
> This question is not mandatory is done for the sake of practicing some more. Feel free to ignore this.

1. Turn your virtual machine off and take a snapshot. 
2. In the logging screen select Gnome 42 instead of Gnome Classic Metacity
3. Using the software center, install the application Gnome Extension Manager.
4. Open Extension Manager and install the following extensions:
   1.  Blur My Shell
   2.  Burn My Windows
   3.  CoverFlow Alt-Tab
   4.  Dash to Panel
   5.  Vitals
5. Enable desktop animations using this command: <br> `gsettings set org.gnome.desktop.interface enable-animations true` <br>

> Warning: All of these extensions will make your virtual machine slow. I suggest going back to the default Gnome Session without extensions or disabling the ones that add all the fancy effects. If you are ok with your current setup, leave it as is.

> This question does not require a screenshot

## Question 3 | Installing applications
Using the command line, look for a software to do each of the following tasks and then complete the table with the information you found. Make sure that the application you found is an actual software and not a library. If needed Google the application name to be sure before you install the program. Install and launch the application. 

1. Play a tetris game
2. Play a video file
3. Browse the internet
4. Read your email
5. Play music 

```
| Program purpose     | Package Name | Version |
| ------------------- | ------------ | ------- |
| Play a tetris game  |              |         |
| Play a video file   |              |         |
| Browse the internet |              |         |
| Read your email     |              |         |
| Play music          |              |         |
```
> Take a screenshot of each application open.

<hr>

## Question 4 | Trying out simple commands (CHALLENGE QUESTION)

Almost all Linux commands include manual pages. Manual pages (man page for short) is a documentation that explains the usage of a command. Man pages are not user friendly and are not meant to be guides but references on how a program works. The more you read man pages the more sense they make. It is normal to feel lost in the beginning. 

To read the manual of a command simply type: `man command name` for example, `man date` opens the manual of the date command. 

To move around the man page, use the arrow keys in the keyboard. You can also use the mouse wheel if you are working in a terminal emulator. To get help on how to read the manual press letter `h` to  quit the manual page press `q`

Try the following commands in the terminal
   1. date
   2. free -h
   3. uname -a
   4. du / 

* Use the internet and the manual page to understand **What each command does?**
  
* Install these programs: `fortune cowsay toilet figlet rig lolcat boxes`

* Run these commands on your terminal:
   1. `echo "I Like Linux!" | lolcat`
   2. `fortune | cowsay | lolcat`
   3. `figlet "Linux is cool"`
   4. `fortune | toilet -f term -F border --metal`
   5. `rig | boxes -d boy`

Use the man page to find out what each of these programs do then fill in the table.

```
| command | what it does |
| ------- | ------------ |
| echo    |              |
| fortune |              |
| cowsay  |              |
| lolcat  |              |
| figlet  |              |
| toilet  |              |
| rig     |              |
```

## What will you submit
* Create a markdown file named `lab3.md` and answer all the questions there.
* Submit the URL to the lab3.md file in github and a pdf version of `lab3.md` file.