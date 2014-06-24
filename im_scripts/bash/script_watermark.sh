#!/bin/bash

echo OFF
echo set "test" as parameter for example

in_dir=../../input_pictures/
out_dir=../../output_pictures/
tmp_dir=../../tmp/

in_file=${in_dir}${1}.png
in_wat_file=${out_dir}/wistiti-resized.png
out_file=${out_dir}${1}-watermark.png

echo input file : ${in_file}
echo processing...
composite -gravity SouthEast ${in_wat_file} ${in_file} ${out_file}
echo output file : ${out_file}
