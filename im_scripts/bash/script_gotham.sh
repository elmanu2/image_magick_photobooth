#!/bin/bash

#Parameters found from this website : http://code.tutsplus.com/tutorials/create-instagram-filters-with-php--net-24504

echo set "test" as parameter for example
echo input file : ${1}.png
echo input file size : ${2} x ${3}

width=${2}
height=${3}

in_dir=../../input_pictures/
out_dir=../../output_pictures/
tmp_dir=../../tmp/

in_file=${in_dir}${1}.png
in_grad_file=${in_dir}grad-center-light.png
in_grad_file_resize=${tmp_dir}grad-center-light-tmp.png
in_vign_file=${in_dir}grad-vignette.png
in_vign_file_resize=${tmp_dir}grad-vignette-tmp.png

out_file=${out_dir}${1}-gotham.png
in_frame_file=${in_dir}autumn-leaves.png
in_tmp1=${tmp_dir}${1}-vintage-tmp1.png
in_tmp2=${tmp_dir}${1}-vintage-tmp2.png
in_tmp3=${tmp_dir}${1}-vintage-tmp3.png

echo ${width} x ${height}

convert ${in_file} -modulate 120,10,100 -fill '#222b6d' -colorize 20 -gamma 0.5 -contrast -contrast ${in_tmp1}
convert ${in_tmp1} -bordercolor black -border 20x20 ${out_file}

rm ${in_tmp1}
#rm ${in_grad_file_resize} ${in_vign_file_resize}

echo output file : ${out_file}





