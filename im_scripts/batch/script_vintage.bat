ECHO OFF

REM Parameters found from this website : https://github.com/paulasmuth/hipster_filters

echo set "test" as parameter for example
echo input file : %1.png

SET /a width = %2
SET /a height = %3

SET in_dir=../../input_pictures/
SET out_dir=../../output_pictures/
SET tmp_dir=../../tmp/

SET in_file=%in_dir%%1%.png
SET in_grad_file=%in_dir%grad-center-light.png
SET in_grad_file_resize=%tmp_dir%grad-center-light-tmp.png
SET in_vign_file=%in_dir%grad-vignette.png
SET in_vign_file_resize=%tmp_dir%grad-vignette-tmp.png

SET out_file=%out_dir%%1-vintage.png
SET in_frame_file=%in_dir%autumn-leaves.png
SET in_tmp1=%tmp_dir%%1-vintage-tmp1.png
SET in_tmp2=%tmp_dir%%1-vintage-tmp2.png
SET in_tmp3=%tmp_dir%%1-vintage-tmp3.png

ECHO %in_dir%
ECHO %out_dir%
ECHO %tmp_dir%
ECHO %width% x %height%

ECHO %inf_file%
ECHO %in_grad_file%
ECHO %in_grad_file_resize%
ECHO %in_vign_file%
ECHO %in_vign_file_resize%


convert %in_grad_file% -resize %width%x%height% %in_grad_file_resize%
composite %in_grad_file_resize% %in_file% -compose over -gravity center %in_tmp1%
convert %in_tmp1% -modulate 100,120 %in_tmp2%
convert %in_tmp2% -brightness-contrast 0x20 %in_tmp3%

convert %in_vign_file% -resize %width%x%height% %in_vign_file_resize%
composite %in_vign_file_resize% %in_tmp3% -compose overlay -gravity center %out_file%

REM DEL %in_tmp1% %in_tmp2% %in_tmp3%
REM DEL %in_grad_file_resize% %in_vign_file_resize%

echo output file : %out_file%





