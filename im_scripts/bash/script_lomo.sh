#!/bin/bash

#Parameters found from this website :http://code.tutsplus.com/tutorials/create-instagram-filters-with-php--net-24504

echo call "./script_lomo.sh insta-origin 640 640 960 960"

width=${2}
height=${3}
crop_x=${4}
crop_y=${5}

echo input file : ${1}.png
echo input file size : ${width} x ${height}
echo input file crop : ${crop_x} x ${crop_y}


in_dir=../../input_pictures/
out_dir=../../output_pictures/
tmp_dir=../../tmp/

in_file=${in_dir}${1}.png
in_tmp1=${tmp_dir}${1}-lomo-tmp1.png
out_file=${out_dir}${1}-lomo.png
     
convert ${in_file} -channel R -level 33% -channel G -level 33% ${in_tmp1}

convert \( ${in_tmp1} \) \
        \( -size ${crop_x}x${crop_y} \
        radial-gradient:none-black \
        -gravity center -crop ${width}x${height}+0+0 +repage \) \
        -compose multiply -flatten \
        ${out_file}
        

rm ${int_tmp1}

echo output file : ${out_file}





