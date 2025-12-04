# Reference Genome Indexing
 -To perform read alignment and variant calling, the SARS-CoV-2 reference genome (MN908947.3) must be indexed.
 ## 1.Creating the Indexing Directory
  - A folder was created inside the Output_Files to store all reference genome related index Files.
  - **Command**: mkdir -p Output_Files/Indexing
    
 ## 2.Copying the Reference Genome into the Indexing Directory
  - The downloaded reference genome (MN908947.fasta) from the Reference_Genome folder was copied into the indexing folder.
  - **Command**: cp /workspaces/Whole-Genome-Sequencing/Reference_Genome/MN908947.fasta /workspaces/Whole-Genome-Sequencing/Output_Files/Indexing/
  - **Final Location**: Output_Files/Indexing/MN908947.3.fasta
    
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
