Ubuntu Setup:

1. Update the system: 
`sudo apt update; sudo apt upgrade -y;`
2. Install the necessary software:
`sudo apt install gcc make perl ubuntu-restricted-extras ubuntu-restricted-addons git python3-pip flameshot pandoc vlc gnome-tweaks curl snapd flatpak gnome-software-plugin-flatpak gnome-software-plugin-snap wget tree htop net-tools vlc peek -y`
3. Remove error reporting:
`sudo apt purge apport -y`
4. Enable Gnome Extensions:
   * Go to: https://extensions.gnome.org/ click on install extensions.
5. Install the following extensions:
   1. Dash to panel
   2. caffeine
