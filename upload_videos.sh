#!/bin/bash

set -e
set -x

local_video_dir=/var/motion/

remote_server=root@www.jakobmaier.at
remote_video_dir=/var/www/files/bird-pi/

rsync --archive --verbose --delete $local_video_dir $remote_server:$remote_video_dir
