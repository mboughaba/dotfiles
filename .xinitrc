#!/bin/zsh

################################################################################
#                           Author: Mohamed Boughaba                           #
#              Repository: https://github.com/mboughaba/dotfiles               #
#                     Description: My own taste of dotfiles                    #
#                       ╔╗ ┌─┐  ┬╔╦╗┌─┐┬─┐┌─┐┬  ┬┌─┐┌┬┐                        #
#                       ╠╩╗├┤   │║║║├─┘├┬┘│ │└┐┌┘├┤  ││                        #
#                       ╚═╝└─┘  ┴╩ ╩┴  ┴└─└─┘ └┘ └─┘─┴┘                        #
################################################################################

setxkbmap be
compton -b -f &
dunst &
batterymon &
exec i3
