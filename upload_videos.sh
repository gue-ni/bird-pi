#!/bin/bash

set -e
set -x

if pgrep -x "rsync" > /dev/null;
then
	echo "already running"
	exit 1
fi

local_dir=/var/motion/images/

remote_server=root@www.jakobmaier.at
remote_dir=/var/www/files/birds-of-gartenweg/

rsync --archive --verbose --delete $local_dir $remote_server:$remote_dir
