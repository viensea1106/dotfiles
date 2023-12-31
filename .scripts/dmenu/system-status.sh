#!/bin/bash

case "$(printf "Shutdown\nReboot\nLock\nLogOut\n" | dmenu -l 2 -i -p "System:" )" in
  "Shutdown") systemctl poweroff;;
  "Reboot")   systemctl reboot;;
  "Lock")     betterlockscreen -l;;
  "LogOut")   ~/.scripts/bspwm/close-bspwm.sh;;
  *) exit 1;;
esac
