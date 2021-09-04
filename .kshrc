# load aliases
. "${HOME}/.aliases"

# history
export HISTFILE=$HOME/.hist
export HISTSIZE=694200

# vi mode
set -o vi

# start tmux session if not already in one
if  [ ! -n "${TMUX}" ]; then
    tmux
fi
