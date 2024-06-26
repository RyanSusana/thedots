#!/bin/bash
SRC=$BASH_SOURCE[0]

# Nix
sh <(curl -L https://nixos.org/nix/install)

# install homebrew
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
/opt/homebrew/bin/brew bundle install --file="Brewfile"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/ryansusana/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"


# Neovim
if command -v nvim >/dev/null 2>&1; then
  echo "Neovim is already installed. Skipping..."
else
  git clone https://github.com/neovim/neovim neovim-source
  pushd neovim-source && make CMAKE_BUILD_TYPE=RelWithDebInfo
  sudo make install
  rm -rf neovim-source
  popd
fi
