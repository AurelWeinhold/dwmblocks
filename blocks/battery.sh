#!/bin/sh

read -r status </sys/class/power_supply/BAT0/status
read -r alarm </sys/class/power_supply/BAT0/alarm
read -r capacity </sys/class/power_supply/BAT0/capacity

# NOTE(Aurel): Icons use Google Material Design Icons.
ICON="" # standard battery symbold
if [ "$capacity" -le 10 ]; then
    ICON="" # critically low battery
fi

if [ "$status" = "Charging" ]; then
    ICON="" # charging battery
fi

printf "$ICON%s%%" "$capacity"
