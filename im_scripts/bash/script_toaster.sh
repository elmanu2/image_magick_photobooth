#!/bin/bash

#Parameters found from this website :http://code.tutsplus.com/tutorials/create-instagram-filters-with-php--net-24504

echo call "./script_toaster.sh sf-bridge 500 375 750 562"
echo call "./script_toaster.sh insta_origin 640 640 960 960"

echo input file : ${1}.png
echo input file size : ${2} x ${3}
echo ${4} x ${5}

width=${2}
height=${3}
crop_x=${4}
crop_y=${5}


in_dir=../../input_pictures/
out_dir=../../output_pictures/
tmp_dir=../../tmp/

in_file=${in_dir}${1}.png

out_file=${out_dir}${1}-toaster.png
in_tmp1=${tmp_dir}${1}-toaster-tmp1.png
in_tmp2=${tmp_dir}${1}-toaster-tmp2.png
in_tmp3=${tmp_dir}${1}-toaster-tmp3.png


convert ${in_file} \( -clone 0 -fill \#330000 -colorize 100% \) \
                   \( -clone 0 -colorspace gray -negate \) \
                   -compose blend -define compose:args:100,0 -composite \
                   ${in_tmp1}

convert ${in_tmp1} -modulate 150,80,100 -gamma 1.2 -contrast -contrast ${in_tmp2}


convert \( ${in_tmp2} \) \
        \( -size ${crop_x}x${crop_y} \
        radial-gradient:none-LavenderBlush3 \
        -gravity center -crop ${width}x${height}+0+0 +repage \) \
        -compose multiply -flatten \
        ${in_tmp3}
        
convert \( ${in_tmp3} \) \
        \( -size ${crop_x}x${crop_y} \
        radial-gradient:\#ff9966-none \
        -gravity center -crop ${width}x${height}+0+0 +repage \) \
        -compose multiply -flatten \
        ${out_file}
        
        
#rm ${in_tmp1} ${in_tmp2} ${in_tmp3}

echo output file : ${out_file}





