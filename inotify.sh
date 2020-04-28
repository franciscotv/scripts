#!/bin/bash

#copyLeft holder: franciscotv
#license: GPL-3.0-or-later

#script to monitor a dir or file modifications done on it
#write, change permissions, open, close ...
#using inotify gnu/linux api function
#for loop runs to wait for the creation of the file/dir if it doesn't exist yet,
#once is found, the inotifywait wait starts tracking for changes

for i in `seq 1 100000`;
do
	while inotifywait  /rootFolder/hereIsMyDirToMonitor; do
		echo "put here the actions you want to do when the dir/file is modified"
		ls -al /someDir
		touch /someFile
	done
sleep 2
done

