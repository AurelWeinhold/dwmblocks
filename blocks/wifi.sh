#!/usr/bin/env bash

nmcli | grep -w "connected" | sed 's/.*connected to \(.*\)/\1/g' | {
    # get each line and put it into their own variables
    while IFS= read -r line
    do
        case "$line" in
            "Wired"*)
                wired="$line"
                ;;
            *)
                wireless="$line"
                ;;
        esac
    done

    # NOTE(Aurel): Icons use Google Material Design Icons.
    if [ "$wireless" ]; then
        ICON="" # wifi connected
    else
        ICON="" # wifi not connected
    fi

    if [ "$wired" -a "$wireless" ]; then
        printf "%s $ICON %s" "$wired" "$wireless"
    elif [ "$wireless" ]; then
        printf "$ICON %s" "$wireless"
    elif [ "$wired" ]; then
        printf "%s $ICON" "$wired"
    else
        printf "$ICON"
    fi

}
