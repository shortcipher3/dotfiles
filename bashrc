# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# make history unlimited length (so can go back and reference things I did)
export HISTSIZE=-1
export HISTFILESIZE=-1

# append to bash history rather than overwriting (especially good for running multiple shells in parallel)
shopt -s histappend
# ignore duplicate lines, ignore space
export HISTCONTROL=ignoreboth
# don't store exit command in history
export HISTIGNORE="&:[ ]*:exit"
# store time of command
export HISTTIMEFORMAT='%F %T '
# one command per line
shopt -s cmdhist
# store history immediately
export PROMPT_COMMAND='history -a'
# After each command, save and reload history
#export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

export PS1="[\$(date +%m-%d) \t \l][\u \W]\$ " # show how long a shell has been open and see how long long running commands take
export PROMPT_HISTORY="\!,\l,\$?\$ "

alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection

# special prompt for git repos
if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source $HOME/.bash-git-prompt/gitprompt.sh
fi

# vim mode for bash
#set -o vi
#export EDITOR=vim
set -o emacs

# support local configuration
if [ -f ~/.bashrc_local ]; then
    source ~/.bashrc_local
fi

