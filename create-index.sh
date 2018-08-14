#!/bin/bash

ROOT=./public
HTTP="/"
OUTPUT="src/images.json"

i=0
echo "[" > $OUTPUT
for i in `find -E "$ROOT" -maxdepth 1 -mindepth 1 -type f -regex ".*\.(jpg|gif|png|jpeg|svg)| sort`; do
    file=`basename "$i"`
    echo "{ \"src\":\"$HTTP$file\", \"thumbnail\":\"$HTTP$file\", \"thumbnailWidth\": 50, \"thumbnailHeight\":50, \"caption\":\"$file\", \"tags\":[{\"value\":\"$file\", \"title\":\"$file\"}] }," >> $OUTPUT
done
echo "{ \"src\":\"$HTTP$file\", \"thumbnail\":\"$HTTP$file\", \"thumbnailWidth\": 50, \"thumbnailHeight\":50, \"caption\":\"$file\", \"tags\":[{\"value\":\"$file\", \"title\":\"$file\"}] }]" >> $OUTPUT
