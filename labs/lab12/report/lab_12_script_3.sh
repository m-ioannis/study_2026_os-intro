#!/bin/bash

DIR=${1:-.}

if [ ! -d "$DIR" ]
then
    echo "Ошибка: каталог не существует"
    exit 1
fi

echo "Информация о каталоге: $DIR"

for FILE in "$DIR"/*
do
    if [ -e "$FILE" ]
    then

        PERM=$(stat -c "%A" "$FILE")
        SIZE=$(stat -c "%s" "$FILE")

        if [ -d "$FILE" ]
        then
            TYPE="Каталог"
        else
            TYPE="Файл"
        fi

        echo "$TYPE"
        echo "Имя: $(basename "$FILE")"
        echo "Размер: $SIZE байт"
        echo "Права доступа: $PERM"
    fi
done
