#!/bin/bash

echo OFF
echo set "test" as parameter for example


in_dir=../../input_pictures/
out_dir=../../output_pictures/

in_file=${in_dir}${1}.png
out_file=${out_dir}${1}-border.png

echo input file : ${in_file}
echo border : ${2} x ${3} 
echo processing border...

convert ${in_file} -bordercolor black -border ${2}x${3}  ${out_file}

echo output file : ${out_file}