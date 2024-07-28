#!/bin/bash

echo "For c/c++"

sudo pacman -Suy

sudo pacman -S gcc clang

sudo pacman -S gdb

sudo pacman -S base-devel

sudo pacman -S cmake make

sudo pacman -S vim neovim

yay -S visual-studio-code-bin

echo "done."

echo "install zsh? (Y/N)"
read answer

if [[ "$answer" == "Y" ]]; then

./main.sh
else 
    echo "abort installing."
fi
