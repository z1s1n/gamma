#! /bin/bash

#starttime.sh -sakulagi

PID=$1
JIFFIES=`cat /proc/$PID/stat | cut -d" " -f22`
UPTIME=`grep btime /proc/stat | cut -d" " -f2`
START_SEC=$(( $UPTIME + $JIFFIES / 100 ))
START_TIME=`date -d "1970-1-1 UTC $START_SEC seconds"`
echo $START_TIME
