#!/bin/dash
# xrandr --output LVDS1 --brightness 0.7
while xsetroot -name "`date` `free -m | awk '/Mem:/ {print $3}'`"
    do
        sleep 1
    done &
exec dwm
