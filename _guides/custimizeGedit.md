---
layout: post
title: Customize Gedit
---
# {{page.title}}

## Video:
* [Here](https://youtu.be/SgeB_8EgAMk)

## Synopsis
Make Gedit feel and look more like an IDE than a text editor

## What is Gedit
Gedit is a text editor designed for the GNOME desktop environment. It was GNOME's default text editor and part of the GNOME Core Applications until GNOME version 42 in March 2022, which changed the default text editor to GNOME Text Editor.

## How to install Gedit
If you are using Gnome, gedit is installed by default. This is the default text editor for Gnome. To install gedit: `sudo apt install gedit gedit-plugins -y` If you are using gnome, install the plugins package otherwise the plugins won't be available. Gnome Text Editor and gedit are essentially the same app.


## Installing and using plugins
1. Open gedit (text editor) and go to preferences > Plugins
2. Enable the following plugins:
   1. **Bracket Autocompletion**: will auto close brackets, parenthesis, and quotes
   2. **Code Comment**: will allow us to do multi line commenting. (CTRL + M and CTRL + Shift + M)
   3. **Embedded terminal**: Will give us a quick terminal at the bottom of the gedit window.
   4. **File Browser Panel**: Will give us a file manager to the left of the window.
   5. **Multi Edit**: will give us multi line editing.
   6. **Open Links**: will allow us to open URLs
   7. **Quick highlight**: Will automatically highlight all instances of the highlighted word
   8. **Quick open**: with CTRL + Alt + o ,opens a menu to open recently edited files
   9. **Session Saver**: saves the session so when you close gedit and open it again, it opens on the last session
   10. **Text Size**: will us to increase or decrease the size of the text using CTRL + and CTRL -
   11. **Word completion**: Will enable autocomplete of common words in the script


<p align="center">
  <img src="/assets/install_plugins.gif"/>
</p>

<p align="center">
  <img src="/assets/plugin_install.gif"/>
</p>



## Enabling functionality
1. In the view tab of the preferences window enable the following:
   1. Display line numbers
   2. Display right margin at column 80
   3. Display overview map
   4. **In the editor tab:**
      1. Set the tab width to 4 spaces
      2. Autosave the file every 5 minutes

<p align="center">
  <img src="/assets/funtionality.gif"/>
</p>

2. In the Font and color:
   1. Download the font [Firacode Nerd Font Mono](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraMono.zip)
   2. Install the font
      1. Extract the archive in a the directory `.fonts` located in YOUR home directory. If the directory is not there, press CTRL + H to enable hidden files. If the directory is not there still, create it. 
      2. Open a terminal and type the command: `fc-cache -f -v` to refresh the font cache.
      3. Go back to gedit Font & Colors tab inside preferences. 
      4. Change the font to **FiraMono Nerd Font Mono Regular** (if you cant find the font, close gedit and open it again)
   
<p align="center">
  <img src="/assets/change_font.gif"/>
</p>


3. Changing the theme
      1. Optional (change the font size to a size you are more comfortable with)
      2. Optional (change the color scheme to something you prefer or matches our preference). I like the dracula theme which you can download from [here](https://draculatheme.com/gedit)
      3. Here are [other themes](/assets/geditThemes/themes.tar.xz) you can download too!
      4. You will need to place these themes in: `$HOME/.local/share/gedit/styles/`
      5. Themes are xml files so you need to extract the xz file in that directory.
4. In the view options of the hamburger menu, enable:
   1. Side Panel
   2. Bottom Panel

<p align="center">
  <img src="/assets/themes.gif"/>
</p>


## Testing Gedit
Here is the source code:

### Bash

```bash
#!/bin/bash
main (){
    echo "Hello world"
}
main
```

### HTML
```html
<!DOCTYPE html>
<html>
    <style>
        button {
          background-color: #04AA6D;
          border: none;
          color: white;
          padding: 15px 32px;
          font-size: 25px;
    }
    </style>
    <body>
        <button onclick="say();" id="btn" type="button">Say hello!</button>
        <h1 id="msg"></h1>
    </body>
    <script>
       function say(){
            document.getElementById("msg").innerHTML = "Hello world!";
       }
    </script>
</html>
```


### Python

```python
#!/usr/bin/python3 
def hello():
  print("hello World")
hello()
```


### C++

```c++
#include <iostream>
using std::cout;
int main() {
    cout << "Hello World!\n";
    return 0;
}
// g++ hello.cpp && ./a.out to compile and run
```

### Rust

```rust
fn main() {
    println!("Hello World!");
}
// Must have rust installed: 
// curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
// rustc hello.rs && ./hello to compile and run
```