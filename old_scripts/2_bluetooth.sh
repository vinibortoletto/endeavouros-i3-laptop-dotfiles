#!/usr/bin/env bash
source ./.functions.sh

echo_doing 'Configuring bluetooth'

yay -S --noconfirm blueman
sudo systemctl enable bluetooth
cp policy-bluetooth ~/home/vini/.local/state/wireplumber/policy-bluetooth

echo_done
