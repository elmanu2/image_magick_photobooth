#!/bin/bash

echo OFF
echo set "test" as parameter for example

in_dir=../../input_pictures/
out_dir=../../output_pictures/
tmp_dir=../../tmp/

in_file=${in_dir}${1}.png
out_file=${out_dir}gm-${1}-polaroid-matrix.png

echo input file : ${in_file}
echo processing polaroid matrix...

gm convert ${in_file} -recolor "6x3: 1.438 -0.122 -0.016 0 0 -0.03 -0.062 1.378 -0.016 0 0 0.05 -0.062 -0.122 1.483 0 0 -0.02"  ${out_file}

echo output file : ${out_file}