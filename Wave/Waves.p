set terminal pngcairo size 800, 600 # pngcairo produces a higher quality output

set title "Analytic Solution"
set xlabel "r"
set ylabel "Surface"
set yr [-8:16]
set xr [0.05:1]
set xtics 0,0.2,1
set xzeroaxis lt 1 lc 8 # Plot the x-axis

do for [t=2:402] {
    set output sprintf('./Images/wave%03.0f.png',t-2)
    set grid front
    set object circle at first 0.05,2-0.025*(t-2) radius char 0.5 \
    fillcolor rgb 'black' fillstyle solid noborder front # Plot the PBH
    plot "WavesFinal.dat" using 1:t notitle smooth unique with filledcurves y1=-8
    replot
    unset object
    unset grid
}
