set terminal epslatex color size 6.0in,2.5in

set notitle
set xlabel '$r \cdot \frac{g}{v^2}$'
set ylabel rotate by 0 '$\eta \cdot \frac{v^2}{Gm}$'
set yr [-4:8]
set xr [0.05:1]
set xtics 0,0.2,1
set ytics -4,4,8
set xzeroaxis lt 1 lc 8 # Show the x-axis

do for [t=0:5] {
    set output sprintf('./Analytic%03.0f.tex',t)
    set grid front
    set object circle at first 0.05,1-t radius char 0.5 \
    fillcolor rgb 'black' fillstyle solid noborder front# Plot the PBH
    plot "../../Wave/WavesFinal.dat" using 1:40*t+42 notitle smooth unique with filledcurves x1 lc 'grey', \
    "../../Wave/WavesFinal.dat" using 1:40*t+42 notitle smooth unique lc 8 lw 2
    set out
    unset object
    unset grid
}

