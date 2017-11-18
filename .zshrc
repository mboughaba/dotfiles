################################################################################
#                           Author: Mohamed Boughaba                           #
#              Repository: https://github.com/mboughaba/dotfiles               #
#                     Description: My own taste of dotfiles                    #
#                       ╔╗ ┌─┐  ┬╔╦╗┌─┐┬─┐┌─┐┬  ┬┌─┐┌┬┐                        #
#                       ╠╩╗├┤   │║║║├─┘├┬┘│ │└┐┌┘├┤  ││                        #
#                       ╚═╝└─┘  ┴╩ ╩┴  ┴└─└─┘ └┘ └─┘─┴┘                        #
################################################################################

# Disable process suspend so that we can use Ctrl-S in vim
#stty -ixon

# Disable closing the terminal using Ctrl+D
set -o ignoreeof

# enable autocd
setopt AUTO_CD

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/mohamed/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Add Fish syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# customize prompt
autoload -U promptinit
promptinit
prompt fade blue

# Environment variables
export VISUAL=vim
export EDITOR=$VISUAL
export DEFAULT_USER=mohamed
export DEV_DIR=/home/mohamed/Projects
export TERM=xterm-256color

# setup dircolors
eval $(dircolors ~/.dircolors)

# Useful aliases
#alias ls="ls -CF"
alias ls="ls --color=auto"
alias ll="ls -lhA"
alias sl="ls"
alias la="ls -a"
alias lsl="ls -lhFA | less"
#alias cd..="cd .."
#alias ..="cd .."
alias fhere="find . -name "
alias df="df -Tha --total"
alias du="du -ach | sort -h"
alias free="free -mt"
alias ps="ps auxf"
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias mkdir="mkdir -pv"
alias wget="wget -c"
alias ping="ping -c 3"
alias histg="history | grep"
alias top="htop"
alias du="ncdu"
alias df="pydf"
alias myip="curl http://ipecho.net/plain; echo"
