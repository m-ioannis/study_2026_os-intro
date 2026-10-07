#!/bin/bash

if test -f /usr/share/man/man1/$1.1.gz
then
    less /usr/share/man/man1/$1.1.gz
else
    echo "Справка для команды $1 не найдена"
fi