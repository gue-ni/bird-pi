#!/bin/bash

set -e
IMAGES=/var/motion/images

find $IMAGES -mtime +7 -type f -print

