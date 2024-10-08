#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' 


echo -en "${GREEN}Yay...${NC}"

sudo pacman -S --needed base-devel git

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -si

cd ..
rm -rf yay

echo -en "${GREEN}Yay installed.${NC}"

echo -en "${GREEN}continue? (Y/N)${NC}"
read answer

if [[ "$answer" == "Y" ]]; then

./main.sh

else 
    echo -en "abort installing."
fi