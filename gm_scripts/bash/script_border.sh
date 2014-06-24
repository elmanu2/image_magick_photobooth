#!/bin/bash

echo OFF
echo set "test" as parameter for example


in_dir=../../input_pictures/
out_dir=../../output_pictures/

in_file=${in_dir}${1}.png
out_file=${out_dir}gm-${1}-border.png

echo input file : ${in_file}
echo processing...

gm convert ${in_file} -bordercolor black -border 10x10  ${out_file}

echo output file : ${out_file}