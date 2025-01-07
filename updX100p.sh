#!/bin/bash
URL="https://github.com/TatoEb/OVPN/raw/refs/heads/main/updX100.md"
LOCAL_FILE="credentials.txt"
HEADERS_FILE="checking.txt"
WORK_DIR="/media/put-your-ovpn-files-here/TRIAL.24hours"
cd "$WORK_DIR" || exit
curl -sI "$URL" | grep -iE "Last-Modified|ETag" > "$HEADERS_FILE.tmp"
if [[ -f $HEADERS_FILE ]]; then
    if ! cmp -s "$HEADERS_FILE" "$HEADERS_FILE.tmp"; then
        echo "Файл credentials.txt змінився. Завантажую новий..."
        curl -s -o "$LOCAL_FILE" "$URL"
        mv "$HEADERS_FILE.tmp" "$HEADERS_FILE"
    else
        echo "Файл credentials.txt не змінився."
        rm "$HEADERS_FILE.tmp"
    fi
else
    echo "Завантажую файл credentials.txt..."
    curl -s -o "$LOCAL_FILE" "$URL"
    mv "$HEADERS_FILE.tmp" "$HEADERS_FILE"
fi
cd ~ || exit
