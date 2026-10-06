#!/bin/bash

if [ $# -ne 2 ]
then
    echo "Использование: $0 расширение каталог"
    exit 1
fi

EXT=$1
DIR=$2

if [ ! -d "$DIR" ]
then
    echo "Каталог не найден"
    exit 1
fi

COUNT=0

for FILE in "$DIR"/*
do
    if [ -f "$FILE" ]
    then
        FILE_EXT="${FILE##*.}"

        if [ "$FILE_EXT" = "$EXT" ]
        then
            COUNT=$((COUNT + 1))
        fi
    fi
done

echo "Файлов .$EXT найдено: $COUNT"
