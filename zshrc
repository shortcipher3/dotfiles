# Load Antigen
source $(brew --prefix)/share/antigen/antigen.zsh
# Load Antigen configurations
antigen init ~/.antigenrc

# The following lines were added by compinstall

zstyle ':completion:*' list-colors ''
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
# End of lines configured by zsh-newuser-install

# vim mode
#bindkey -v

# fancy prompt for git repo
#if [ -f "$HOME/.zsh-git-prompt/zshrc.sh" ]; then
#    GIT_PROMPT_ONLY_IN_REPO=1
#    source $HOME/.zsh-git-prompt/zshrc.sh
#fi

export EDITOR=vim
set -o emacs

export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/opt/homebrew/bin/python3
source virtualenvwrapper.sh

# support local configuration
if [ -f ~/.zshrc_local ]; then
    source ~/.zshrc_local
fi

