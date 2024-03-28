#!/bin/bash

SRC=$BASH_SOURCE[0]

echo $SRC

if [ "$(uname -s)" = "Linux" ]; then
    source "$(dirname $SRC)/install_linux.sh"
else
    source "$(dirname $SRC)/install_macos.sh"
fi

# Workspace Manager
git clone https://github.com/RyanSusana/workspace-manager $HOME/workspaces

# oh-my-zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git $HOME/.oh-my-zsh
echo '-------------------'
source "$(dirname $SRC)/stow.sh"

THESHELL=$SHELL
if [ "$THESHELL" = "/bin/zsh" ] || [ "$THESHELL" = "/usr/bin/zsh" ]; then
    source $HOME/.zshrc
else
    chsh -s $(which zsh)
    zsh
fi
