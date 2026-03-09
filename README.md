# bioinformatics_course
Advanced bioinformatics via KCL/SGUL

# DNAseq Project

WES analysis of chr22 sample. Started March 2026.
Project size ~966MB.

## What I did
1. Ran FastQC on raw reads to assess quality
2. Trimmed reads with Trimmomatic (removed adapters, trailing bases <Q25, reads <50bp)
3. Re-ran FastQC on trimmed reads to confirm improvement

## Directories
- data/untrimmed_fastq - raw R1 and R2 reads
- data/trimmed_fastq - trimmed output (1P, 1U, 2P, 2U)
- results/fastqc_untrimmed_reads - QC reports for raw reads
- results/fastqc_trimmed_reads - QC reports for trimmed reads
- logs/ - concatenated FastQC summaries
