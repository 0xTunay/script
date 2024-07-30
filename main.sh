#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' 

while true; do

chmod +x *.sh

echo -en "${GREEN} choice${NC}\n"


echo "1. install Zsh"
echo "2. install software"
echo "3. install config nvim"
echo "4. install yay"
echo "4. Выход"
read choice

case $choice in
    1)
        ./zsh.sh
        ;;
    2)
        ./software.sh
        ;;
    3)
        ./config.sh
        ;;
    4)
        ./yay.sh
        ;;
    5)
        ./i3.sh
        ;;  

    6)
        ./config_i3.sh
        ;;          
    7) 
        echo "exit"
        exit 0
        ;;
    *)
        echo "Некорректный выбор. Пожалуйста, выберите снова."
        ;;
esac
done 
