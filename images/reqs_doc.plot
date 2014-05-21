set terminal pdf
 
set output 'images/reqs_doc.pdf'
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
set yrange [:700]
set xlabel ""
set ylabel "Aantal toegevoegde vereisten"
 
plot 'images/reqs_doc.dat' using 2 t "name", '' using 3 t "rels", '' using 4:xtic(1) t "stack"
