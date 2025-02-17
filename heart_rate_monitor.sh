#!/bin/bash

#read -p this command prompts the user for input with a message and stores the input variable
read -p "what devide do you want to use? " DEVICE
# Display the process ID of the script
echo "This script is running on a process with PID: $$"
# Start an infinite loop to continuously log heart rate data
while [[ 1 -lt 2 ]]
do
	# Log current timestamp, device name, and random heart rate value (0-100)
        # The random value is generated using the 'shuf' command within 0-100 limit	
	echo "$(date '+%Y-%m-%d %H:%M:%S') $DEVICE $(shuf -i 0-100 -n 1)" >> heart_rate_log.txt
	# Pause for 1 second before the next iteration to prevent excessive logging
	sleep 1
done
