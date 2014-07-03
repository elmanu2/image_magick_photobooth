#!/bin/bash

echo OFF
echo set "test" as parameter for example


in_dir=../../input_pictures/
out_dir=../../output_pictures/

in_file=${out_dir}${1}.png
out_file=${out_dir}${1}-wisticomp-${2}-sf${3}x${4}.jpg

echo input file : ${in_file}
echo quality : ${2}
echo sampling factor : ${3}x${4}
echo processing png2jpg...

convert ${in_file} -quality ${2} -sampling-factor ${3}x${4} ${out_file}

echo output file : ${out_file}