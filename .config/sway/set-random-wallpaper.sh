#!/bin/bash
#export XDG_WALLPAPER_PATH="$(find $HOME/Images/Wallpapers -type f | shuf -n 1)"
find $HOME/Images/Wallpapers -type f | shuf -n 1 > $XDG_CONFIG_HOME/sway/wallpaper-path
pkill swaybg
swaybg -i "$(cat $XDG_CONFIG_HOME/sway/wallpaper-path)" -m fill &
