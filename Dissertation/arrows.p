set terminal epslatex

set xr[1:2]
set yr[-0.5:0.5]
unset ytics

set output 'Arrows.tex'

set style arrow 1 lt 6 lc 8 head filled

set label '$\delta_1$' at 1.08,0.1
set label '$\delta_2$' at 1.25,0.1
set label '$\delta_3$' at 1.45,0.1
set label '$\delta_4$' at 1.68,0.1
set label '$\delta_5$' at 1.79,0.1
set label '$\delta_6$' at 1.90,0.1


plot 'delta.dat' using 1:2:3 with circles notitle lc 8, \
'delta.dat' using 1:2:(1.3*$3*0.5):(1.3*$3*0.866) with vectors arrowstyle 1 notitle


set out
