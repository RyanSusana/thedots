#!/bin/bash

stow --dir "$HOME/thedots" zsh

mkdir -p "$HOME/.config/nvim"
stow --dir "$HOME/thedots" --target="$HOME/.config/nvim" nvim

stow --dir "$HOME/thedots" idea
