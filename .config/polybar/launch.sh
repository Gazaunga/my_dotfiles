#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar top -c /home/aditya/.config/polybar/config.top &
polybar bottom -c /home/aditya/.config/polybar/config.bottom &
