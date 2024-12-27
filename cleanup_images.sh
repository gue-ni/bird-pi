#!/bin/bash

set -e

IMAGES=/var/motion/images
ARCHIVE=/var/motion/archive

mkdir -p $ARCHIVE

DAYS=1

find $IMAGES -mtime +$DAYS -type f -exec mv {} $ARCHIVE \;
