#!/usr/bin/env bash
cd text/thesis/
xelatex -synctex=1 -interaction=nonstopmode diploma.tex
xdg-open diploma.pdf &
rm diploma.aux
rm diploma.log
rm diploma.out
rm diploma.synctex.gz
rm diploma.toc
exit