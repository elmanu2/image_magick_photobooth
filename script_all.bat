ECHO OFF

ECHO BGR2GRAY BATCH CALL
CALL script_rgb2gray.bat %1

ECHO BORDER BATCH CALL
CALL script_border.bat %1

ECHO SEPIA-TONE BATCH CALL
CALL script_sepia.bat %1

ECHO SEPIA-MATRIX BATCH CALL
CALL script_sepia_matrix.bat %1

ECHO POLAROID BATCH CALL
CALL script_polaroid_matrix.bat %1

ECHO SEPIA BATCH CALL
CALL script_sepia_matrix.bat %1

ECHO VIGNETTE BATCH CALL
CALL script_vignette.bat %1-sepia

ECHO PHOTOBOOTH BATCH CALL
CALL script_photobooth_4x4.bat test 20 20

ECHO RESIZE WISITIT LOGO BATCH CALL
CALL script_resize_wistiti.bat

ECHO WATERMARK BATCH CALL
CALL script_watermark.bat test





