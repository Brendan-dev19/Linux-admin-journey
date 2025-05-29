#!/bin/bash

SOURCE_DIR="$HOME/Linux-admin-journey"
BACKUP_NAME="backup_$(date +%F).tar.gz"
DEST="$HOME/Linux-admin-journey/day_25/$BACKUP_NAME"

tar -czf "$DEST" "$SOURCE_DIR"
echo "Backup created at $DEST"

