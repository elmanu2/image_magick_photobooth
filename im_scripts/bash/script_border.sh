#!/bin/bash

echo OFF
echo set "test" as parameter for example
echo input file : $1.png
echo processing...
convert $1.png -bordercolor black -border 10x10  $1-border.png
echo output file : $1-border.png