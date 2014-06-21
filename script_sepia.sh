#!/bin/bash

echo OFF
echo set "test" as parameter for example
echo input file : $1.png
echo processing...
convert $1.png -sepia-tone 80%%  $1-sepia.png
echo output file : $1-sepia.png