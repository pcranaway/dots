export PATH=$PATH:$HOME/.local/bin/:$HOME/.scripts/:$HOME/go/bin
export EDITOR=nvim
export GOPATH=$HOME/go

source /usr/local/share/bash-completion/bash_completion.sh

export PS1='(\W) -> '
# paleta < $HOME/oss/paleta/palettes/atom-dark

alias c='clear'
alias l='ls -lah'
alias cl='c;l'
alias g='git'
alias vim='nvim'

if [ -z "$XDG_RUNTIME_DIR" ]; then
    export XDG_RUNTIME_DIR="/tmp/${USER}"
    if [ ! -d  "$XDG_RUNTIME_DIR" ]; then
        mkdir "$XDG_RUNTIME_DIR"
        chmod 0700 "$XDG_RUNTIME_DIR"
    fi
fi
