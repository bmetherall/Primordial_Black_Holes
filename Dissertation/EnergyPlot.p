#set terminal pngcairo size 350,262 enhanced font 'Verdana,10'
set terminal epslatex color size 6.0in,4.5in

set notitle
set xlabel '$\tau$'
set ylabel rotate by 0 '$E$'

set xr [-30:30]

set ytics 20,10,60

set output sprintf('./3Analytic/AnalyticEnergyPlot.tex')
set grid front
plot '../AnalyticEnergy.dat' using 1:2 notitle with lines lc 8 lw 3
set out
unset grid

