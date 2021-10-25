#!/bin/sh

# NOTE(Aurel): Icons use Google Material Design Icons.

icon=""
muteicon=""


if [[ $(pamixer --get-mute) == "true" ]]; then
    icon="$muteicon"
fi

volume=$(pamixer --get-volume)

if [[ $volume -eq "0" ]]; then
    printf "$muteicon"
else
    printf "$icon %s%%" "$volume"
fi
