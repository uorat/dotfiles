#!/bin/bash

set -eu

cd ~ && git clone https://github.com/uorat/dotfiles.git

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
    ln -s $HOME/dotfiles/$file $HOME/.$file
done

git clone https://github.com/Shougo/neobundle.vim $HOME/.vim/bundle/neobundle.vim && vim
