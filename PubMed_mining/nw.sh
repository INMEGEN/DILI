#!/bin/bash

set -x

while read FILE;
do
    xzcat "$FILE" | \
        python ../bibliometrics/mesh_network_from_medline.py - \
        | awk -F "\t" '{if ($3>1) print $0}' | grep -v Animals \
        | grep -v Rats | grep -v Human | xz --stdout - \
                                            > ${FILE%medline.xz}_edgelist.tsv.xz

done
                                                                                                 
