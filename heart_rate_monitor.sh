#!/bin/bash
read -p "what devide do you want to use? " DEVICE
echo "This script is running on a process with PID: $$"
while [[ 1 -lt 2 ]]
do 
	echo "$(date '+%Y-%m-%d %H:%M:%S') $DEVICE $(shuf -i 0-100 -n 1)" >> heart_rate_log.txt
done
