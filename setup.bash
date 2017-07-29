#!/bin/bash -eux

echo "Updating, Installing apt"

# Upgrade to 16.10
/usr/lib/ubuntu-release-upgrader/check-new-release-gtk

# Update apt, OS
sudo apt update
sudo apt dist-upgrade --yes

# Install some tools
sudo apt install --yes  vim vlc gimp unity-tweak-tool meld gnome-sushi clipit tree indicator-multiload xpad htop kate ruby

# Firewall
sudo apt install ufw gufw

# Handbrake
sudo apt install handbrake libdvdcss2

# Atom and plugins
sudo add-apt-repository ppa:webupd8team/atom --yes
sudo apt update
sudo apt install atom --yes
apm install atom-mermaid linter vim-mode-plus atom-beautify git-plus

# Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update
sudo apt install spotify-client

# Fl.ux does not work.  Use redshift
sudo apt install redshift redshift-gtk

# Caffiene
sudo add-apt-repository ppa:caffeine-developers/ppa --yes
sudo apt update
sudo apt install caffeine --yes

# Perm. swap escape and caps lock
/usr/bin/setxkbmap -option "caps:swapescape"

echo "Configuring ENV..."
cp ./static/vimrc ~/.vimrc
cp ./static/bashrc ~/.bashrc
cp ./static/gitconfig ~/.gitconfig
cp ./static/gemrc ~/.gemrc
cp ./static/inputrc ~/.inputrc

# Some cleanup
sudo apt autoremove


# Things that don't script easy:
#  - Tixati https://www.tixati.com/download/linux.html
#  - LastPass https://lastpass.com/lplinux.php
#  - Slack https://slack.com/downloads/linux
#  - Net Activity Viewer : http://netactview.sourceforge.net/download.html
