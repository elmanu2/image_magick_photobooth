#!/bin/bash

echo OFF
echo set "test" as parameter for example

in_dir=../../input_pictures/
out_dir=../../output_pictures/
tmp_dir=../../tmp/

in_file=${in_dir}${1}.png
out_file=${out_dir}${1}-sepia.png

echo input file : ${in_file}
echo processing...
convert ${in_file} -sepia-tone 80%%  ${out_file}
echo output file : ${out_file}