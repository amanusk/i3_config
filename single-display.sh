#!/bin/bash

xrandr --output HDMI-3 --off \
    --output VGA-1 --off \
    --output LVDS-1 --auto --primary

setxkbmap -model pc105 -layout us,il -option grp:alt_shift_toggle
