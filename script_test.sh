#!/bin/bash

echo "IMAGEMAGICK VERSION"
identify -version

echo "CREATE CHECKBOARD"
sh script_create_checkboard.sh

echo BGR2GRAY BATCH CALL
sh script_rgb2gray.sh $1

echo BORDER BATCH CALL
sh script_border.sh $1

echo SEPIA-TONE BATCH CALL
sh script_sepia.sh $1

echo SEPIA-MATRIX BATCH CALL
sh script_sepia_matrix.sh $1

echo POLAROID BATCH CALL
sh script_polaroid_matrix.sh $1

echo SEPIA BATCH CALL
sh script_sepia_matrix.sh $1

echo VIGNETTE BATCH CALL
sh script_vignette.sh $1-sepia

echo PHOTOBOOTH BATCH CALL
sh script_photobooth_4x4.sh test 20 20

echo RESIZE WISITIT LOGO BATCH CALL
sh script_resize_wistiti.sh

echo WATERMARK BATCH CALL
sh script_watermark.sh test

echo VINTAGE BATCH CALL
sh script_vintage.sh sf-bridge





