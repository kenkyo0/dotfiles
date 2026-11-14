#!/bin/bash

# scripts are located in $HOME/.config/.scripts
# (they are exported only in zsh)
helper=$HOME/.config/sway
pfad=$HOME/.config/.scripts
time=$(date '+%d-%m-%Y')
local_ip=$(ip -4 addr show dynamic | grep inet | awk '{print $2}')

weather_cache()
{   
    local weather_new
    weather_new=$(weather)

    if [[ -n "$weather_new" ]]; then
        echo "${weather_new}" > ${helper}/weather_old.txt
        echo "$weather_new"
    else
        # checking cache file // -s checks if the file is available and bigger than 0
        if [[ -s "$(cat ${helper}/weather_old.txt)" ]]; then
            echo '...'   
        else
        # use cache
            cat ${helper}/weather_old.txt
        fi
    fi
}


echo "$local_ip     |     $(weather_cache)     |     $(${pfad}/battery)     |     📅 $time     |     $(${pfad}/sb-clock)  "
