#!/bin/sh

URL="<div style=\"audioblock\">
        <audio loop controls preload="none">
          <source src=\"https://github.com/jakubwalerstein/jakubwalerstein.github.io/blob/master/loops/synth/FILENAME?raw=true\" type=\"audio/wav\">
          Your browser does not support the audio element.
        </audio>
        FILENAME
      </div>
"

for file in loops/synth/*
do  
	echo "${URL//FILENAME/$(basename "$file")}"  >> loophtml.txt
done
