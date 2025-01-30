#!/bin/bash

set -e
set -x

IMAGES=/var/motion/images

THRESHOLD=3000

IMAGE_COUNT=$(find $images -type f | wc -l)

if [ "$IMAGE_COUNT" -gt "$THRESHOLD" ]; then
	echo "Find and remove old files"
	find $IMAGES -mtime +2 -type f -delete
else
	echo "Not enough files, nothing to do"
fi

