#!/usr/bin/env bash

op=$( echo -e " Poweroff\n Reboot\n Suspend\n Lock\n Logout" | wofi -i -j --style=$XDG_CONFIG_HOME/wofi/style-inputless.css --cache-file=/dev/null --dmenu | awk '{print tolower($2)}' )

case $op in 
        poweroff)
                ;&
        reboot)
                ;&
        suspend)
                systemctl $op
                ;;
        lock)
                swaylock
                ;;
        logout)
                swaymsg exit
                ;;
esac

