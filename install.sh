#!/usr/bin/env bash
source ./.functions.sh

####################
### OTHER CONFIG ###
####################

echo_doing 'Copying I3 settings'
cp -r .config/ ~/
notify-send 'I3 settings configured!'
echo_done

echo_doing 'Copying backgrounds folders'
cp -r backgrounds ~/Pictures
notify-send 'Background folder copied!'
echo_done

echo_doing 'Copying monitor file'
cp -r .screenlayout ~/
notify-send 'Display configured!'
echo_done

echo_done 'Configuring natural scroll'
sudo cp 40-libinput.conf /usr/share/X11/xorg.conf.d
echo_done

###############
### Theming ###
###############

echo_doing 'Installing Nordic theme'
cp -r .themes ~/
cp -r icons ~/.local/share
notify-send 'Themes configured!'
echo_done

############
### APPS ###
############

echo_doing 'Installing Flatpak'
yay -S --noconfirm flatpak
notify-send 'Flatpak intalled!'
echo_done

echo_doing 'Installing KDE Connect'
yay -S --noconfirm kdeconnect
sudo firewall-cmd --permanent --zone=public --add-service=kdeconnect
sudo firewall-cmd --reload
notify-send 'KDE Connect installed!'
echo_done

echo_doing 'Installing Picom'
yay -S --noconfirm picom
notify-send 'Picom intalled!'
echo_done

echo_doing 'Installing Brave Browser'
flatpak install -y com.brave.Browser
notify-send 'Brave intalled!'
echo_done

echo_doing 'Installing VSCode'
yay -S --noconfirm visual-studio-code-bin
notify-send 'Visual Studio Code intalled!'
echo_done

echo_doing 'Installing Intellij'
flatpak install -y com.jetbrains.IntelliJ-IDEA-Community
notify-send 'IntellijJ IDEA Community intalled!'
echo_done

echo_doing 'Installing Nodejs'
yay -S --noconfirm nodejs
notify-send 'Nodejs intalled!'
echo_done

echo_doing 'Installing NPM'
yay -S --noconfirm npm
notify-send 'NPM intalled!'
echo_done

echo_doing 'Installing Maven'
yay -S --noconfirm maven
notify-send 'Maven intalled!'
echo_done

echo_doing 'Installing Beekeeper'
yay -S --noconfirm beekeeper-studio-bin
notify-send 'Beekeeper Studio intalled!'
echo_done

echo_doing 'Installing Redshift'
yay -S --noconfirm redshift-gtk-git
notify-send 'Redshift intalled!'
echo_done

echo_doing 'Installing fonts'
yay -S --noconfirm ttf-fira-code \
ttf-meslo-nerd-font-powerlevel10k \
ttf-hack-nerd
notify-send 'Fonts intalled!'
echo_done

echo_doing 'Installing Xtreme Download Manager'
yay -S --noconfirm xdman-beta
notify-send 'Xtreme Download Manager intalled!'
echo_done

echo_doing 'Installing Flameshot'
yay -S --noconfirm flameshot
notify-send 'Flameshot intalled!'
echo_done

echo_doing 'Installing Xcolor'
yay -S --noconfirm xcolor
notify-send 'XColor intalled!'
echo_done

echo_doing 'Installing qBittorrent'
flatpak install -y org.qbittorrent.qBittorrent
notify-send 'qBittorrent intalled!'
echo_done

echo_doing 'Installing Stremio'
flatpak install -y com.stremio.Stremio
notify-send 'Stremio intalled!'
echo_done

echo_doing 'Installing Docker and Docker Compose'
yay -S --noconfirm docker docker-compose
notify-send 'Docker and Docker Compose intalled!'
echo_done

echo_doing 'Installing Discord'
flatpak install -y com.discordapp.Discord
notify-send 'Discord intalled!'
echo_done

echo_doing 'Installing yt-dlp'
yay -S --noconfirm yt-dlp
notify-send 'yt-dlp intalled!'
echo_done

echo_doing 'Installing Alacritty'
yay -S --noconfirm alacritty
notify-send 'Alacritty intalled!'
echo_done

echo_doing 'Installing Easy Effects'
flatpak install -y com.github.wwmm.easyeffects
echo_done

########################
### BLUETOOTH CONFIG ###
########################

echo_doing 'Configuring bluetooth'

yay -S --noconfirm blueman
sudo systemctl enable bluetooth
cp policy-bluetooth ~/home/vini/.local/state/wireplumber/policy-bluetooth
notify-send 'Bluetooth configured!'
echo_done

###################
### ROFI CONFIG ###
###################

echo_doing 'Installing Rofi puglins'
yay -S --noconfirm rofi-power-menu
notify-send 'Rofi plugins intalled!'
echo_done

##################
### FIX EMOJIS ###
##################

echo_doing 'Fixing emojis'

yay -S --noconfirm ttf-twemoji
mkdir ~/.config/fontconfig
cp fonts.conf ~/.config/fontconfig
notify-send 'Emojis configured!'

echo_done

#######################
### QT6 AND KVANTUM ###
#######################

echo_doing 'Install Qt6ct and Kvantum'

yay -S --noconfirm qt6ct kvantum
sudo cp environment /etc/environment
# echo 'QT_QPA_PLATFORMTHEME=qt6ct' | sudo tee -a /etc/environment
# echo 'QT_STYLE_OVERRIDE=kvantum' | sudo tee -a /etc/environment
#cp qt6ct.conf ~/.config/qt6ct
#cp kvantum.kvconfig ~/.config/Kvantum
notify-send 'Qt6ct and Kvantum installed!'

echo_done

reboot_prompt
