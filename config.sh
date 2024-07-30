#!/bin/bash



GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' 




echo -en "${GREEN}neovim${NC}"

mv ~/.config/nvim{,.bak}

mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}


git clone https://github.com/Ttunay/nvim.git ~/.config/nvim


rm -rf ~/.config/nvim/.git

echo -en "${GREEN}continue? (Y/N)${NC}"
read answer

if [[ "$answer" == "Y" ]]; then

./main.sh

else 
    echo -en "abort installing."
fi
