#!/bin/bash

set -e
set -x


if pgrep -x "rsync" > /dev/null;
then
	echo "already running"
	exit 1
fi

local_video_dir=/var/motion/

remote_server=root@www.jakobmaier.at
remote_video_dir=/var/www/files/bird-pi/

rsync --archive --verbose --delete $local_video_dir $remote_server:$remote_video_dir
