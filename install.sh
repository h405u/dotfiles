#!/bin/bash

for file in \
  .zshrc \
  .tmux.conf \
  .alacritty.toml \
  .gitconfig \
  .vimrc \
  .ideavimrc \
  .config/nvim \
  .config/karabiner \
  .config/i3 \
  .config/yay \
; do

  SOURCE=$(pwd)/$(uname)/"$file"
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
