#!/bin/bash

set -x

while read FILE;
do
    xzcat "$FILE" | \
        python ../bibliometrics/articles_by_country.py - > ${FILE%.medline.xz}_countries.tsv

done
                                                                                                 
