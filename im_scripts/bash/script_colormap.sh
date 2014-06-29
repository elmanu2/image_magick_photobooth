#!/bin/bash

echo OFF

in_dir=../../input_pictures/
out_dir=../../output_pictures/
tmp_dir=../../tmp/

in_file=${in_dir}${1}.png

#record alpha channel
convert ${1}.png -channel A -separate -colors 128 ${1}_alpha.png


#remove alpha channel
convert ${1}.png -background white -flatten ${1}_less_alpha.png

#quantization
convert ${1}_less_alpha.png -colors 128 ${1}-quantization256.png

convert ${1}-quantization256.png ${1}_alpha.png -compose copy-opacity -composite rgba.png

echo output file : ${out_file}