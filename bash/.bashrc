#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
case "$TERM" in
    xterm*) TERM=xterm-256color
esac

