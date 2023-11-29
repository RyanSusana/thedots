#!/bin/bash
CWD="$HOME/thedots"

if [ "$(uname -s)" = "Linux" ]; then
    sudo apt update
    sudo apt install -y git-all zsh
fi

git clone https://github.com/RyanSusana/thedots $CWD
cd $CWD
# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --skip-chsh
rm -f $HOME/.zshrc

# install homebrew
yes '' | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

if [ "$(uname -s)" = "Linux" ]; then
    /home/linuxbrew/.linuxbrew/bin/brew bundle install --file="$CWD/Brewfile"
    PATH=$PATH:/home/linuxbrew/.linuxbrew/bin
else
    brew bundle install --file="$CWD/Brewfile"
fi
git clone https://github.com/RyanSusana/workspace-manager $HOME/workspace-manager
source "$HOME/thedots/stow.sh"
