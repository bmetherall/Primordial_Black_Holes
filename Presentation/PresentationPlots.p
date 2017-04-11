set terminal epslatex color size 4.0in,2.67in

set notitle
set xlabel '$\tau$'
set ylabel rotate by 0 '$E$'

set xr [-30:30]

set ytics 20,10,60

set output sprintf('./AnalyticEnergy.tex')
set grid front
plot '../AnalyticEnergy.dat' using 1:2 notitle with lines lc 8 lw 3
set out
unset grid

reset


set xlabel '$\tau$'
set ylabel '$E \, (\times 10^6)$'

set xr[-90:90]
unset yr
set grid

set output './CrazyEnergy.tex'
plot '../Dissertation/4Simulation/AverageE.dat' using ($1 - 200):(($2 + $3)/10**6) with lines notitle lc 8
set out

unset yr

set ylabel '$E$'

set output './GoodEnergy.tex'
plot '../Dissertation/4Simulation/AverageE.dat' using ($1 - 200):($4 + $5 + 15*($1-200) - 5.437*10**6 + 350) with lines notitle lc 8
set out


