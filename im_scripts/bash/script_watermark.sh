#!/bin/bash

echo OFF
echo set "test" as parameter for example
echo input file : wistiti_1024.png
echo processing...
composite -gravity SouthEast wistiti-resized.png $1.png $1-watermark.png
echo output file : $1-watermark.png