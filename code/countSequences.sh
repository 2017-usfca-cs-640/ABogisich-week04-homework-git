#!/bin/bash

# A script to count the number of sequences in any number of fasta files and report that info

#Allison Bogisich, asbogisich@dons.usfca.edu

#September 18, 2017


#Write a for loop script to count and report number of sequences

for .fasta files in ${[@]}; do
  echo $@
  grep ">" $@|wc -l

done

