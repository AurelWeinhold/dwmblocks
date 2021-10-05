#!/usr/bin/env bash


backlight=$(xbacklight -get | cut --delimiter="." --fields=1)

# NOTE(Aurel): Icons use Google Material Design Icons.
ICON="" # half light
if [ "$backlight" -lt 10 ]; then
    ICON="" # 0%
fi
if [ "$backlight" -gt 90 ]; then
    ICON="" # 100%
fi

printf "$ICON %s%%" "$backlight"
