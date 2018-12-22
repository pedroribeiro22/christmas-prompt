#!/usr/bin/env sh

mkdir -p ~/.songs

cp "$PWD/christmas-song.wav" ~/.songs/

echo "0 0 * * * $PWD/howLongUntilChristmas" >> /var/spool/cron/"$(whoami)"

