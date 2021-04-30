# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '
# PS1="\e[0;32m\u@\H \e[0;34m\w \e[m$ "

alias l='ls -lah'
alias c='clear'
alias g='git'
alias grep='grep --color'
alias vim='nvim'

export HISTSIZE=
HISTSIZE=

export EDITOR=nvim

ip() {
    torsocks curl ipinfo.io/$1
}

# go
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin/"

# python
export PATH="$PATH:$HOME/.local/bin"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# rust
source "$HOME/.cargo/env"

# jabba
[ -s "/home/mother/.jabba/jabba.sh" ] && source "/home/mother/.jabba/jabba.sh"

# ops
export OPS_DIR="$HOME/.ops"
export PATH="$HOME/.ops/bin:$PATH"
