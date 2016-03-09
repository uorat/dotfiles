#!/bin/bash

set -eu

cd $HOME

DOT_FILES=( bash_profile_ext \
            gemrc \
            gvimrc \
            pryrc \
            vimrc \
            vim \
            tmux.conf \
)

for file in ${DOT_FILES[@]}
do
    rm -f $HOME/.$file
done

rm -rf $HOME/dotfiles
