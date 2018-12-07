#!/bin/bash

cp christmas-song.wav /tmp

function howLongUntilChristmas() {
    local current_hrs=$(date +"%H")
    local current_min=$(date +"%M")
    local today=$(date +"%j")
    local christmas=$(date -d 25-Dec +"%j")

    if [ 0 -eq "$current_hrs" ] && [ 2 -gt "$current_min" ]; then
        #Notifies the user of how many days there are left until Xmas
        notify-send -t 16000 "There are $((christmas - today)) days left until Christmas!"
        #Plays the song. What song? it's Christmas, THAT song
        paplay /tmp/christmas-song.wav
    fi
}

howLongUntilChristmas

