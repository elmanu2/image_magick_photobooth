#!/bin/bash
echo ON

in_dir=../../input_pictures/
out_dir=../../output_pictures/

in_file=${in_dir}${1}.jpg
out_file=${out_dir}${1}-jpg2png.png

convert ${in_file} ${out_file}