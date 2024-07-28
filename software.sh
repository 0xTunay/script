#!/bin/bash

echo "For c/c++"

sudo pacman -Suy

sudo pacman -S gcc clang

sudo pacman -S gdb

sudo pacman -S cmake make

sudo pacman -S vim neovim

yay -S visual-studio-code-bin

echo "done."
./main.sh