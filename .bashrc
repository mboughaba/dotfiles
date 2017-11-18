################################################################################
#                           Author: Mohamed Boughaba                           #
#              Repository: https://github.com/mboughaba/dotfiles               #
#                     Description: My own taste of dotfiles                    #
#                       ╔╗ ┌─┐  ┬╔╦╗┌─┐┬─┐┌─┐┬  ┬┌─┐┌┬┐                        #
#                       ╠╩╗├┤   │║║║├─┘├┬┘│ │└┐┌┘├┤  ││                        #
#                       ╚═╝└─┘  ┴╩ ╩┴  ┴└─└─┘ └┘ └─┘─┴┘                        #
################################################################################

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '
PS1='\W \$ '

#-------------------
# Personnal Aliases
#-------------------

alias c='clear'
alias vi='vim'
alias update='sudo pacman -Syu'
alias update-aur='yaourt -Syu --aur'
alias resize-tmp='sudo mount -o remount,size=15G,noatime /tmp'
alias remove='sudo pacman -Rnsc'
alias search='pacman -Ss'
alias add='sudo pacman -S'
alias :q='exit'
alias q='exit'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
# -> Prevents accidentally clobbering files.
alias mkdir='mkdir -p'

alias h='history'
alias j='jobs -l'
alias which='type -a'
alias ..='cd ..'

# Pretty-print of some PATH variables:
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'


alias du='du -kh'    # Makes a more readable output.
alias df='df -kTh'

#-------------------------------------------------------------
# The 'ls' family (this assumes you use a recent GNU ls).
#-------------------------------------------------------------
# Add colors for filetype and  human-readable sizes by default on 'ls':
alias ls='ls -h --color'
alias lx='ls -lXB'         #  Sort by extension.
alias lz='ls -lSr'         #  Sort by size, biggest last.
alias lt='ls -ltr'         #  Sort by date, most recent last.
alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
alias lu='ls -ltur'        #  Sort by/show access time,most recent last.

# The ubiquitous 'll': directories first, with alphanumeric sorting:
alias ll="ls -lv --group-directories-first"
alias lm='ll |more'        #  Pipe through 'more'
alias lr='ll -R'           #  Recursive ls.
alias la='ll -A'           #  Show hidden files.

alias myacpi='acpi -b |awk -F ": " '\''{print $2}'\''| awk -F "," '\''{print substr($1,0,0) $2}'\'

alias retouch='xinput enable "Atmel Atmel maXTouch Digitizer"'

export TERM="xterm-256color"

# welcome message
archey

# display random quotes
fortune
