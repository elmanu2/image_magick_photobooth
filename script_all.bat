ECHO OFF
ECHO SEPIA BATCH CALL
CALL script_sepia.bat %1
ECHO VIGNETTE BATCH CALL
CALL script_vignette.bat %1-sepia
