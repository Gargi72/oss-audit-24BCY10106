#!/bin/bash
DIRS=("/etc" "/home" "/usr" "/var")
echo "==== Directory Audit ===="

for DIR in "${DIRS[@]}";do
if [ -d "$DIR" ]; then
echo "Checking $DIR"
ls -ld $DIR
else
echo "$DIR not found"
fi
done
