#!/bin/bash

# Check if docker is installed or not
if ! command -v docker &> /dev/null; then
        sudo apt update -y
        sudo apt install docker.io -y
        sudo apt install docker -y
        sudo systemctl restart docker
fi

#check if docker-compose is installed or not
if ! command -v docker-compose &> /dev/null; then
        # Download the current stable release of Docker Compose
        sudo curl -L "https://github.com/docker/compose/releases/download/$(curl -Ls -o /dev/null -w %{url_effective} https://github.com/docker/compose/releases/latest | grep -o '[^/]*$')/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

        # Apply executable permissions to the Docker Compose binary
        sudo chmod +x /usr/local/bin/docker-compose
fi

# clone two tier flask app
cd ~/Project2
git clone https://github.com/LondheShubham153/two-tier-flask-app.git

# add user to docker group
sudo usermod -aG docker $(whoami)

