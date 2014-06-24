#!/bin/bash

echo OFF

in_dir=../../input_pictures/
out_dir=../../output_pictures/
tmp_dir=../../tmp/

in_file=${in_dir}wistiti_1024.png
out_file=${out_dir}gm-wistiti-resized.png

echo input file : wisititi_1024.png
echo processing...
gm convert ${in_file} -crop 1024x350+0+350 -resize 25%% ${out_file}
echo output file : ${out_file}