#!/bin/bash

ROOT=./public
HTTP="./"
OUTPUT="index.html" 

i=0
echo "<UL>" > $OUTPUT
  for i in `find "$ROOT" -maxdepth 1 -mindepth 1 -type f| sort`; do
    file=`basename "$i"`
    echo "    <LI><img src=\"$i\" width=\"50\" height=\"50\">  $file</img></LI>" >> $OUTPUT
  done
echo "</UL>" >> $OUTPUT
