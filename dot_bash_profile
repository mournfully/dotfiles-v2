#!/usr/bin/env bash
# ~/.bash_profile - sourced only when user completes their login prompt 

# env variables
export EDITOR='vim'
export VISUAL='vim'
export HISTCONTROL=ignoreboth:erasedups

# if running bash and include .bashrc if it exists
if [ -n "$BASH_VERSION" ] && [ -f $HOME/.bashrc ]; then
    source $HOME/.bashrc
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi