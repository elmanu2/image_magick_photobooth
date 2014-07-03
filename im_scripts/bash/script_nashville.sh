#!/bin/bash

#Parameters found from this website :http://code.tutsplus.com/tutorials/create-instagram-filters-with-php--net-24504

echo call "./script_nashville.sh insta-origin"

width=${2}
height=${3}
crop_x=${4}
crop_y=${5}

echo input file : ${1}.png

in_dir=../../input_pictures/
out_dir=../../output_pictures/
tmp_dir=../../tmp/

in_file=${in_dir}${1}.png
in_tmp1=${tmp_dir}${1}-nashville-tmp1.png
in_tmp2=${tmp_dir}${1}-nashville-tmp2.png

out_file=${out_dir}${1}-nashville.png
   
   
   echo "100%"
   echo "#222b6d"

convert ${in_file} \( -clone 0 -fill \#222b6d -colorize 100% \) \
                   \( -clone 0 -colorspace gray -negate \) \
                   -compose blend -define compose:args=100,0 -composite \
                   ${in_tmp1}

convert ${in_tmp1} \( -clone 0 -fill \#f7daae -colorize 100% \) \
                   \( -clone 0 -colorspace gray \) \
                   -compose blend -define compose:args=100,0 -composite \
                   ${in_tmp2}

convert ${in_tmp2} -contrast -modulate 100,150,100 -auto-gamma ${out_file}
     
     
rm ${int_tmp1} ${in_tmp2}

echo output file : ${out_file}





