# path
export PATH="$PATH:$HOME/.scripts/:$HOME/.cargo/bin:$HOME/.local/bin"

# environment
export TERM="xterm-256color"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# autologin on tty1
if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1 ]
then
	exec xinit
fi

# aliases
alias ls='ls --color=auto'
alias l="ls -lah"
alias c="clear"
alias cl="c;l"
alias g="git"

# prompt
PS1='[\u@\h \W]\$ '
