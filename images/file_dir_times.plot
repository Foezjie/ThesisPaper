set autoscale
unset log
unset label
set xlabel "Aantal bestanden/mappen"
set ylabel "Tijd (s)"
set key right center
set terminal pdf
set output "file_dir_times.pdf"
plot "file_dir_times.dat" using 1:2 title 'zonder' with linespoints pointtype 2, "file_dir_times.dat" using 1:3 title 'met' with linespoints pointtype 7
