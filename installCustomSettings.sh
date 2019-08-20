#!/bin/bash

bashrc=$(<.bashrc)
echo -e "\n\n" >> ~/.bashrc
echo "$bashrc" >> ~/.bashrc

echo 'Done!'
