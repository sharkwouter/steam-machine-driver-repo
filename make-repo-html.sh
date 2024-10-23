#!/bin/bash

#Change directory to the directory of this script
cd "$(dirname "$0")"
mkdir -p repo

# Export all variables
set -a

# Fail on error
set -e

# Set global variables
GITHUB_REPOSITORY_OWNER="${GITHUB_REPOSITORY_OWNER:-sharkwouter}"
GITHUB_REPOSITORY="${GITHUB_REPOSITORY:-sharkwouter/steam-machine-repo}"
INDEX_TABLE_CONTENT=""

# Build the html pages
for FILE in $(ls repo); do
	INDEX_CONTENT="${INDEX_TABLE_CONTENT}<a href=\"${FILE}\">${FILE}</a><br>"
done

envsubst < index.html > repo/index.html
cp style.css repo/
