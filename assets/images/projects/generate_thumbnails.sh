#!/bin/bash

mkdir -p thumbnails
for file in *.jpg
do
  if [ -f ./thumbnails/$file ]; then
    continue
  else
    echo "Processing $file"
    convert $file -sampling-factor 4:2:0 -strip -resize 500x500 -quality 85 -interlace JPEG -colorspace RGB ./thumbnails/$file
  fi
done
