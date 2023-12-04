#!/bin/bash
if [ "$(uname -s)" = "Linux" ]; then
    source "$(dirname ${BASH_SOURCE[0]})/install_linux.sh"
fi
git clone https://github.com/RyanSusana/workspace-manager $HOME/workspace-manager
# oh-my-zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git $HOME/.oh-my-zsh
echo '-------------------'
source "$(dirname ${BASH_SOURCE[0]})/stow.sh"

THESHELL=`getent passwd $(whoami) | awk -F: '{print $7}'`
if [ "$THESHELL" = "/bin/zsh" ] || [ "$THESHELL" = "/usr/bin/zsh" ]; then
    source $HOME/.zshrc
else
    chsh -s $(which zsh)
    zsh
fi
