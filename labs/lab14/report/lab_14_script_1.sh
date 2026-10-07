#!/bin/bash
while test -f lockfile
do
    echo "Процесс $$: жду освобождения ресурса"
    sleep 1
done
touch lockfile
echo "Процесс $$: получил ресурс"
let c=10
while ((c-=1))
do
    echo "Процесс $$: использую ресурс"
    sleep 1
done
echo "Процесс $$: освобождаю ресурс"
rm lockfile