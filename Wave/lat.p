set terminal epslatex color size 3.0in,2.25in

set notitle
set xlabel '$r$'
set ylabel rotate by 0 '$\eta$'
set yr [-4:8]
set xr [0.05:1]
set xtics 0,0.2,1
set ytics -4,4,8
set xzeroaxis lt 1 lc 7 # Show the x-axis

do for [t=0:5] {
    set output sprintf('../Wave/Images/plot%03.0f.tex',t)
    set grid front
    set object circle at first 0.05,1-t radius char 0.5 \
    fillcolor rgb 'black' fillstyle solid noborder front# Plot the PBH
    plot "WavesFinal.dat" using 1:40*t+42 notitle smooth unique with filledcurves y1=-8
    set out
    unset object
    unset grid
}

