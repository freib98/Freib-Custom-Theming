#!/bin/bash

bashrc=$(<.bashrc)

function installCustomBash {
    echo -e "\n" >> ~/.bashrc && echo "$bashrc" >> ~/.bashrc

    cp ./.bash_custom ~/.bash_custom
}

function installTheFuck {
    sudo apt update && sudo apt install python3-dev python3-pip python3-setuptools && sudo pip3 install thefuck
}

installCustomBash

read -p "You want to install thefuck? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    installTheFuck
fi

echo 'Done!'
