#!/bin/bash
echo "Answer the following questions:"
read -p "1. Tool you use: " TOOL
read -p "2. Meaning of freedom: " FREEDOM
read -p "3. What you want to build: " BUILD

DATE=$(date)
FILE="manifesto.txt"
echo "----- Open Source Manifesto -----" > $FILE
echo "DATE: $DATE" >> $FILE
echo "I use $TOOL. Freedom means $FREEDOM. I want to build $BUILD." >> $FILE
echo "Manifesto saved in $FILE"
cat $FILE
