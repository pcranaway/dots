

# load .profile
for profile in "${HOME}/etc/profile.d/*.sh"; do
    test -r "$profile" && . "$profile"
done
