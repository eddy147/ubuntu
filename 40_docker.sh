#!/bin/bash

sudo apt install --yes \
docker \
docker-compose 
sudo groupadd docker
sudo usermod -aG docker $USER
sudo apt install docker-compose
