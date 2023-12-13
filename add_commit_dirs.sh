#!/usr/bin/env bash

for mdir in ./outputs/*
do
    mname=${mdir##*/}
    echo "Method:" $mname " at " $mdir
    for dir in $mdir/*
    do
        echo "    Dataset:" ${dir}
        git add ${dir}/*
        msg="\"added ${mname} samples of ${dir}\""
        echo $msg
        git commit -am "${msg}" -q
        git push
    done
done