#!/bin/bash -eux

echo "Updating, Installing apt"
# Update apt, OS
sudo apt-get update
sudo apt-get dist-upgrade --yes

# Install some tools
sudo apt-get install --yes  vim terminator vlc gimp unity-tweak-tool gnome-tweak-tool meld indicator-multiload xpad

# Atom and plugins
sudo add-apt-repository ppa:webupd8team/atom --yes
sudo apt-get update
sudo apt-get install atom --yes
apm install atom-mermaid linter vim-mode-plus atom-beautify

# Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

# Fl.ux
sudo add-apt-repository ppa:nathan-renniewaldock/flux --yes
sudo apt-get update
sudo apt-get install flugui --yes

# Caffiene
sudo add-apt-repository ppa:caffeine-developers/ppa --yes
sudo apt-get update
sudo apt-get install caffeine --yes

# Copy
sudo add-apt-repository ppa:noobslab/indicators --yes
sudo apt-get update
sudo apt-get install copyq --yes


echo "Configuring ENV..."
cp ./static/vimrc ~/.vimrc
cp ./static/bashrc ~/.bashrc
cp ./static/gitconfig ~/.gitconfig
cp ./static/gemrc ~/.gemrc

# Notes
#  - Use tweak tool to set capslock to escape

# Things that don't script easy:
#  - Tixati https://www.tixati.com/download/linux.html
#  - LastPass https://lastpass.com/lplinux.php
