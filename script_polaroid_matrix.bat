echo OFF
echo set "test" as parameter for example
echo input file : %1.png
echo processing polaroid matrix...

convert %1.png -color-matrix "6x3: 1.438 -0.122 -0.016 0 0 -0.03 -0.062 1.378 -0.016 0 0 0.05 -0.062 -0.122 1.483 0 0 -0.02"  %1-polaroid-matrix.png

echo output file : %1-polaroid-matrix.png