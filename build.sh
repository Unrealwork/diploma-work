#!/usr/bin/env bash
cd src/thesis/
rm diploma.aux diploma.log diploma.out diploma.synctex.gz diploma.toc diploma.bbl diploma.bcf diploma.blg
xelatex -synctex=1 -interaction=nonstopmode diploma
bibtex diploma
xelatex -synctex=1 -interaction=nonstopmode diploma
xelatex -synctex=1 -interaction=nonstopmode diploma
xdg-open diploma.pdf
exit