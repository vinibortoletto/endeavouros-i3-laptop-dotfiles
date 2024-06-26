#!/usr/bin/env bash
source ./.functions.sh

echo_doing 'Installing ZSH puglins'

git config --add oh-my-zsh.hide-status 1
git config --add oh-my-zsh.hide-dirty 1

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo_done

echo_doing 'Installing Powerlevel 10k'
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
echo_done

cp .zshrc ~/

echo_done
