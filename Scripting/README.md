# Script_Of_WGS.sh

This folder contains the Bash script used for running the **Whole Genome Sequencing (WGS) Pipeline**.
## Script Name
**Script_Of_WGS.sh**
## Purpose
  This script automates:

   - Downloading FASTQ files  
   - Running FastQC  
   - Preparing reference genome  
   - Indexing (BWA & Samtools)  
   - Read alignment (BWA-MEM)  
   - Converting SAM → BAM → Sorted BAM  
   - Variant calling with FreeBayes  
   - Saving workflow history  
