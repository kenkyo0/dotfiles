#!/bin/sh

# scripts are located in $HOME/.config/.scripts
# (they are exported only in zsh)
pfad=$HOME/.config/.scripts
time=$(date '+%d-%m-%Y')
local_ip=$(ip -4 addr show dynamic | grep inet | awk '{print $2}')
#weather_cache()
#{   
#    if [[ ! -f /tmp/weather_old.txt ]]; then
#        $(echo $(weather) > /tmp/weather_old.txt &)
#    fi
#    weather_new=$(weather)
#    if [[ $(echo ${weather_new} | wc -c) -lt 15 && $(echo ${weather_buf} | wc -c) != 0 ]]; then
#        $(echo ${weather_new} > /tmp/weather_old.txt)
#        echo ${weather_new}
#    else
#        cat /tmp/weather_old.txt
#    fi
#}


echo "$local_ip   |   $(${pfad}/weather)   |   $(${pfad}/battery)   |   📅 $time   |   $(${pfad}/sb-clock)  "
