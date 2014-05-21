#!/bin/bash
for plot in $(ls images/*.plot)
do
    gnuplot $plot
done

for pdf in $(ls images/*.pdf)
do
    pdfcrop $pdf $pdf
done

pdflatex masterproef.tex
bibtex masterproef.aux
pdflatex masterproef.tex
pdflatex masterproef.tex
