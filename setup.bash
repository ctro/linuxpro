#!/bin/bash -eux

# Update apt, OS
sudo apt-get update
sudo apt-get dist-upgrade --yes

# Install some tools
sudo apt-get install --yes  vim terminator vlc gimp

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

# Copyq
sudo add-apt-repository ppa:noobslab/indicators --yes
sudo apt-get update
sudo apt-get install copyq --yes

# Things that don't script easy:
#  - Tixati https://www.tixati.com/download/linux.html
#  - LastPass https://lastpass.com/lplinux.php
