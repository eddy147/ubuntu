#!/bin/bash

sudo apt update --yes
sudo apt upgrade --yes
sudo apt --yes install \ 
curl
aptitude \
libssl-dev \
automake \
build-essential \
autoconf \
m4 \
libncurses5-dev \
libwxgtk3.0-gtk3-dev \
libwxgtk-webview3.0-gtk3-dev \
libgl1-mesa-dev \
libglu1-mesa-dev \
libpng-dev \
libssh-dev \
unixodbc-dev \
xsltproc \
fop \
libxml2-utils \
libncurses-dev \
openjdk-11-jdk \
silversearcher-ag

./10_git.sh && \
./20_zsh.sh && \
./30_asdf.sh && \
./40_docker.sh && \
./50_elixir.sh && \ 
./60_neovim.sh && \
./70_pgadmin.sh && \
./80_neofetch && \
neofetch

echo "Reboot for all installations to take effect."

