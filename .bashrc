# path
export GOPATH=$HOME/go

export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/oss/idea/bin
export PATH=$PATH:$GOPATH/bin/
export PATH=$PATH:$HOME/.scripts/
export PATH=$PATH:$HOME/.rvm/bin

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# prompt
export PS1='\W # '

# aliases
alias l='ls -la'
alias c='clear'
alias cl='c;l'
alias g='git'

# options
export EDITOR=vim

# setup color scheme
wal -R
clear
