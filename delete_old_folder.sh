#!/bin/bash

set -euo pipefail
NUMBER_OF_DAYS=$2
FOLDER=$1/`date -d "${NUMBER_OF_DAYS} days ago" '+%Y/%m/%d'`

if [ -d "${FOLDER}" ]; then
   rm -rf "${FOLDER}"
fi
