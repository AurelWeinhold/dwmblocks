#!/usr/bin/env bash


if (setxkbmap -query | grep -w de > /dev/null); then
    setxkbmap dvp -option "caps:swapescape"
else
    setxkbmap de -option "caps:swapescape"
fi

# Window Manager specific rules
wm=$(wmctrl -m | grep "Name: " | sed 's/Name: //')
case "$wm" in
    "dwm")
        sigdwmblocks 7
        ;;
esac

exit 0
