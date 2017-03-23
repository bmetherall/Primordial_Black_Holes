set terminal epslatex

set xr[1:2]
set yr[-0.5:0.5]
unset ytics

set output 'Arrows.tex'

set style arrow 1 lt 6 lc 8 head filled

set label '$\delta_1/2$' at 1.03,0.1
set label '$\delta_2/2$' at 1.20,0.1
set label '$\delta_3/2$' at 1.40,0.1
set label '$\delta_4/2$' at 1.63,0.13
set label '$\delta_5/2$' at 1.74,0.1
set label '$\delta_6/2$' at 1.87,0.1


plot 'delta.dat' using 1:2:3 with circles notitle lc 8, \
'delta.dat' using 1:2:(1.3*$3*0.5):(1.3*$3*0.866) with vectors arrowstyle 1 notitle


set out
