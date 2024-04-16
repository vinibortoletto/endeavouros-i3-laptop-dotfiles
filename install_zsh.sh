#!/usr/bin/env bash
source ./.functions.sh

###########
### ZSH ###
###########

echo_doing 'Installing ZSH'

yay -S --noconfirm zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
