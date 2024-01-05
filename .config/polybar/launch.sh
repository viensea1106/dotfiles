#!/bin/bash

# kill current running instance
killall -q polybar

# wait until things have done
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# launch polybar
polybar main -c ~/.config/polybar/config.ini &
