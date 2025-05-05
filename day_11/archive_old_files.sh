#!/bin/bash

DATA_DIR=~/data
ARCHIVE_DIR=~/archives
DATE_TAG=$(date +"%Y-%m-%d")
ARCHIVE_NAME="$ARCHIVE_DIR/archived_$DATE_TAG.tar.gz"

# Find and archive .txt files older than 2 days
find "$DATA_DIR" -name "*.txt" -type f -mtime +2 -print0 | tar -czvf "$ARCHIVE_NAME" --null -T -

echo "Archived files saved to $ARCHIVE_NAME"

