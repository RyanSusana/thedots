#!/bin/bash
apt update
#just in case
apt install sudo

sudo apt install -y gpg curl wget 

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://repo.charm.sh/apt/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/charm.gpg
echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" | sudo tee /etc/apt/sources.list.d/charm.list

export DEBIAN_FRONTEND=noninteractive
export TZ=Europe/Amsterdam
sudo apt update
sudo -E apt install -y vim git-all zsh bat duf exa fd-find fzf gum jq stow tldr tmux ninja-build gettext cmake unzip  

FDFIND=$(which fdfind)
sudo mv $FDFIND "$(dirname $FDFIND)/fd"

BATCAT=$(which batcat)
sudo mv $BATCAT "$(dirname $BATCAT)/bat"
# Neovim shit
git clone --depth 1 -b stable https://github.com/neovim/neovim $HOME/.neovim-source
pushd $HOME/.neovim-source
sudo make CMAKE_BUILD_TYPE=RelWithDebInfo 
sudo -E make install
sudo rm -rf $HOME/.neovim-source
popd
