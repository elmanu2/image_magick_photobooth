#!/bin/bash

echo OFF
echo parameters : input_file border_width border_height
echo set "test" "10" "10" as parameters for example
echo add vignette filter to an image and save into another file
echo input file : $1.png
echo processing...
convert $1.png -bordercolor black -border $2x$3 $1-photobooth-tmp1.png
convert $1-photobooth-tmp1.png $1-photobooth-tmp1.png -append $1-photobooth-tmp2.png
convert $1-photobooth-tmp2.png $1-photobooth-tmp2.png +append $1-photobooth-4x4.png
convert $1-photobooth-4x4.png -bordercolor black -border $2x$3 $1-photobooth-4x4.png
rm $1-photobooth-tmp1.png
rm $1-photobooth-tmp2.png
echo output file : $1-photobooth-4x4.png