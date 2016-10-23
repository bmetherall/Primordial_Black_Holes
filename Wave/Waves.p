set title "Surface Waves"
set xlabel "r"
set ylabel "Surface"
set yr [-4:16]
set xr [0.05:1]
set terminal png

do for [t=2:51] {
    outfile = sprintf('wave%03.0f.png',t-1)
    set output outfile
    plot "Waves.dat" using 1:t notitle smooth unique with filledcurves y1=-4
    replot
}
