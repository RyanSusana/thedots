#!/bin/bash
CWD="$HOME/thedots"

git clone https://github.com/RyanSusana/thedots $CWD
cd $CWD
# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

rm -f $HOME/.zshrc

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

if [ "$(uname -s)" = "Linux" ]; then
    $HOME/.linuxbrew/bin/brew bundle install --file="$CWD/Brewfile"
else
    brew bundle install --file="$CWD/Brewfile"
fi

source $CWD/stow.sh
