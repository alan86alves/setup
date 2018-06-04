#!/bin/bash
# curl https://gist.githubusercontent.com/alan86alves/52257c7eba66beeffbb39bcf9658fd7a/raw/ea7a49e70419598baad7a52bd53db3e61b81a78c/install-docker.sh | bash

# Remove older installations
sudo pacman -Rs docker docker-engine docker.io

# Installing Required Software
sudo pacman -Syu apt-transport-https ca-certificates curl software-properties-common

# Install certificates
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

# Setup repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Install
sudo apt-get update
sudo apt-get install -y docker-ce apt-cache madison docker-ce

# Creauser to user docker without sudo
sudo groupadd docker
sudo usermod -aG docker $USER
