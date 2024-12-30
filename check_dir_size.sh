#!/bin/bash

set -e

DIRECTORY=/var/motion/images

GB=1000000000
SIZE_LIMIT=$(( 10 * GB ))

calculate_directory_size() {
  du -sb "$1" | cut -f1
}

if [ -d "$DIRECTORY" ]; then
  DIRECTORY_SIZE=$(calculate_directory_size "$DIRECTORY")

  echo "Directory size: $DIRECTORY_SIZE bytes"

  # Check if it exceeds the size limit
  if [ "$DIRECTORY_SIZE" -gt "$SIZE_LIMIT" ]; then
    echo "The directory exceeds $SIZE_LIMIT bytes!"


  else
    echo "The directory size is within the limit. ($SIZE_LIMIT bytes)"
  fi
fi

