#!/bin/bash

sudo add-apt-repository --yes ppa:dawidd0811/neofetch
sudo apt update --yes && sudo apt install --yes neofetch

sudo curl -Lo /usr/bin/theme.sh 'https://git.io/JM70M' && sudo chmod +x /usr/bin/theme.sh
theme.sh farin
echo "See https://github.com/lemnos/theme.sh for examples"

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

sudo apt install --yes kafkacat

# for zed editor: do
# sudo su -
# echo 'off' > /etc/prime-discrete
