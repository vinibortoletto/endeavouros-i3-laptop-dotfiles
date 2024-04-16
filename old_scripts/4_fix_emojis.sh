#!/usr/bin/env bash
source ./.functions.sh

echo_doing 'Fixing emojis'

yay -S ttf-twemoji
mkdir ~/.config/fontconfig
cp fonts.conf ~/.config/fontconfig

echo_done
