#!/usr/bin/env sh

# Terminate already running bar instances
pkill waybar

# Wait until the processes have been shut down
while pgrep -x waybar >/dev/null; do sleep 0.1; done

# Launch main
waybar $@ &
