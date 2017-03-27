set terminal epslatex size 6.0in,2.5in

set palette gray

set xr [-10:10]
set yr [-5:5]
set cbr [0.99:1.05]

set xlabel '$x$'
set ylabel rotate by 0 '$y$'
set cblabel rotate by 0 ' $\rho$'

#do for [t in '198 199 200 201 202 205 210'] {
#    set output sprintf('./Sim%s.tex',t)
#	set object circle at first 0.0,200-t radius char 0.5 \
#	fillcolor rgb 'black' fillstyle solid noborder front # Plot the PBH
#	plot t.'.dat' using 1:2:3 with lines lw 6 palette notitle
#	set out
#	unset object
#}


set terminal epslatex size 6.0in,3.75in
set size square

set yr [-15:15]
set xr [-15:15]
set cbr [0.99:1.02]

set output 'Shock1.tex'
#plot '215.dat' using 1:2:3 with lines lw 4 palette notitle
set out

set output 'Shock2.tex'
#plot '216.dat' using 1:2:3 with lines lw 4 palette notitle
set out


set size noratio

set xlabel '$\tau$'
set ylabel '$E$'

set xr[-90:90]
unset yr
set grid

set output 'BadEnergy.tex'
plot 'AverageE.dat' using ($1 - 200):($2 + $3) with lines notitle lc 8
set out

set output 'GoodEnergy.tex'
plot 'AverageE.dat' using ($1 - 200):($4 + $5 + 15*($1-200) - 5.437*10**6 + 350) with lines notitle lc 8
#plot 'AverageE.dat' using ($1 - 200):($4 + $5 - 5.436*10**6-900) with lines notitle lc 8
set out


