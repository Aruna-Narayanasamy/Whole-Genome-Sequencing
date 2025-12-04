# Reference Genome Indexing
 -To perform read alignment and variant calling, the SARS-CoV-2 reference genome (MN908947.3) must be indexed.
 ## 1.Reference Genome File
  - **Name** : MN908947.3
  - **Organism** : SARS-CoV-2 (Wuhan-Hu-1)
  - **Format** :Fasta
  - **Location**: Output_Files/Indexing/MN908947.3.fasta
    
 ## 2.Indexing the reference genome with BWA  
  - BWA indexing generates essential index files of **.amb, .ann, .bwt, .pac, .sa** required for alignment.
  - **Command**: bwa index /workspaces/Whole-Genome-Sequencing/Output_Files/Indexing/MN908947.3.fasta
  - After indexing files are created in Output_Files/Indexing.
  - Output Files are:
       - MN908947.3.fasta.amb
       - MN908947.3.fasta.ann
       - MN908947.3.fasta.bwt
       - MN908947.3.fasta.pac
       - MN908947.3.fasta.sa
