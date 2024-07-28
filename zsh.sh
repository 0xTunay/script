#!/bin/bash

# ZSH TERMINAL

echo "install zsh"

# UPDATE ALL
sudo pacman -Suy

# Install git
sudo pacman -S git

echo "install zsh? (Y/N)"
read answer

if [[ "$answer" == "Y" ]]; then
    echo "INSTALLING ZSH"

    # Install zsh, zsh-completions
    sudo pacman -Sy zsh zsh-completions

    # default zsh
    sudo chsh -s /bin/zsh

    # Install Oh My Zsh
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

    #  powerlevel10k theme for zsh
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    	
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

    # Edit zshrc
    sed -i 's/ZSH_THEME=".*"/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc
    sed -i 's/plugins=(.*)/plugins=(git zsh-syntax-highlighting zsh-autosuggestions)/' ~/.zshrc

    echo "extension and theme installed."

else 
    echo "abort installing."
fi
./main.sh