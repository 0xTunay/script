#!/bin/bash

while true; do

chmod +x *.sh

echo "choice:"

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
        echo "exit"
        exit 0
        ;;
    *)
        echo "Некорректный выбор. Пожалуйста, выберите снова."
        ;;
esac
done 