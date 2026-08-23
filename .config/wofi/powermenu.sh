#!/usr/bin/env bash

poweroff=' Poweroff'
reboot=' Reboot'
suspend=' Suspend'
lock=' Lock'
logout=' Logout'

op=$(
  printf '%s\n' \
    "$poweroff" \
    "$reboot" \
    "$suspend" \
    "$lock" \
    "$logout" \
  |
  wofi -i -j \
    --style=$XDG_CONFIG_HOME/wofi/style-inputless.css \
    --cache-file=/dev/null \
    --dmenu
)

case "$op" in 
  "$poweroff")
    systemctl poweroff
    ;;
  "$reboot")
    systemctl reboot
    ;;
  "$suspend")
    systemctl suspend
    ;;
  "$lock")
    swaylock
    ;;
  "$logout")
    swaymsg exit
    ;;
esac

