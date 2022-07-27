#!/bin/bash

sudo apt install --yes zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh install.sh
sudo chsh -s /bin/zsh 
