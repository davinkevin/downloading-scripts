#!/bin/bash

set -euo pipefail

LOCATION=$1/$(date --date now '+%Y')/$(date --date now '+%m')/$(date --date now '+%d')/

find ${LOCATION} -name "*.aac" -type f -size -2M -delete
find ${LOCATION} -name "*.mp2" -type f -size -2M -delete
find ${LOCATION} -name "*.mp3" -type f -size -2M -delete
