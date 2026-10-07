#! /bin/bash

declare -a ABC
ABC=({a..z})
let limit=26
let i=10

while ((i-=1))
do
numb=$RANDOM
let numb%=limit
output=$output${ABC[$numb]}
done

echo $output