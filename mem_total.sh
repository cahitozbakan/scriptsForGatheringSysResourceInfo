#!/bin/bash
totalmemory=$(cat /proc/memninfo | grep MemTotal | awk '{print $2}')
freememory=$(cat /proc/meminfo | grep MemFree |awk '{print $2}')
((memfull=$totalmemory-$freememory))
((x=$memfull*100))
((y=$x/$totalmemory))
echo $y
