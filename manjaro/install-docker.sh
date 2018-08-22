#!/bin/bash
# curl https://gist.githubusercontent.com/alan86alves/52257c7eba66beeffbb39bcf9658fd7a/raw/ea7a49e70419598baad7a52bd53db3e61b81a78c/install-docker.sh | bash

# Remove older installations
sudo pacman -Rs docker

# Installing Required Software
sudo pacman -S --noconfirm docker

# Start docker
sudo systemctl start docker

# Creauser to user docker without sudo
sudo groupadd docker
sudo usermod -aG docker $USER

# Test the installation.
docker -v

# Run this command to download the latest version of Docker Compose:
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

# Apply executable permissions to the binary:
sudo chmod +x /usr/local/bin/docker-compose

# Test the installation.
docker-compose --version
