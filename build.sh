#!/usr/bin/env bash
cd text/thesis/
xelatex -synctex=1 -interaction=nonstopmode diploma.tex
xdg-open diploma.pdf &
# rm diploma.aux diploma.log diploma.out diploma.synctex.gz diploma.toc
exit