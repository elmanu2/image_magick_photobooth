#!/bin/bash

#Parameters found from this website : https://github.com/paulasmuth/hipster_filters

echo set "test" as parameter for example
echo input file : $1.png

width=500
height=375

in_dir=../../input_pictures/
out_dir=../../output_pictures/
tmp_dir=../../tmp/

in_file=${in_dir}${1}.png
in_grad_file=${in_dir}grad-center-light.png
in_grad_file_resize=${tmp_dir}grad-center-light-tmp.png
in_vign_file=${in_dir}grad-vignette.png
in_vign_file_resize=${tmp_dir}grad-vignette-tmp.png

out_file=${out_dir}gm-${1}-vintage.png
in_frame_file=${in_dir}autumn-leaves.png
in_tmp1=${tmp_dir}${1}-vintage-tmp1.png
in_tmp2=${tmp_dir}${1}-vintage-tmp2.png
in_tmp3=${tmp_dir}${1}-vintage-tmp3.png

echo ${width} x ${height}

gm convert ${in_grad_file} -resize ${width}x${height} ${in_grad_file_resize}
gm composite ${in_grad_file_resize} ${in_file} -compose over -gravity center ${in_tmp1}
gm convert ${in_tmp1} -modulate 100,120 ${in_tmp2}
gm convert ${in_tmp2} -brightness-contrast 0x20 ${in_tmp3}

gm convert ${in_vign_file} -resize %width%x%height% ${in_vign_file_resize}
gm composite ${in_vign_file_resize} ${in_tmp3} -compose overlay -gravity center ${out_file}

rm ${in_tmp1} ${in_tmp2} ${in_tmp3}
rm ${in_grad_file_resize} ${in_vign_file_resize}

echo output file : ${out_file}





