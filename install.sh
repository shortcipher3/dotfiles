#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -s ${BASEDIR}/bashrc ~/.bashrc
ln -s ${BASEDIR}/zshrc ~/.zshrc
ln -s ${BASEDIR}/vimrc ~/.vimrc
ln -s ${BASEDIR}/inputrc ~/.inputrc
ln -s ${BASEDIR}/gitconfig ~/.gitconfig
ln -s ${BASEDIR}/gitignore_global ~/.gitignore_global
ln -s ${BASEDIR}/tmux.conf ~/.tmux.conf
ln -s ${BASEDIR}/.ssh/authorized_keys ~/.ssh/authorized_keys
ln -s ${BASEDIR}/ipython_config.py ~/.ipython/profile_default/ipython_config.py

