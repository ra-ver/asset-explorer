#!/bin/bash

ROOT=./public
HTTP="/"
OUTPUT="src/images.json"

i=0
echo "[" > $OUTPUT
for i in `find "$ROOT" -maxdepth 1 -mindepth 1 -type f -iname '*.svg' -iname '*.png' -iname '*.jpg'| sort`; do
    file=`basename "$i"`
    echo "{ \"src\":\"$HTTP$file\", \"thumbnail\":\"$HTTP$file\", \"thumbnailWidth\": 50, \"thumbnailHeight\":50, \"caption\":\"$file\", \"tags\":[{\"value\":\"$file\", \"title\":\"$file\"}] }," >> $OUTPUT
done
echo "{ \"src\":\"$HTTP$file\", \"thumbnail\":\"$HTTP$file\", \"thumbnailWidth\": 50, \"thumbnailHeight\":50, \"caption\":\"$file\", \"tags\":[{\"value\":\"$file\", \"title\":\"$file\"}] }]" >> $OUTPUT
