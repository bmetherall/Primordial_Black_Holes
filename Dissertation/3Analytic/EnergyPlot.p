#set terminal pngcairo size 350,262 enhanced font 'Verdana,10'
set terminal epslatex color size 6.0in,4.5in

set notitle
set xlabel 'Time (s)'
set ylabel 'Energy (J)'

set xr [-30:30]

set output sprintf('./AnalyticEnergyPlot.tex')
set grid front
plot '../../AnalyticEnergy.dat' using 1:2 notitle with lines lc 8 lw 2
set out
unset grid

