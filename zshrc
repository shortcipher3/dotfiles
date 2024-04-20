# Load Antigen
if [ $(uname -s) = "Linux" ]; then
  source ~/antigen.zsh
else
  #export VIRTUALENVWRAPPER_PYTHON=/opt/homebrew/bin/python3
  source $(brew --prefix)/share/antigen/antigen.zsh
fi

# Load Antigen configurations
if [ -f ~/.antigenrc ]; then
    source ~/.antigenrc
fi

#plugins=(dotenv)
#ZSH_DOTENV_PROMPT=false

# The following lines were added by compinstall

zstyle ':completion:*' list-colors ''
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.zhistory
HISTSIZE=10000
SAVEHIST=10000
# End of lines configured by zsh-newuser-install

setopt inc_append_history_time

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
source virtualenvwrapper.sh

# support local configuration
if [ -f ~/.zshrc_local ]; then
    source ~/.zshrc_local
fi

#export TERM=xterm-256color
export TERM="screen-256color"
