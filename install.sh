#!/bin/bash

set -eu

cd ~ && git clone https://github.com/uorat/dotfiles.git
mkdir -p ~/.tmux/plugins && git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

DOT_FILES=( bash_profile_ext \
            gemrc \
            gvimrc \
            pryrc \
            vimrc \
            vim \
            tmux.conf \
            gitconfig \
)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/.$file
done

echo -e "if [ -f ~/.bash_profile_ext ]; then\n    . ~/.bash_profile_ext\nfi" >> $HOME/.bashrc

curl -o "$HOME/dotfiles/#1" https://raw.githubusercontent.com/git/git/master/contrib/completion/{git-completion.bash}
git clone https://github.com/Shougo/neobundle.vim $HOME/.vim/bundle/neobundle.vim && cat $HOME/dotfiles/README.mkd|vim -
