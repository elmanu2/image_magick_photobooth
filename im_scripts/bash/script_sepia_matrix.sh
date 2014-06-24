#!/bin/bash

echo OFF
echo set "test" as parameter for example
echo input file : $1.png
echo processing sepia matrix...

convert $1.png -color-matrix "0.393 0.769 0.189 0.349 0.686 0.168 0.272 0.534 0.131"  $1-sepia-matrix.png

echo output file : $1-sepia-matrix.png