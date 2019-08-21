#!/bin/bash

# Custom PS1
bashrc=$(<.bashrc)
echo -e "\n\n" >> ~/.bashrc
echo "$bashrc" >> ~/.bashrc

# Custom vim
cp -r ./dep/.vim_runtime ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

echo 'Done!'
