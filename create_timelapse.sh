#!/bin/bash
set -e
set -x

img_dir=/var/motion/images
timelapse_dir=/var/motion/videos

today=$(date "+%Y-%m-%d")
datestamp=${1:-$today}
fps=10

ffmpeg -y -r $fps -f image2 -pattern_type glob -i "${img_dir}/image_${datestamp}_*.jpg" -s 832x600 -vcodec libx264 $timelapse_dir/timelapse_$datestamp.mp4


