#!/bin/bash 

FILE_NAME=$1
SERVICE=$2
STREAM=$3
DEST=$4/$(date --date now '+%Y')/$(date --date now '+%m')/$(date --date now '+%d')

while [  true ]; do
  CURRENT_DATE=`date --date now '+%Y-%m-%d - %H-%M-%S'`
  ffmpeg -v error -y -i "rtsp://mafreebox.free.fr/fbxtv_pub/stream?namespace=1&service=${SERVICE}" -map i:${STREAM} -acodec copy "${DEST}/${FILE_NAME} - ${CURRENT_DATE}.mp2"
done
