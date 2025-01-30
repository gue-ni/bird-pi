#!/bin/bash

set -e
set -x

if pgrep -x "rsync" > /dev/null;
then
	echo "already running"
	exit 1
fi

local_dir=/var/motion/

remote_server=root@home.jakobmaier.at
remote_dir=/mnt/disk-1/srv/birds-of-gartenweg

rsync --omit-dir-times --delete --archive --verbose $local_dir $remote_server:$remote_dir
