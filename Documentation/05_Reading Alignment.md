# Alignment reading
 - The next step in the workflow is aligning the high-quality FASTQ reads to the reference genome.
 ## 1. Input Files for Alignment
  - The following files were used:
    
      -Reference Genome (Indexed): Output_Files/Indexing/MN908947.3.fasta
    
      -Decompressed FASTQ Files: Output_Files/ERR5743893_1.fastq, Output_Files/ERR5743893_2.fastq

## 2.Aligning Reads to the Reference Genome
 - BWA aligns paired-end sequencing reads to the indexed reference genome.
 - **Command**: cd /workspaces/Whole-Genome-Sequencing/Output_Files/
   
      bwa mem /workspaces/Whole-Genome-Sequencing/Output_Files/Indexing/MN908947.3.fasta ERR5743893_1.fastq ERR5743893_2.fastq > ERR5743893.sam 

 - This generates SAM file (ERR5743893.sam)
   
## 3.Converting SAM to BAM
 - SAM files are large and uncompressed.
 - To reduce file size and improve processing speed, the SAM file was converted to BAM format using samtools view.
 - **Command**:  ls -l ./ERR5743893.sam
  
     samtools view -@ 20 -S -b ERR5743893.sam > ERR5743893.bam
   
 - **Location**: Output_Files/ERR5743893.bam
   
## 4.Sorting the BAM File
 - Sorting arranges reads by their genomic coordinates
 - **Command**: samtools sort -@ 4 -o ERR5743893.sorted.bam ERR5743893.bam
 - **Location**: Output_File/ERR5743893.sorted.bam

## 5.Indexing the Sorted BAM File
 - Indexing creates a .bai file, which allows tools like FreeBayes to quickly access alignment regions
 - **command**: samtools index Output_Files/Alignment_Files/ERR5743893.sorted.bam
 - **location**: Output_Files/ERR5743893.sorted.bam.bai

## 6.Organizing the Output
 - The SAM file was moved into the Alignment_Files directory to keep the workflow organized.
 - **Command**: mkdir /workspaces/Whole-Genome-Sequencing/Output_Files/Alignment_Files
   
     mv ./ERR5743893.sam ./ERR5743893.bam ./ERR5743893.sorted.bam ./ERR5743893.sorted.bam.bai ./Alignment_Files/
   
 - **Location**: Output_Files/ Alignment_Files/  ERR5743893.sam.

## 7.Creating FASTA Index Using Samtools
 - samtools faidx was used to create a .fai index file for the reference genome
 - **Commands**: cd /workspaces/Whole-Genome-Sequencing/Output_Files/Indexing
   
     samtools faidx MN908947.fasta
- **Location**: Output_Files/Indexing/MN908947.fasta.fai

## 8.Verifying the Reference Genome File
 - To ensure the reference genome was copied correctly and is readable, the first few lines of the FASTA file were displayed using the head command.
 - **Command**: cd /workspaces/Whole-Genome-Sequencing/Output_Files/Indexing
   
    head -n 5 MN908947.3.fasta


 
   


