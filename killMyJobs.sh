#!/bin/bash
#copyLeft holder: franciscotv
#license: GPL-3.0-or-later

#script kill processes of someProcess or someUser
#grep pids of user or program then kiil them
#catches the return value of each kill to avoid exiting before all jobs are killed

jobs=$(ps aux | grep someFoo | awk '{print $2}')
array=(${jobs})
len=${#array[@]}
# kill'em All
for (( i=0; i<$len; i++ ));
do
    catch=$(kill -9 ${array[$i]})
done

#if need to killAll at once expand the array at once and pass it to "kill -9 "