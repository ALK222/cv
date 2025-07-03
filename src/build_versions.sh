#!/usr/bin/env bash


LANGUAGES=("EN" "ES")
OPTIONS=("BW" "COLOR")



for language in "${LANGUAGES[@]}"; do
    for option in "${OPTIONS[@]}"; do
        xelatex  -interaction=nonstopmode \\def\\"$option"{} \\def\\"$language"{} \\input{cv} --jobname="$language-$option-cv.pdf"
        mv cv.pdf ../cv/"$language-$option-cv.pdf"
    done
done


rm *.log
rm *.out
rm *.aux
