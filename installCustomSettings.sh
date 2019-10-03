#!/bin/bash

bashrc=$(<.bashrc)

function installCustomBash {
    echo -e "\n" >> ~/.bashrc && echo "$bashrc" >> ~/.bashrc

    cp ./.bash_custom ~/.bash_custom
}

function installCustomVim {
    cp -r ./dep/.vim_runtime ~/.vim_runtime
    sh ~/.vim_runtime/install_awesome_vimrc.sh
}

installCustomBash

installCustomVim

echo 'Done!'
