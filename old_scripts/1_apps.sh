#!/usr/bin/env bash
source ./.functions.sh

# echo_doing 'Installing VSCode'
# yay -S --noconfirm visual-studio-code-bin
# echo_done

# echo_doing 'Installing Redshift'
# yay -S --noconfirm redshift-gtk-git
# echo_done

# echo_doing 'Installing Autorandr'
# yay -S --noconfirm autorandr
# echo_done

# echo_doing 'Installing Fira Code and Meslo Nerd fonts'
# yay -S --noconfirm ttf-fira-code
# yay -S --noconfirm ttf-meslo-nerd-font-powerlevel10k
# echo_done

# echo_doing 'Installing XDMan'
# yay -S --noconfirm xdman-beta
# echo_done

# echo_doing 'Installing Flameshot'
# yay -S --noconfirm flameshot
# echo_done

# echo_doing 'Installing XColor'
# yay -S --noconfirm xcolor
# echo_done

# echo_doing 'Installing qBittorrent'
# yay -S --noconfirm qbittorrent
# echo_done


############
### APPS ###
############

echo_doing 'Installing apps'

yay -S --noconfirm visual-studio-code-bin \
intellij-idea-community-edition 
nodejs \
npm \
jdk17-openjdk \
mysql-workbench \
beekeeper-studio-bin \
redshift-gtk-git \
autorandr \
ttf-fira-code \
ttf-meslo-nerd-font-powerlevel10k \
xdman-beta \
flameshot \
xcolor \
qbittorrent \
stremio

echo_done


########################
### BLUETOOTH CONFIG ###
########################

echo_doing 'Configuring bluetooth'

yay -S --noconfirm blueman
sudo systemctl enable bluetooth
cp policy-bluetooth ~/home/vini/.local/state/wireplumber/policy-bluetooth

echo_done

###################
### ROFI CONFIG ###
###################

echo_doing 'Installing Rofi puglins'

yay -S --noconfirm rofi-power-menu

echo_done

##################
### FIX EMOJIS ###
##################

echo_doing 'Fixing emojis'

yay -S ttf-twemoji
mkdir ~/.config/fontconfig
cp fonts.conf ~/.config/fontconfig

echo_done

###########
### ZSH ###
###########

echo_doing 'Installing ZSH'

yay -S zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo_done

#######################
### QT6 AND KVANTUM ###
#######################

echo_doing 'Install Qt6 and Kvantum'

yay -S --noconfirm qt6ct kvantum
echo 'QT_QPA_PLATFORMTHEME=qt6ct' | sudo tee -a /etc/environment
echo 'QT_STYLE_OVERRIDE=kvantum' | sudo tee -a /etc/environment
cp qt6ct.conf ~/.config/qt6ct
cp kvantum.kvconfig ~/.config/Kvantum

echo_done

###########
### GIT ###
###########

echo_doing 'Installing Github CLI'

yay -S --noconfirm github-cli
gh auth login

echo_done

####################
### OTHER CONFIG ###
####################

echo_doing 'Copying I3 settings'
cp -r .config/ ~/
echo_done

echo_doing 'Copying backgrounds folders'
cp -r backgrounds ~/Pictures
echo_done


sudo firewall-cmd --zone=public --add-port=1716/tcp --permanent \
sudo firewall-cmd --zone=public --add-port=1716/udp --permanent \
sudo firewall-cmd --reload
