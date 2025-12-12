#!/bin/bash

#   WHOLE GENOME SEQUENCING (WGS) WORKFLOW 
# ----------------------------------------

# -----------------------------
# 1. Create Folder Structure
# -----------------------------
mkdir -p Reference_Genome
mkdir -p Raw_Data
mkdir -p Output_Files/QC_Reports
mkdir -p Output_Files/Indexing
mkdir -p Output_Files/Alignment_Files
mkdir -p Output_Files/Variant_Calling

# -----------------------------
# 2. Download FASTQ Files
# -----------------------------
cd Raw_Data
wget -nc ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR574/003/ERR5743893/ERR5743893_1.fastq.gz
wget -nc ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR574/003/ERR5743893/ERR5743893_2.fastq.gz

# -----------------------------
# 3. Run FastQC
# -----------------------------
fastqc ERR5743893_1.fastq.gz ERR5743893_2.fastq.gz \
  -o ../Output_Files/QC_Reports/

# -----------------------------
# 4. Unzip FASTQ Files
# -----------------------------
gunzip -c ERR5743893_1.fastq.gz > ../Output_Files/ERR5743893_1.fastq
gunzip -c ERR5743893_2.fastq.gz > ../Output_Files/ERR5743893_2.fastq

# -----------------------------
# 5. Reference Genome Setup
# -----------------------------
cd ../Output_Files/Indexing

# Copy reference genome 
cp ../../Reference_Genome/MN908947.fasta .
cp ../../Reference_Genome/MN908947.3.fasta .

# Index reference genome
bwa index MN908947.3.fasta
samtools faidx MN908947.3.fasta

# -----------------------------
# 6. Alignment with BWA-MEM
# -----------------------------
cd ..

bwa mem Indexing/MN908947.3.fasta \
  ERR5743893_1.fastq ERR5743893_2.fastq \
  > ERR5743893.sam

# -----------------------------
# 7. SAM → BAM → Sorted BAM
# -----------------------------
samtools view -@ 20 -S -b ERR5743893.sam > ERR5743893.bam
samtools sort -@ 20 -o ERR5743893.sorted.bam ERR5743893.bam
samtools index ERR5743893.sorted.bam

mv ERR5743893.sam ERR5743893.bam ERR5743893.sorted.bam ERR5743893.sorted.bam.bai \
  Alignment_Files/

# -----------------------------
# 8. Variant Calling – FreeBayes
# -----------------------------
freebayes -f Indexing/MN908947.3.fasta \
  Alignment_Files/ERR5743893.sorted.bam \
  > Variant_Calling/ERR5743893.vcf

# -----------------------------
# 9. Save Terminal Command History
# -----------------------------
history > WGS_workflow.txt


