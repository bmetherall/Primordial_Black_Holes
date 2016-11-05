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
    set output sprintf('plot%03.0f.tex',t)
    set object circle at first 0.05,1-t radius char 0.5 \ # Plot the location of the PBH
    fillcolor rgb 'black' fillstyle solid noborder front
    plot "WavesFinal.dat" using 1:10*t+42 notitle smooth unique with filledcurves y1=-5
    set out
    unset object
}

