#!/usr/bin/env bash

SLIDES_PATH="src/slides";
THESIS_PATH="src/thesis";

build_mode="thesis";

function clean {
    rm $1.aux $1.log $1.out $1.synctex.gz $1.toc $1.bbl $1.bcf $1.blg
}

function build {
    xelatex -8bit -synctex=1 -interaction=nonstopmode $1
    if [[ $1 == "diploma" ]]; then
        bibtex $1
        xelatex -8bit -synctex=1 -interaction=nonstopmode $1
        xelatex-8bit -synctex=1 -interaction=nonstopmode $1
        fi;
    xdg-open $1.pdf
}

function main_routine {
    if [[ $1 == "slides" ]]; then
        build_mode="slides";
        cd ${SLIDES_PATH}
    elif [[ $1 == "thesis" ]]; then
        build_mode="diploma";
        cd ${THESIS_PATH}
    else
        echo "Incorrect param of the script please pass 'slides' or 'thesis' ";
        return 1;
    fi;
    echo ${build_mode}
    clean ${build_mode}
    build ${build_mode}
    return 0;
}

main_routine $1