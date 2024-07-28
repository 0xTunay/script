#!/bin/bash


echo " Yay..."

sudo pacman -S --needed base-devel git

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -si

cd ..
rm -rf yay

echo "Yay installed."

echo "install zsh? (Y/N)"
read answer

if [[ "$answer" == "Y" ]]; then

./main.sh

else 
    echo "abort installing."
fi