# Raspberry Pi Ubuntu 20.10 Setup **(Gnome Classic Edition)**

1. Update the system
   
   `sudo apt update; sudo apt upgrade -y`

2. Install gnome classic:
   
    `sudo apt install gnome-session-flashback`

3. Install necessary software:

      `sudo apt install gcc make perl nemo ubuntu-restricted-extras ubuntu-restricted-addons git python3-pip flameshot pandoc vlc gnome-tweaks curl snapd flatpak gnome-software-plugin-flatpak gnome-software-plugin-snap wget tree htop net-tools vlc peek vim deluge geany tilix neofetch midori -y`
    

    > ## VS Code:
    >Download deb package from: *https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-arm64*
    >2. Run this command (assuming that you downloaded the file to your Downloads directory) 
    >**`sudo apt install $HOME/Downloads/code*.deb`**

4. Remove error reporting, IRQ Balance, and other not needed software:

    `sudo apt purge apport irqbalance aisleriot gnome-mahjongg gnome-sudoku gnome-mines thunderbird transmission-common  -y`

   > Gnome classic does not support extensions.

5. VS Code Extensions:
   1.  Live Server
   2.  Markdown All in one
   3.  Markdown Preview Enhanced
   4.  Markdown PDF
   5.  PDF Preview
   6.  Code Spell Checker

6. Enable Dark Theme
   * Tweaks -> Appearance: 
7. Replace nautilus with nemo:
   `xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search`




8. Replace Screenshot tool with flameshot:
   ![replace screenshot tool shortcut](imgs/settingflameshot.gif)

9.  Install cursor themes:
    1.  [Materia Light Cursor theme](https://www.gnome-look.org/p/1346778/)
    2.  [Layan](https://www.gnome-look.org/p/1365214/)
    3.  

10. Install icon themes:
    Papirus: `sudo apt install papirus-icon-theme -y`

11. Extra:
    1.  Install Powerline with this script: https://raw.githubusercontent.com/ra559/cis106/main/powerlineinstaller.sh 
12. Disable animations
13. Disable Suspend when laptop lid is closed
14. disable desktop icons:
    `gsettings set org.gnome.gnome-flashback.desktop show-icons false`
15. install caffeine
16. add flameshot and caffeine indicator to system startup

# Extra
17. Overclock Pi 400 or Pi 4 on Ubuntu:
18. Open the file: `/boot/firmware/config.txt`
19. add the following lines to the end of the file:
 `force_turbo=1`
 `over_voltage=8`
 `arm_freq=2200`

Rebopt with: `sudo reboot` or `telinit 6`