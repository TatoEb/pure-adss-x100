#!/bin/bash
SOURCE_DIR="/media/put-your-ovpn-files-here"
BACKUP_DIR="/media/backup"
BACKUP_FILE="$BACKUP_DIR/backup_$(date +%Y%m%d_%H%M%S).tar.gz"
if [ -d "$SOURCE_DIR" ] && [ "$(ls -A $SOURCE_DIR)" ]; then
    mkdir -p "$BACKUP_DIR"
    sudo tar -czf "$BACKUP_FILE" -C "$SOURCE_DIR" .
    echo "Your data's backup was successfully created in: $BACKUP_FILE"
else
    echo "The folder does not exist or is empty."
fi
