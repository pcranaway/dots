# load profiles from ~/.profile.d/
for profile in $HOME/.profile.d/*.sh; do
    test -e $profile && . $profile
done

export LANG='en_US.UTF-8'
export EDITOR=vim
export BROWSER=firefox
export PS1='k# '

export ENV=$HOME/.kshrc
