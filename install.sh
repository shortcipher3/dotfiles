#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -s ${BASEDIR}/bashrc ~/.bashrc
ln -s ${BASEDIR}/zshrc ~/.zshrc
ln -s ${BASEDIR}/vimrc ~/.vimrc
ln -s ${BASEDIR}/gitconfig ~/.gitconfig
ln -s ${BASEDIR}/tmux.conf ~/.tmux.conf
ln -s ${BASEDIR}/.ssh/authorized_keys ~/.ssh/authorized_keys

