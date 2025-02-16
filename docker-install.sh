#!/bin/bash
echo "Installing docker in AWS"
sudo dnf update -y
sudo yum update -y
sudo yum install -y docker
sudo yum install -y git 
echo "package installed restarting the service"
sudo systemctl restart docker
sudo systemctl enable docker
sudo systemctl status docker
sudo hostname docker-server
sudo echo "docker-server" > /etc/hostname
sudo bash
