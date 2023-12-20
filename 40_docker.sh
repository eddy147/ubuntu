#!/bin/bash

echo "=== INSTALL DOCKER ==="
echo "==> update system"
sudo apt update -y && sudo apt upgrade -y

echo "==> remove old docker version"
sudo apt remove docker docker-engine docker.io containerd runc

echo "==> update again"
sudo apt-get update -y

echo "==> install certificates"
sudo apt-get install ca-certificates curl gnupg

echo "==> install keyrings"
echo "==> cp keyrings"
sudo install --yes -m 0755 -d /etc/apt/keyrings
echo "==> download keyrings"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --yes --dearmor -o /etc/apt/keyrings/docker.gpg
echo "==> give permissions to keyrings"
sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo "==> update again"
sudo apt update -y

echo "==> install docker"
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "==> systemctl"
sudo systemctl start docker
sudo systemctl enable docker

echo "==> run docker without sudo"
sudo groupadd docker
sudo usermod -aG docker $USER
sudo apt install docker-compose

docker --version
