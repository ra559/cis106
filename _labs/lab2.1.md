---
layout: post
title: Lab 2.1 - Performing Some Tasks In Ubuntu 20.04
---

> This lab requires no submission. It is meant for practice only to help you move around in Ubuntu

# Perform these tasks
1. **Take a screenshot**
   1. Since flameshot is installed in the system already and has replaced the gnome default a screenshot tool. Simply press the print screen key in your keyboard.
   2. There are other screenshot tools for linux. I advise you to research them for your own edification 
2. **Create a desktop shortcut for any web site**
   1. Open a text editor.
   2. Add the following text:
```
#!/usr/bin/evn xdg-open
[Desktop Entry]
Type=Application
Terminal=false
Exec=/usr/bin/firefox https://cis106.com
Name=cis106
Icon=/home/student/.cis106.png
```
> This will create a launcher for the course website.
   3. Save the file with the name: cis106.desktop and save it in your Desktop directory.  
3. **Write a Document**
   1. Open Libre office writer.
   2. Go on firefox and copy and paste some text from wikipedia
   3. Convert the file to pdf
4. **Create a Presentation in LibreOffice Impress**
5. **Install a new theme**
   1. Download a GTK theme, icon theme, cursor theme, and wallpaper from this [site](https://www.gnome-look.org/browse/)
   2. Create 2 hidden directories in your home directory: `.themes` and `.icons`
   3. Decompress the files you downloaded earlier.
   4. Move the theme to the `.themes` directory, the icon to the `.icons` directory and the cursor theme to the `.icons` directory
   5. Open the application `tweaks` and change to your new theme and icon. 
