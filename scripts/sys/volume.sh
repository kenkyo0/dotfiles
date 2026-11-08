#!/bin/bash

# this is a simple script to control the volume through pipewire-pulse -> pactl
# @author nick

# mute toggle
mute() {
    pactl set-sink-mute @DEFAULT_SINK@ toggle
}

up(){
    pactl set-sink-volume @DEFAULT_SINK@ +2%
}

down(){
    pactl set-sink-volume @DEFAULT_SINK@ -2%
}

if ! command -v pactl --v >/dev/null 2>&1
then
    echo "couldn't find cmd pactl"
    exit 1
elif [[ $# != 1 ]]; then
    echo no or too much parameters specified
    exit 1
elif [[ "$1" == "mute" ]]; then
    mute 
elif [[ "$1" == "up" ]]; then
    up 
elif [[ "$1" == "down" ]]; then
    down
else
    echo unkown error occured at volume.sh
fi

