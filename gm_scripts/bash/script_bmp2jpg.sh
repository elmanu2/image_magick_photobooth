#!/bin/bash

echo ON

in_dir=../../input_pictures/
out_dir=../../output_pictures/

in_file=${in_dir}${1}.bmp
out_file=${out_dir}gm-${1}-bmp2png.png

gm convert ${in_file} ${out_file}