#!/bin/bash

# Usage: ./batch_image_script.sh train train.txt
# $1: train folders contains subfolders 00 01 02 ... N, with each
# subfolder contains training *.jpg images of specific class.
# $2: train.txt, output text file, with each line in the format of
# "image_path label"

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 dir output_file"
  exit 1
fi

cd $1

for file in *; do
  if [[ -d "$file" && ! -L "$file" ]]; then
    label=$(echo "$file - 0" | bc)
    #for im in $(ls $file | grep "\.jpg$");
    for im in $(find $file -name "*.jpg")
    do
      echo "/home/mrbing/data/traffic_light_13class/images/$1/$im $label" >> $2
      
    done;
  fi; 
done
