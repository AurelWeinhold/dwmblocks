#!/usr/bin/env bash

date=$(date +%a\ %d\ %b)
time=$(date +%H:%M)

# NOTE(Aurel): Icons use Google Material Design Icons.
#ICON=""
ICON=""

printf "%s $ICON %s" "$date" "$time"
