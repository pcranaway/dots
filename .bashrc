# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# start sway if this is the first tty
if [ "$(tty)" = "/dev/tty1" ]; then
	exec sway
fi

# prompt
PS1='[\u@\h \W]\$ '

# options
export EDITOR=vim
export GOPATH=$HOME/go

# aliases
alias c='clear'
alias g='git'
alias l='ls -lah'
alias cl='c && l'
