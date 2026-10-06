#!/bin/bash

mkdir -p ~/backup

tar -czf ~/backup/lab_12_script_01.sh.tar.gz "$0"

echo "Резервная копия создана в ~/backup"
