#!/bin/bash

if [[ $# != 1 ]]; then
    echo no parameters
    exit 1
elif [[ $1 == 'up' ]]; then
    brightnessctl set 5%+
elif [[ $1 == 'down' ]]; then
    brightnessctl set 5%-
else
    echo error in brightness.sh
    exit 1
fi
