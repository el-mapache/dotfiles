#!/bin/bash

for i in .[^.]*; do
    if [[ -d "$i" ]]; then
      continue
    fi

    ln -s $i /workspaces/.codespaces/.persistedshare/dotfiles/$i
    source /workspaces/.codespaces/.persistedshare/dotfiles/$i
done
