#!/bin/bash

LOG_DIR="/home/ubuntu/Linux-admin-journey/day_24/logs"

if [ -d "$LOG_DIR" ]; then
    find "$LOG_DIR" -type f -name "*.log" -delete
    echo "Old log files deleted."
else
    echo "Log directory does not exist. Nothing to delete."
fi

