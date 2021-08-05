export LANG='en_US.UTF-8'
export EDITOR='nvim' # may god allow me to switch to regular vim
export BROWSER='firefox'

# load .profile
for profile in "${HOME}/etc/profile.d/*.sh"; do
    test -r "$profile" && . "$profile"
done
