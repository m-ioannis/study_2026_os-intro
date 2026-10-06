#!/bin/bash

NUMBER=1

for ARG in "$@"
do
    echo "Аргумент $NUMBER: $ARG"
    NUMBER=$((NUMBER + 1))
done
