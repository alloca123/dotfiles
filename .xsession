#!/bin/sh
xwallpaper --stretch alps.jpeg
## xrandr --output LVDS1 --brightness 0.7
xrandr --output DisplayPort-0 --brightness 0.5
 while xsetroot -name "`date` `vmstat | awk '{print $3}' | tail -n 1`"
    do
        sleep 1
    done &
exec dwm
