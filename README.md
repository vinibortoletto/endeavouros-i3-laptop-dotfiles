### I3wm EndeavourOS Dotfiles

## Use scripts to install everything

# How to change LightDM background
https://wiki.archlinux.org/title/LightDM#Changing_background_images/colors

# Add password feedback in terminal
```
cd /etc/ && cp sudoers sudoers.bak && EDITOR=nano visudo
env_reset,pwfeedback
```


# Enable natural scrolling

```
sudo nano /usr/share/X11/xorg.conf.d/40-libinput.conf

Section "InputClass"
        Identifier "libinput pointer catchall"
        MatchIsPointer "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
        Option "NaturalScrolling" "True"
EndSection

Section "InputClass"
        Identifier "libinput touchpad catchall"
        MatchIsTouchpad "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
        Option "NaturalScrolling" "True"
EndSection
```

# Fix BIOS access
Find the entry ending with (systemd...64)

```
sudo efibootmge -b XXXX -B
```

# Enable password feedback in terminal
```
cd /etc/ 
sudo -s
EDITOR=nano visudo

// Update line
Defaults env_reset,pwfeedback
```

# Configure Autorandr
```
autorandr --save mobile
```

```
autorandr --save docked
```

# Configure autologin
https://wiki.archlinux.org/title/LightDM#Enabling_autologin
# endeavouros-i3-laptop-dotfiles
# endeavouros-i3-laptop-dotfiles
# endeavouros-i3-laptop-dotfiles
