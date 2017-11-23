#!/bin/bash

LOCATION=$1/$(date --date now '+%Y')/$(date --date now '+%m')/$(date --date now '+%d')
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

cd ${LOCATION}

for mp2file in `ls -tr | grep mp2`; do
    mp3file=`echo $mp2file | sed -e "s@\([^\.]\).mp2@\1.mp3@g"`
    #lame --mp2input -b 192 -q0 "$mp2file" "$mp3file"
    ffmpeg -i "${mp2file}" -c:a libmp3lame -ac 2 -q:a 2 "$mp3file"
done

for aacfile in `ls -tr | grep aac`; do
    mp3file=`echo "$aacfile" | sed -e "s@\([^\.]\)\.aac@\1.mp3@g"`
    ffmpeg -i "$aacfile" -c:a libmp3lame -ac 2 -q:a 2 "$mp3file"
done

IFS=$SAVEIFS
