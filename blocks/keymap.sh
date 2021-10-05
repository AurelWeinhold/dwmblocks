#!/usr/bin/env bash


if (setxkbmap -query | grep -w de > /dev/null); then
    echo "de"
else
    echo "dvp"
fi
