#!/bin/bash

git switch $(uname)

for file in \
  .zshrc \
  .tmux.conf \
  .alacritty.toml \
  .gitconfig \
  .vimrc \
  .ideavimrc \
  .config/nvim \
  .config/karabiner \
  .config/i3; do

  SOURCE=$(pwd)/"$file"
  TARGET=~/"$file"

  if [ ! -e "$SOURCE" ]; then
    echo "Skipped $file"
    continue
  fi

  if [ -d "$TARGET" ]; then
    echo "Removed existing $TARGET"
    rm -rf "$TARGET"
  fi

  ln -sf "$SOURCE" "$TARGET"
  echo "Force linked $file"

done
