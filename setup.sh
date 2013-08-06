#!/bin/bash
# Simple script to setup dotfiles

if [ -d ${HOME}/.emacs.d/ ]; then
    mv ${HOME}/.emacs.d ${HOME}/.emacs.d~
fi

function realpath() {
    [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

dotfiles_dir=$(realpath $(dirname $0))
ln -sf ${dotfiles_dir}/.emacs.d ${HOME}
ln -s ${dotfiles_dir}/.screenrc ${HOME}
ln -s ${dotfiles_dir}/.local.bash ${HOME}
