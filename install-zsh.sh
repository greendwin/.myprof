#!/bin/sh

sudo apt-get install -y zsh

# install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sed -i 's|ZSH_THEME=".*"|ZSH_THEME="avit"|g' ~/.zshrc
sed -i 's|^plugins=(|plugins=(\n  common-aliases |g' ~/.zshrc

# append our custom bashrc to bash_it
echo "source ~/.myprof/zshrc" >> ~/.zshrc

echo Installing tmux config...
# TODO: use new file & source execution for custom overrides support
ln -sf ~/.myprof/tmux.conf ~/.tmux.conf

echo Installing vim config...
echo "so ~/.myprof/vimrc" >> ~/.vimrc

echo Done.

