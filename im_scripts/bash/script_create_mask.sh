#!/bin/bash

out_dir=../../output_pictures/
tmp_dir=../../tmp/

width=${1}
height=${2}
nbPic=4

width_elt=$((${width}/2/${nbPic}))
height_elt=$((${height}/2/${nbPic}))

echo width = ${width}
echo height = ${height}
echo width_elt = ${width_elt}
echo height_elt = ${height_elt}

#First mask : border white, inside black
echo creation of mask 1...
convert -size ${width}x${height} xc:white \
		-fill black -draw "rectangle ${width_elt},${height_elt} $((${width} - ${width_elt})), $((${height} - ${height_elt}))" \
		${tmp_dir}mask_1.png

#Second mask : first border black, second border white, inside black
echo creation of mask 2...
convert -size ${width}x${height} xc:black \
		-fill white -draw "rectangle ${width_elt},${height_elt} $((${width} - ${width_elt})), $((${height} - ${height_elt}))" \
		-fill black -draw "rectangle $((${width_elt} * 2 )),$((${height_elt} * 2)) $((${width} - 2 * ${width_elt})), $((${height} - 2 * ${height_elt}))" \
		${tmp_dir}mask_2.png

#Third mask : first border black, second border white, inside black
echo creation of mask 3...
convert -size ${width}x${height} xc:black \
		-fill white -draw "rectangle $((${width_elt} * 2 )),$((${height_elt} * 2)) $((${width} - 2 * ${width_elt})), $((${height} - 2 * ${height_elt}))" \
		-fill black -draw "rectangle $((${width_elt} * 3 )),$((${height_elt} * 3)) $((${width} - 3 * ${width_elt})), $((${height} - 3 * ${height_elt}))" \
		${tmp_dir}mask_3.png

#Fourth mask : first border black, second border white, inside black
echo creation of mask 4...
convert -size ${width}x${height} xc:black \
		-fill white -draw "rectangle $((${width_elt} * 3 )),$((${height_elt} * 3)) $((${width} - 3 * ${width_elt})), $((${height} - 3 * ${height_elt}))" \
		${tmp_dir}mask_4.png

echo mask creation done