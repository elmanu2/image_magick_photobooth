#!/bin/bash

echo OFF
echo set "test" as parameter for example

in_dir=../../input_pictures/
out_dir=../../output_pictures/
tmp_dir=../../tmp/

in_file=${in_dir}${1}.png
out_file=${out_dir}${1}-sepia-matrix.png

echo input file : ${in_file}
echo processing sepia matrix...

convert ${in_file} -color-matrix "0.393 0.769 0.189 0.349 0.686 0.168 0.272 0.534 0.131"  ${out_file}

echo output file : ${out_file}