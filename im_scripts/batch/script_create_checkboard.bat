set out_dir="../../output_pictures/"

ECHO %out_dir%
convert -size 640x480 pattern:checkerboard %out_dir%checkerboard.png
