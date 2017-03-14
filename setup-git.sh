# setup creds
git config --global user.name "Evgeniy A. Cymbalyuk"
git config --global user.email "cimbaluk@gmail.com"

# set commit editor to vim
git config --global core.editor "vim"

# it can be `matching` if we want to push all branches with matching names
git config --global push.default simple

# cache passed password for long time (i.e. 10 hours)
git config --global credential.helper 'cache --timeout=36000'
