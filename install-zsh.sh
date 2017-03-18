#!/bin/sh

# install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sed -i 's/ZSH_THEME=".*"/ZSH_THEME="avit"/g' ~/.zshrc

# append our custom bashrc to bash_it
echo "source ~/.myprof/zshrc" >> ~/.zshrc

echo Installing tmux config...
# TODO: use new file & source execution for custom overrides support
ln -sf ~/.myprof/tmux.conf ~/.tmux.conf

echo Installing vim config...
ln -sf ~/.myprof/vimrc ~/.vimrc

echo Done.

