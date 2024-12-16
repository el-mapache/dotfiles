#!/bin/bash

DOTFILESDIR="/workspaces/.codespaces/.persistedshare/dotfiles"

for i in .[^.]*; do
    if [[ -d "$i" ]]; then
      continue
    fi

    if [[ -f "$DOTFILESDIR/$i" ]]; then
      echo "symlink exists"
    else
      ln -s $i /workspaces/.codespaces/.persistedshare/dotfiles/$i
    fi
    cat "$DOTFILESDIR/$i" >> "$HOME/.bashrc"
done
