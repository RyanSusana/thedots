#!/bin/bash

stow --dir "$HOME/thedots" zsh

mkdir -p "$HOME/.config/nvim"
stow --dir "$HOME/thedots" --target="$HOME/.config/nvim" nvim

mkdir -p "$HOME/.config/nix"
stow --dir "$HOME/thedots" --target="$HOME/.config/nix" nix

stow --dir "$HOME/thedots" idea
