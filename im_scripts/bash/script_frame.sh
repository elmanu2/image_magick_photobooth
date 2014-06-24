#!/bin/bash

echo set "test" as parameter for example

in_dir=../../input_pictures/
out_dir=../../output_pictures/
tmp_dir=../../tmp/

in_file=${in_dir}${1}.png
out_file=${out_dir}${1}-frame.png
in_frame_file=${in_dir}autumn-leaves.png
in_tmp_frame_file=${tmp_dir}autumn-leaves-resize-tmp.png

echo input file : ${in_file}

width=620
height=352

echo ${width} x ${height}

convert ${in_frame_file} -scale ${width}x${height}\! ${in_tmp_frame_file}

convert ${in_file} ${in_tmp_frame_file} +swap -gravity center -compose DstOver -composite ${out_file}

#autumn-leaves-resize-tmp.png

echo output file : ${out_file}





