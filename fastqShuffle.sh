#!/bin/bash
### 2017-06-15 by Jiyoung Lee
### Sampling a random subset from a fastq file.
### Usage: sh XXX.sh [Input fastq] [The number of reads]

awk '{ printf("%s",$0); n++; if(n%4==0) { printf("\n");} else { printf("\t\t");} }' $1| shuf| head -n $2| sed 's/\t\t/\n/g' > $1.shuf.fq

#merge4 lines for one read into 1 line| # shuffle! | # the number of reads you want | #split 1 line into 4 lines >  write it as an file.
