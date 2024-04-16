#!/usr/bin/env bash
source ./.functions.sh

echo_doing 'Installing NVM'

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
# export NVM_DIR=$HOME/.nvm;
# source $NVM_DIR/nvm.sh;
# nvm i 16

echo_done

reboot
