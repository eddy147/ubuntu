#!/bin/bash

sudo apt update --yes
sudo apt upgrade --yes
sudo apt --yes install curl 
sudo apt --yes install aptitude 
sudo apt --yes install libssl-dev 
sudo apt --yes install automake 
sudo apt --yes install build-essential 
sudo apt --yes install autoconf 
sudo apt --yes install m4 
sudo apt --yes install libncurses5-dev 
sudo apt --yes install libwxgtk3.0-gtk3-dev 
sudo apt --yes install libwxgtk-webview3.0-gtk3-dev 
sudo apt --yes install libgl1-mesa-dev 
sudo apt --yes install libglu1-mesa-dev 
sudo apt --yes install libpng-dev 
sudo apt --yes install libssh-dev 
sudo apt --yes install libglib2.0-dev
sudo apt --yes install unixodbc-dev 
sudo apt --yes install xsltproc 
sudo apt --yes install fop 
sudo apt --yes install libxml2-utils 
sudo apt --yes install libncurses-dev 
sudo apt --yes install openjdk-11-jdk 
sudo apt --yes install silversearcher-ag
sudo apt --yes install inotify-tools
sudo apt --yes install graphviz
sudo apt --yes install jq
sudo apt --yes install python3-pip
sudo apt --yes install ninja-build 
sudo apt --yes install gparted 
sudo apt --yes install jq

# otherwise scylla can not run: (see https://docs.ondat.io/docs/prerequisites/max-aio/)
sudo "fs.aio-max-nr=1048576" >> /etc/sysctl.conf

./10_git.sh && 
./20_zsh.sh && 
./21_fzf.sh &&
./30_asdf.sh && 
./40_docker.sh && 
./50_elixir.sh &&  
./60_neovim.sh && 
./70_pgadmin.sh && 
./80_neofetch && 

echo "Reboot for all installations to take effect."

