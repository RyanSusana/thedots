#!/bin/bash
SRC=$BASH_SOURCE[0]

# install homebrew
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
/opt/homebrew/bin/brew bundle install --file="Brewfile"


# Neovim
if command -v nvim >/dev/null 2>&1; then
  echo "Neovim is already installed. Skipping..."
else
  git clone https://github.com/neovim/neovim neovim-source
  pushd neovim-source && make CMAKE_BUILD_TYPE=RelWithDebInfo
  sudo make install
  popd
fi
