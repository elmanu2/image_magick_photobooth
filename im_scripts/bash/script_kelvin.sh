#!/bin/bash

#Parameters found from this website :http://code.tutsplus.com/tutorials/create-instagram-filters-with-php--net-24504

echo call "./script_kelvin.sh sf-bridge 620 352 "
echo call "./script_kelvin.sh insta-origin 640 640"

echo input file : ${1}.png
echo input file size : ${2} x ${3}

width=${2}
height=${3}

in_dir=../../input_pictures/
out_dir=../../output_pictures/
tmp_dir=../../tmp/

in_file=${in_dir}${1}.png

out_file=${out_dir}${1}-kelvin.png

convert \( ${in_file} -auto-gamma -modulate 120,50,100 \) \
                   \( -size ${width}x${height} -fill 'rgba(255,153,0,0.5)' -draw "rectangle 0,0,${width},${height}" \) \
                   -compose multiply \
                   ${out_file}


echo output file : ${out_file}





