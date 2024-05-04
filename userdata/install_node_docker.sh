#!/bin/bash -i

# Create .bashrc if it doesn't exist
touch ~/.bashrc

# Update system packages
sudo apt update -y

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Source .bashrc to load NVM
source ~/.bashrc

# Install Node.js
sudo apt install -y nodejs

# Install Node.js version 20 using NVM
nvm install 20

# Install Docker and Nginx
sudo apt install -y docker.io nginx

# Start and enable Docker and Nginx services
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl start nginx
sudo systemctl enable nginx
