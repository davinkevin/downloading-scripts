#!/bin/bash

set -euo pipefail

DEST_FOLDER=$1

mkdir -p "${DEST_FOLDER}/$(date --date now '+%Y')/$(date --date now '+%m')/$(date --date now '+%d')";
