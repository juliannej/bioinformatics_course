#!/bin/bash 

# enter directory with raw FASTQs
cd ~/ngs_course/dnaseq/data/untrimmed_fastq

# loop over all FASTQ files
for filename in *.fastq.gz

do 
  echo $filename 

  # grab all the bad read records (we need to use zgrep as *.fastq.gz is compressed)
  zgrep -B1 -A2 NNNNNNNNNN $filename > $filename-bad-reads.fastq

  # grab the number of bad reads and write it to a summary file
  zgrep -cH NNNNNNNNNN $filename >> bad-reads.count.summary
done
