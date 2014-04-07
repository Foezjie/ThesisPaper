set autoscale
unset log
unset label
set xlabel "Aantal bestanden/mappen"
set ylabel "Tijd (s)"
set key left top
set terminal pdf
set output "images/file_dir_times.pdf"
plot \
"images/file_dir_times.dat" using 1:2 title 'zonder: run 1' with linespoints pointtype 2,\
"images/file_dir_times.dat" using 1:3 title 'zonder: totaal' with linespoints pointtype 2,\
"images/file_dir_times.dat" using 1:4 title 'met' with linespoints pointtype 3
