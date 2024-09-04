#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' 

echo -en "${GREEN}continue installing i3${NC}"

git clone https://github.com/0xTunay/cfg_i3.git

cd ~/.config/i3 || mkdir -p i3 && cd i3

mv ~/.config/i3 ~/.config/i3.bak

cp ~/cfg_i3/config ~/.config/i3

rm -rf cfg_i3


echo -en "${GREEN}continue? (Y/N)${NC}"
read answer

if [[ "$answer" == "Y" ]]; then

./main.sh

else 
    echo -en "abort installing."
fi
