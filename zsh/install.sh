#!/bin/sh
set -e

# TBD: do we need `atool` install for easier unzips?

sudo apt-get install zsh -y

# install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# sed -i 's|ZSH_THEME=".*"|ZSH_THEME="avit"|g' ~/.zshrc
sed -i 's|^plugins=(|plugins=(common-aliases |g' ~/.zshrc
sed -i 's|^# export PATH=$HOME|export PATH=$HOME|g' ~/.zshrc

# support `.zshuser` that can be linked by stow
echo '[[ -f "$HOME/.zshuser" ]] && source "$HOME/.zshuser"' >> ~/.zshrc

cd ~/.myprof
stow zsh

echo "set ZSH_THEME var in .zshrc for your theme"
echo "list of good themes:"
echo " - crcandy"
echo " - avit"
echo " - ys"

echo "done."
