# load profiles from ~/.profile.d/
for profile in $HOME/.profile.d/*.sh; do
echo $profile
    test -e $profile && . $profile
done

export LANG='en_US.UTF-8'
export EDITOR=nvim
export BROWSER=firefox

export ENV=$HOME/.kshrc
