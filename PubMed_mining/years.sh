#!/bin/bash

set -x

while read FILE;
do
    xzcat "$FILE" | \
        python ../bibliometrics/articles_by_year.py - > ${FILE%.medline.xz}_years.tsv

done
                                                                                                 
