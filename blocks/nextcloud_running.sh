#!/usr/bin/env bash

ICON=""

if [[ $(ps aux | grep "nextcloud$") ]]; then
    ICON=""
fi

printf "$ICON"
