#!/bin/bash
DEST_DIR="/media/put-your-ovpn-files-here"
BACKUP_DIR="/media/backup"
LAST_BACKUP=$(ls -t $BACKUP_DIR/backup_*.tar.gz 2>/dev/null | head -n 1)
if [ -f "$LAST_BACKUP" ]; then
    sudo rm -rf "$DEST_DIR"/*
    sudo tar -xzf "$LAST_BACKUP" -C "$DEST_DIR"
    echo "Your data was successfully restored from the file: $LAST_BACKUP"
    sudo rm -rf "$BACKUP_DIR"/*
else
    echo "No your backups found.."
fi
