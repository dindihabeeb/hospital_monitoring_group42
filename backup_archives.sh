#!/bin/bash

#mkdir -p creates the directory first unless it did n't existed before moving the archived files
#scp -r it securely copies files over SSH and copies directories recursively including all files and subdirectories
# Move log files with digits in their names to the archive directory
mkdir -p archive_logs_group42
mv heart_rate_log.txt[[:digit:]]*[[:digit:]] archive_logs_group42/
scp -r archive_logs_group42/ f6314d11c866@f6314d11c866.1009380b.alu-cod.online:~/
