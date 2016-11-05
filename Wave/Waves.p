set title "Surface Waves"
set xlabel "r"
set ylabel "Surface"
set yr [-5:16]
set xr [0.05:1]
set xzeroaxis lt 1 lc 7 # Plot the x-axis

set terminal pngcairo size 800, 600 # pngcairo produces a higher quality output

do for [t=2:102] {
    outfile = sprintf('./Images/wave%03.0f.png',t-2)
    set output outfile
    set object circle at first 0.05,5-0.1*(t-2) radius char 0.5 \ # Plot the PBH
    fillcolor rgb 'black' fillstyle solid noborder front
    plot "WavesFinal.dat" using 1:t notitle smooth unique with filledcurves y1=-5
    replot
    unset object
}
