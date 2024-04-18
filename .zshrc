export BROWSER=/usr/bin/brave
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(
git
zsh-syntax-highlighting
fzf
zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

function lazygit() {
    git add .
    git commit -a -m "$1"
    git push
}

function update() {
    bash ~/Code/pop_os_config/update_system.sh
}

function phps() {
    nohup flatpak run --file-forwarding com.jetbrains.PhpStorm "$@" > /dev/null 2>&1 &
    disown
}

function idea() {
    nohup flatpak run --file-forwarding com.jetbrains.IntelliJ-IDEA-Community "$@" > /dev/null 2>&1 &
    disown
}

function dc() {
    if [[ $1 == "up" ]]; then
        docker-compose up -d
    elif [[ $1 == "down" ]]; then
        docker-compose down
    elif [[ $1 == "clean" ]]; then
        docker system prune -a
    elif [[ $1 == "down-all" ]]; then
        docker stop $(docker ps -a -q)
    else
        echo "Invalid command. Usage: dc up"
    fi
}

#############
### Alias ###
#############

alias y='yay'
alias yi='yay -S --noconfirm'
alias ys='yay -Ss'
alias yr='yay -R --noconfirm'
alias c='cp'
alias cf='cp -r'
alias rf='rm -rf'
alias n='nano'
alias ff='find ~ -iname'
alias fd='find ~ -iname'
alias fixpassword='faillock --reset'
