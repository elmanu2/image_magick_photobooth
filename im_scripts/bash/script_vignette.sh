#!/bin/bash

echo OFF
echo set "test-sepia" as parameter for example
echo add vignette filter to an image and save into another file

in_dir=../../input_pictures/
out_dir=../../output_pictures/
tmp_dir=../../tmp/

in_file=${in_dir}${1}.png
out_file=${out_dir}${1}-vignette.png

echo input file : ${in_file}
echo processing...

convert ${in_file} -background grey -vignette 0x50-80-80 ${out_file}

echo output file : ${out_file}