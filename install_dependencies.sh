#!/bin/bash
if [ "$(uname -s)" = "Linux" ]; then
    source "$(dirname ${BASH_SOURCE[0]})/install_linux.sh"
fi
git clone https://github.com/RyanSusana/thedots $HOME/thedots
git clone https://github.com/RyanSusana/workspace-manager $HOME/workspace-manager
# oh-my-zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git $HOME/.oh-my-zsh
echo '-------------------'
echo 'Dependencies installed, run the following to set up dotfiles'
echo 'source "$HOME/thedots/stow.sh"'
echo 'If on linux, run `sudo chsh -s /bin/zsh && zsh` to go into shell and set as default'
