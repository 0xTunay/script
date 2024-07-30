#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' 



echo -en "${GREEN}For c/c++${NC}"

sudo pacman -Suy

sudo pacman -S gcc clang

sudo pacman -S gdb

sudo pacman -S base-devel

sudo pacman -S cmake make

sudo pacman -S vim neovim

yay -S visual-studio-code-bin

echo -en "${GREEN}done.${NC}"

echo -en "${GREEN}continue? (Y/N)${NC}"
read answer

if [[ "$answer" == "Y" ]]; then

./main.sh

else 
    echo -en "abort installing."
fi