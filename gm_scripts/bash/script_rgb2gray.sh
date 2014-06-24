#!/bin/bash

echo OFF
echo set "test" as parameter for example

in_dir=../../input_pictures/
out_dir=../../output_pictures/
tmp_dir=../../tmp/

in_file=${in_dir}${1}.png
out_file=${out_dir}gm-${1}gray.png

echo input file : ${in_file}
echo processing...
gm convert ${in_file} -colorspace Gray ${out_file}
echo output file : ${out_file}
