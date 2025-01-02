#!/bin/bash
# Змінні
URL="https://github.com/TatoEb/OVPN/raw/refs/heads/main/updX100.md"
LOCAL_FILE="credentials.txt"
HEADERS_FILE="checking.txt"
cd /media/put-your-ovpn-files-here/TRIAL.24hours
# Завантаження заголовків
wget -q --spider --server-response -O /dev/null $URL 2>&1 | grep -iE "Last-Modified|ETag" > $HEADERS_FILE.tmp

# Перевірка наявності старих заголовків
if [[ -f $HEADERS_FILE ]]; then
    if ! cmp -s $HEADERS_FILE $HEADERS_FILE.tmp; then
        echo "Завантажую новий credentials.txt, бо змінились дані авторизації..."
        wget -q -O $LOCAL_FILE $URL
        mv $HEADERS_FILE.tmp $HEADERS_FILE
    else
        echo "Дані авторизації в файлі credentials.txt не змінились."
        rm $HEADERS_FILE.tmp
    fi
else
    echo "Завантажую файл credentials.txt..."
    wget -q -O $LOCAL_FILE $URL
    mv $HEADERS_FILE.tmp $HEADERS_FILE
fi
cd ~
