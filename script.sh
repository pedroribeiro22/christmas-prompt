#!/bin/bash
cp test.wav /tmp #Copies the audio file to the temporary directory

TODAY=`date +"%j"`              #Current day, in 1-366 format
CHRISTMAS=`date -d 25-Dec +"%j"` #Christmas day, in the same format
notify-send -t 16000 "There are $(($CHRISTMAS - $TODAY)) days left until Christmas!" #Notifies the user of how many days there are left until Xmas
paplay /tmp/test.wav #Plays the song. What song? it's Christmas, THAT song
