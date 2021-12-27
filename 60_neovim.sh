#!/bin/bash

sudo apt install --yes neovim
git clone git@github.com:eddy147/config-nvim.git ~/.config/nvim

echo "alias vim=\"nvim\"" >> ~/.zshrc