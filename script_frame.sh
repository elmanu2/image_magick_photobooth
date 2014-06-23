#!/bin/bash

echo set "test" as parameter for example
echo input file : ${1}.png

my_width=620
height=352

echo $my_width x $height

convert autumn-leaves.png -scale ${my_width}x${height}\! autumn-leaves-resize-tmp.png

convert ${1}.png autumn-leaves-resize-tmp.png +swap -gravity center -compose DstOver -composite $1-frame.png

#autumn-leaves-resize-tmp.png

echo output file : $1-frame.png





