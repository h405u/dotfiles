#!/bin/bash

OS=$(uname)

case $OS in
Darwin)
  ln -sf $(pwd)/macos/.zshrc ~/.zshrc
  ln -sf $(pwd)/macos/.tmux.conf ~/.tmux.conf
  ln -sf $(pwd)/macos/.alacritty.toml ~/.alacritty.toml
  ln -sf $(pwd)/macos/.gitconfig ~/.gitconfig
  ln -sf $(pwd)/macos/.vimrc ~/.vimrc
  ln -sf $(pwd)/macos/.ideavimrc ~/.ideavimrc
  rm -rf ~/.config/nvim
  rm -rf ~/.config/karabiner
  ln -sf $(pwd)/macos/nvim ~/.config/nvim
  ln -sf $(pwd)/macos/karabiner ~/.config/karabiner
  ;;
Linux) ;;
esac
