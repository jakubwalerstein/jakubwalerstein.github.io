#!/bin/sh

BLOCK="<div style=\"audioblock\">
        <audio loop controls>
          <source src=\"./FILENAME\" type=\"audio/wav\">
          Your browser does not support the audio element.
        </audio>
        ./FILENAME
      </div>
"

for file in loops/*
do
    #whatever you need with "$file"
    
    echo "${BLOCK//FILENAME/$file}"  >> loophtml.txt
done
