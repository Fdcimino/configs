#!/usr/bin/env bash

rm --force ~/.config/nvim
rm --force ~/.config/nvim-data
rm --force ~/.config/tmux
rm --force ~/.config/i3
rm --force ~/.config/i3status-rust
rm --force ~/.config/alacritty

rm --force ~/.zshrc

ln -sr ./nvim ~/.config/
ln -sr ./tmux ~/.config/
ln -sr ./i3 ~/.config/
ln -sr ./i3status-rust ~/.config/
ln -sr ./alacritty ~/.config/

ln -sr ./.zshrc ~/


