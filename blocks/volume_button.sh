#!/bin/sh
case $1 in
    1) pactl set-sink-mute @DEFAULT_SINK@ toggle ;;
    3) pactl set-sink-volume @DEFAULT_SINK@ 50% ;;
esac

# Window Manager specific rules
wm=$(wmctrl -m | grep "Name: " | sed 's/Name: //')
case "$wm" in
    "dwm")
        sigdwmblocks 2
        ;;
esac
