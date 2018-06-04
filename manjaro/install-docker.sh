#!/bin/bash
# curl https://gist.githubusercontent.com/alan86alves/52257c7eba66beeffbb39bcf9658fd7a/raw/ea7a49e70419598baad7a52bd53db3e61b81a78c/install-docker.sh | bash

# Remove older installations
sudo pacman -Rs docker

# Installing Required Software
sudo pacman -S docker

# Creauser to user docker without sudo
sudo groupadd docker
sudo usermod -aG docker $USER
