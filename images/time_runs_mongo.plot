set terminal pdf
 
set output 'images/time_runs_mongo.pdf'
set key outside right center
 
set linetype 1 lc rgb 'black'
set linetype 2 lc rgb '#555555'
set linetype 3 lc rgb '#999999'

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set xtic rotate by -45 scale 0
set ylabel "Resources uitgerold"
set xlabel ""
set yrange[0:550]

plot 'images/time_runs_mongo.dat' using 2 t "run 1", '' using 3 t "run 2", '' using 4:xtic(1) t "run 3"
