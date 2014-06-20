echo OFF
echo set "test-sepia" as parameter for example
echo add vignette filter to an image and save into another file
echo input file : %1.png
echo processing...
convert %1.png -background grey -vignette 0x50-80-80 %1-vignette.png
echo output file : %1-vignette.png