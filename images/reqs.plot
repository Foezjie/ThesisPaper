set terminal pdf
 
set output 'images/reqs.pdf'
set key outside right center
 
set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set xtic rotate by -45 scale 0
set yrange [:700]
set ylabel "Requirements added"
 
plot 'images/reqs.dat' using 2 t "stacks", '' using 3 t "rels", '' using 4:xtic(1) t "names"
