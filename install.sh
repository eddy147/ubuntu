sudo apt install --yes libssl-dev automake autoconf libncurses5-dev

asdf install erlang 24.1.7
asdf install elixir master-otp-24

sudo apt-get --yes install build-essential autoconf m4 libncurses5-dev libwxgtk3.0-gtk3-dev libwxgtk-webview3.0-gtk3-dev libgl1-mesa-dev libglu1-mesa-dev libpng-dev libssh-dev unixodbc-dev xsltproc fop libxml2-utils libncurses-dev openjdk-11-jdk

git clone git@github.com:eddy147/config-nvim.git ~/.config/nvim

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global user.email "eddy147@gmail.com"
git config --global user.name "eddy147"

alias vim="nvim"
