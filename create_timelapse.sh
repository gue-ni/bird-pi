#!/bin/bash
set -e
set -x

img_dir=/var/motion/images
timelapse_dir=/var/motion/videos
tmp_dir=/tmp

today=$(date "+%Y-%m-%d")
datestamp=${1:-$today}
fps=10

filename=timelapse_$datestamp.mp4

ffmpeg -y -r $fps -f image2 -pattern_type glob -i "${img_dir}/image_${datestamp}_*.jpg" -s 832x600 -vcodec libx264 $tmp_dir/$filename

mv $tmp_dir/$filename $timelapse_dir/$filename


