#!/bin/bash

echo OFF
echo set "test" as parameter for example
echo add vignette filter to an image and save into another file
echo input file : $1.png
echo processing...
convert $1.jpg -colorspace Gray $1_gray.png
echo output file : $1-gray.png
