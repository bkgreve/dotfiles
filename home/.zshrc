export ZSH="/home/${USER}/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(git fzf)

source $ZSH/oh-my-zsh.sh

function load_file {
    [ -e ~/.zsh/${1} ] && . ~/.zsh/${1} || true
    [ -e ~/.zsh.local/${1} ] && . ~/.zsh.local/${1} || true
}
load_file "aliases.zsh"
load_file "history.zsh"

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
