#!/bin/bash

for i in .[^.]*; do
    if [[ -d "$i" ]]; then
      continue
    fi

    if [[ -f "/workspaces/.codespaces/.persistedshare/dotfiles/$i" ]]; then
      echo "symlink exists"
    else
      ln -s $i /workspaces/.codespaces/.persistedshare/dotfiles/$i
    fi
    source /workspaces/.codespaces/.persistedshare/dotfiles/$i
done
