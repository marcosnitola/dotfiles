#!/usr/bin/env sh

# Get PIDs of Waybar instances already running
waybar_pids=($(pgrep waybar))

# Create log file for new Waybar instance
log_file=$(mktemp)

# Launch main Waybar
waybar "$@" >"$log_file" 2>&1 &

# Wait until main Waybar is loaded
until grep -q -F "[info] Bar configured" "$log_file"; do
    sleep 0.1
done

# Kill previous Wayland instances
for pid in "${waybar_pids[@]}"; do
    kill "$pid"
done
