#!/bin/bash

echo "neovim"

mv ~/.config/nvim{,.bak}

mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}


git clone https://github.com/Ttunay/nvim.git ~/.config/nvim


rm -rf ~/.config/nvim/.git

echo "install zsh? (Y/N)"
read answer

if [[ "$answer" == "Y" ]]; then

./main.sh

else 
    echo "abort installing."
fi
