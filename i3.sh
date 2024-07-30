#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' 

echo -en "${GREEN}installig xorg,firefox,kitty${NC}"


sudo pacman -S xorg xorg-server xorg-xinit xdg-utils xdg-user-dirs i3-gaps i3status dmenu nitrogen picom firefox kitty

echo -en "${RED} reboot system${NC}"

echo -en "${GREEN}continue? (Y/N)${NC}"
read answer

if [[ "$answer" == "Y" ]]; then

./main.sh

else 
    echo -en "abort installing."
fi