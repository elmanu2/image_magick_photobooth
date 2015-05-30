#!/bin/bash

in_dir=../../input_pictures/
out_dir=../../output_pictures/
tmp_dir=../../tmp/

file1=${in_dir}${1}.png
file2=${in_dir}${2}.png
file3=${in_dir}${3}.png
file4=${in_dir}${4}.png


#First mask
echo use of mask 1...
convert ${tmp_dir}mask_1.png \
		${file1} \
		-compose Multiply \
		-composite ${tmp_dir}use_mask_1.png

echo use of mask 2...
convert ${tmp_dir}mask_2.png \
		${file2} \
		-compose Multiply \
		-composite ${tmp_dir}use_mask_2.png

echo use of mask 3...
convert ${tmp_dir}mask_3.png \
		${file3} \
		-compose Multiply \
		-composite ${tmp_dir}use_mask_3.png

echo use of mask 4...
convert ${tmp_dir}mask_4.png \
		${file4} \
		-compose Multiply \
		-composite ${tmp_dir}use_mask_4.png
		
echo mask use done
echo assemble process

echo assemble mask 1 and 2...
composite -compose plus ${tmp_dir}use_mask_1.png \
						${tmp_dir}use_mask_2.png \
						${tmp_dir}use_mask_tmp.png

echo assemble mask 1,2,3...						
composite -compose plus ${tmp_dir}use_mask_tmp.png \
						${tmp_dir}use_mask_3.png \
						${tmp_dir}use_mask_tmp.png

echo assemble mask 1,2,3,4...						
composite -compose plus ${tmp_dir}use_mask_tmp.png \
						${tmp_dir}use_mask_4.png \
						${out_dir}assemblage.png
echo assemble done.						
						
		 
		


