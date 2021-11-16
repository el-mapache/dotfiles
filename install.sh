#!/bin/bash

for i in .[^.]*; do
    ln -s $i /workspaces/.codespaces/.persistedshare/dotfiles/$i
    source /workspaces/.codespaces/.persistedshare/dotfiles/$i
done
