#!/bin/sh

FILE=filesarray.txt
if [ -f "$FILE" ]; then
    rm filesarray.txt
fi


for track in "$1"/*
do  
	echo "\"$track\",\c" >> filesarray.txt
done

sed -i '' '$ s/.$//' filesarray.txt