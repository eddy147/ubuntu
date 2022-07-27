#!/bin/bash

PWD=$(pwd)

cd /usr/local/src/
sudo wget https://www.openssl.org/source/openssl-1.1.1m.tar.gz

sudo tar -xf openssl-1.1.1m.tar.gz
cd openssl-1.1.1m
sudo ./config --prefix=/usr/local/ssl --openssldir=/usr/local/ssl shared zlib
sudo make
sudo make test
sudo make install

cd $PWD

asdf plugin add erlang
asdf plugin add elixir

asdf install erlang 24.2
asdf install elixir 1.13-otp-24
asdf global erlang 24.2
asdf global elixir 1.13-otp-24

mix local.hex
mix archive.install hex phx_new
