echo OFF
echo set "test" as parameter for example
echo input file : wisititi_1024.png
echo processing...
convert wisititi_1024.png -crop 1024x350+0+350 -resize 25%% wistiti-resized.png
echo output file : wisititi-resized.png