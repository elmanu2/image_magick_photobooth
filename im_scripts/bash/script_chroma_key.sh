#!/bin/bash

echo OFF
echo set "test-sepia" as parameter for example
echo add vignette filter to an image and save into another file

in_dir=../../input_pictures/
out_dir=../../output_pictures/
tmp_dir=../../tmp/

in_file=${in_dir}${1}.png
out_file=${out_dir}${1}-chroma-key-mask.png
tmp_file=${tmp_dir}${1}-hue-tmp.png

echo input file : ${in_file}
echo processing...

convert ${in_file} -colorspace HSL -channel Hue -separate ${tmp_file}
convert ${in_file} -modulate 100,100,33.3  -colorspace HSL \
          -channel Hue,Saturation -separate +channel \
          \( -clone 0 -background none -fuzz 5% +transparent grey64 \) \
          \( -clone 1 -background none -fuzz 10% -transparent black \) \
          -delete 0,1  -alpha extract  -compose multiply -composite \
          ${out_file}

echo output file : ${out_file}