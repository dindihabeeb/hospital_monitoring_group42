#!/bin/bash
mkdir -p archive_logs_group42
mv heart_rate_log.txt[[:digit:]]*[[:digit:]] archive_logs_group42/
scp -r archive_logs_group42/ f6314d11c866@f6314d11c866.1009380b.alu-cod.online:~/
