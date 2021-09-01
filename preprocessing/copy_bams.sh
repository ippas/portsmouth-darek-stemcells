#!/usr/bin/env bash

mkdir data/bams/
find data/rna-seq-paired-end-output/ -name "*.bam*" -exec cp -v {} data/bams/ \;
