#!/bin/sh

echo Load Vundle plugin manager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo 'Update ~/.vimrc'
echo "so ~/.myprof/vimrc_vundle" >> ~/.vimrc

echo Done.
