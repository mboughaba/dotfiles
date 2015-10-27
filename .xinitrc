#!/bin/zsh
setxkbmap be
compton -b &
dunst &
batterymon &
exec i3
