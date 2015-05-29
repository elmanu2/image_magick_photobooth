#!/bin/bash

out_dir=../../output_pictures/
in_dir=../../input_pictures/

out_file=${out_dir}gm-checkboard.png

gm convert -size 640x480 pattern:checkerboard ${out_file}