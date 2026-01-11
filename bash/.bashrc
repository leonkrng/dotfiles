#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias bluetooth='bluetui'
alias audio='wiremix'
alias wifi='impala'
alias music='rmpc'
alias LetItRip='~/Projects_Bash/LetItRip/main.sh'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"

