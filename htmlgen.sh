#!/bin/sh

BLOCK="<div style=\"audioblock\">
        <audio controls>
          <source src=\"./FILENAME\" type=\"audio/wav\">
          Your browser does not support the audio element.
        </audio>
        ./FILENAME
      </div>
"

for file in samples/summerlakes_park/*
do  
    echo "${BLOCK//FILENAME/$file}"  >> samplehtml.txt
done
