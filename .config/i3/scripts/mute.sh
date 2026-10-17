#!/bin/bash
pamixer -t
STATUS=$(pamixer --get-mute)

if [ "$STATUS" = "true" ]; then
    dunstify -r 999 -i "" -t 1500 "Volume" "Muted"
else
    dunstify -r 999 -i "" -t 1500 "Volume" "Unmuted"
fi
