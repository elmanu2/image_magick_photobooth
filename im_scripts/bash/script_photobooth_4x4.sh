#!/bin/bash

echo OFF
echo parameters : input_file border_width border_height
echo set "test" "10" "10" as parameters for example

in_dir=../../input_pictures/
out_dir=../../output_pictures/
tmp_dir=../../tmp/

in_file=${in_dir}${1}.png
out_file=${out_dir}${1}-photobooth-4x4.png
in_frame_file=${in_dir}autumn-leaves.png
in_tmp_pb1=${tmp_dir}${1}-photobooth-tmp1.png
in_tmp_pb2=${tmp_dir}${1}-photobooth-tmp2.png


echo input file : ${in_file}
echo processing...
convert ${in_file} -bordercolor black -border ${2}x${3} ${in_tmp_pb1}
convert ${in_tmp_pb1} ${in_tmp_pb1} -append ${in_tmp_pb2}
convert ${in_tmp_pb2} ${in_tmp_pb2} +append ${out_file}
convert ${out_file} -bordercolor black -border $2x$3 ${out_file}
rm ${in_tmp_pb1}
rm ${in_tmp_pb2}
echo output file : ${out_file}