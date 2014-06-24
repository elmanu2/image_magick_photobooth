#!/bin/bash

#Parameters found from this website : https://github.com/paulasmuth/hipster_filters

echo set "test" as parameter for example
echo input file : $1.png

width=500
height=375

echo $width x $height

convert grad-center-light.png -resize $widthx$height grad-center-light-tmp.png
composite grad-center-light-tmp.png $1.png -compose over -gravity center $1-tmp1.png
convert $1-tmp1.png -modulate 100,120 $1-tmp2.png
convert $1-tmp2.png -brightness-contrast 0x20 $1-tmp3.png

convert grad-vignette.png -resize %width%x%height% grad-vignette-tmp.png
composite grad-vignette-tmp.png $1-tmp3.png -compose overlay -gravity center $1-vintage.png

rm $1-tmp1.png $1-tmp2.png $1-tmp3.png
rm grad-center-light-tmp.png grad-vignette-tmp.png

echo output file : $1-vintage.png





