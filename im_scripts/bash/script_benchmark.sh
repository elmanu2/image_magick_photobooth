#!/bin/bash

echo ON

in_dir=../../input_pictures/
out_dir=../../output_pictures/

in_file=${in_dir}${1}.bmp
out_file=${out_dir}gm-${1}-bmp2png.png


date1=$(date +"%s")

for i in {1..100}
do
   convert ${in_file} ${out_file}
done

date2=$(date +"%s")
diff=$(($date2-$date1))
echo "$(($diff / 60)) minutes and $(($diff % 60)) seconds elapsed."

