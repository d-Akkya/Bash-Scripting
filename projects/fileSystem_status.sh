#!/bin/bash

#monitoring the free fs space disk
FU=$(df -h | egrep -v "Filesystem" | grep "/d" | awk '{print $5}' | tr -d %)
To="akhileshbamane26@gmail.com"

if [[ $FU -ge 80 ]]
then
	echo "Warning, disk space is running out - $FU%" | mail -s "Disk SPACE ALERT!" $To
else
	echo "All good:)"
fi
