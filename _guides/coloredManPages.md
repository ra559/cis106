---
title: Colored Man Pages
layout: page
---

# {{page.title}}

Add this at the buttom of your bashrc file:

```bash
export PAGER="less"
export MANPAGER="less -R"
export LESS="RSi"
export LESS_TERMCAP_mb=$'\e[1;31m'
export LESS_TERMCAP_md=$'\e[1;36m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[1;44;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;32m'
export MANROFFOPT="-c"
```
## Where is the bashrc file?
In your `~/` directory

## How do I open the file?
Via the command line: `nano ~/.bashrc`
Via the GUI text editor:
* If you are using GNOME: `gnome-text-editor  ~/.bashrc`
* If you are not using GNOME:
  * Install geany: `sudo apt install geany -y`
  * Open the file with geany: `geany ~/.bashrc`

