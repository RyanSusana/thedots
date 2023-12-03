#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
export TZ=Europe/Amsterdam
apt update
apt install -y gpg curl wget sudo

mkdir -p /etc/apt/keyrings
curl -fsSL https://repo.charm.sh/apt/gpg.key | gpg --dearmor -o /etc/apt/keyrings/charm.gpg
echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" | tee /etc/apt/sources.list.d/charm.list

apt update
apt install -y git-all zsh bat duf exa fd-find fzf gum jq stow tldr tmux neovim

FDFIND=$(which fdfind)

mv $FDFIND "$(dirname $FDFIND)/fd"

chsh $(which zsh)
