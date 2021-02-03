# How to create a website launcher in Ubuntu 20.04

## Problem description
I want to launch Google Slides, Google Docs, and Google Sheets from the Gnome Menu.

## Solution
1. Create a file with the name of the website you want to launch in the directory: `/usr/share/applications/` with the `.desktop` extension
   1. In my case I will create 3 files: `Slides, Docs, Sheets`
   2. Use this command: `sudo touch /usr/share/applications/{Slides,Docs,Sheets}.desktop`
2. Inside each file, place the following lines of text:
### In Slides.desktop
```
[Desktop Entry]
Type=Application 
Terminal=false
Exec=/snap/bin/chromium 'https://docs.google.com/presentation/u/0/'
Name=Slides
Comment=Launcher for Google Slides
Icon=/usr/share/icons/.customIcons/googleslides.png
```
### In Docs.desktop
```
[Desktop Entry]
Type=Application 
Terminal=false
Exec=/snap/bin/chromium 'https://docs.google.com/document/u/0/'
Name=Docs
Comment=Launcher for Google Docs
Icon=/usr/share/icons/.customIcons/googledocs.png
```
### In Sheets.desktop
```
[Desktop Entry]
Type=Application 
Terminal=false
Exec=/snap/bin/chromium 'https://docs.google.com/spreadsheets/u/0/'
Name=Sheets
Comment=Launcher for Google Docs
Icon=/usr/share/icons/.customIcons/googlesheets.png
```
> **Notes:**
> `Exec` is the command that will be launched when you click on the launcher. You need to use absolute path to call the commands. In my case, I have Chromium installed as snap package, therefore I will use the following command to run Chromium and open the designated website: `/snap/bin/chromium 'https://docs.google.com/presentation/u/0/'` if you want to know the absolute path of your web browser, use the `whereis` command followed by the web browser to see its full path.
> `Icon` represents the absolute path of the icon file/img used by the launcher. I downloaded the icon of each file and placed it in a directory inside `/usr/share/icons`
3. Make the files executable.
   1. In my case:  `sudo chmod u+x /usr/share/applications/{Slides,Docs,Sheets}.desktop`