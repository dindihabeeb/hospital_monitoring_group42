#!/bin/bash

#cp it copies files and directories from one location to another
cp heart_rate_log.txt archive_logs_group42/heart_rate_log.txt_$(date '+%Y%m%d_%H%M%S')
