#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias p='sudo pacman -S'
alias pr='sudo pacman -Rnsu'
alias tree='tree -C'
PS1='[\u@\h \W]\$ '

export EDITOR=/usr/bin/vim
export VISUAL=$EDITOR

# Use bash-completion, if available
if [[ -r /usr/share/bash-completion/bash_completion ]]; then
	. /usr/share/bash-completion/bash_completion
fi

shopt -s autocd
