#!/usr/bin/env sh
cd $HOME/projects/$(ls $HOME/projects/ | fzf --preview "ls $HOME/projects/{}") && nvim
