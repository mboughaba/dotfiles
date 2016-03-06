#!/bin/zsh
setxkbmap be
compton -b -f &
dunst &
batterymon &
exec i3
