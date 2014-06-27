#!/bin/bash

echo OFF

in_dir=../../input_pictures/
out_dir=../../output_pictures/
tmp_dir=../../tmp/

in_file=${in_dir}${1}.png

image_info=$(identify ${in_file})

echo ${image_info}

arr=$(echo $image_info | tr " " "\n")

for x in $arr
do
    echo "> [$x]"
done

echo output file : ${out_file}