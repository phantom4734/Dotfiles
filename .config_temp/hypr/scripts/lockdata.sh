#!/bin/bash

song=$(playerctl --player=spotify metadata --format '{{artist}} - {{title}}' 2>/dev/null)

if [ -z "$song" ]; then
song="Nothing Playing"
fi

weather=$(curl -s "wttr.in/Jeddah?format=%c+%t")

echo "$song" > ~/.cache/song
echo "$weather" > ~/.cache/weather
