#!/bin/bash 

FILE_NAME=$1
SOURCE=$2
DEST=$3/$(date --date now '+%Y')/$(date --date now '+%m')/$(date --date now '+%d')

while [  true ]; do
  CURRENT_DATE=`date --date now '+%Y-%m-%d - %H-%M-%S'`
  ffmpeg -v error -y -i ${SOURCE} -acodec copy "${DEST}/${FILE_NAME} - ${CURRENT_DATE}.aac"
done
