#!/bin/bash

echo OFF

in_dir=../../input_pictures/
out_dir=../../output_pictures/
tmp_dir=../../tmp/

in_file=${in_dir}${1}.png
tmp_file=${tmp_dir}${1}-lessalpha.png
out_file=${out_dir}${1}-comp.png

echo input file : ${in_file}
echo processing wistiti compression...

echo processing remove alpha channel...
#remove alpha channel
convert ${in_file} -background white -alpha off ${tmp_file}
echo processing alpha channel removed ${tmp_file}...

#quantization
convert ${tmp_file} -colors 256 ${out_file}

#rm ${tmp_file}
echo output file : ${out_file}