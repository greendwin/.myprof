#!/bin/sh
set -e

if ! command -v zsh >/dev/null 2>&1; then
  # install `zsh`
  sudo apt-get install zsh -y
fi

if [ -z "$ZSH" ]; then
  # install Oh-My-Zsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

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
