#!/bin/bash

let i=$1+1
while (( i-=1 ))
do
    touch $i.tmp
done

ls

let j=$2+1
while (( j-=1 ))
do
    rm $j.tmp
done

ls