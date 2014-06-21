#!/bin/bash

echo set "test" as parameter for example
echo input file : $1.png

width=620
height=352

echo $width x $height

convert autumn-leaves.png -resize $widthx$height autumn-leaves-resize-tmp.png

convert $1.png autumn-leaves-resize-tmp.png +swap -gravity center -compose DstOver -composite $1-frame.png

rm autumn-leaves-resize-tmp.png

echo output file : $1-frame.png





