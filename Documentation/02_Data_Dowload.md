# Data Reterival from ENA Database
 - This file describes the process of downloading the reference genome and raw sequencing reads used in this SARS-CoV-2 WGS analysis. 
 - All data was obtained from the European Nucleotide Archive (ENA) and processed inside GitHub Codespaces.
 ## 1.Reference Genome download 
   - **Accession ID** : MN908947.3
   - **Description** : Severe acute respiratory syndrome coronavirus 2 isolate Wuhan-Hu-1
   - The reference genome file MN908947.3.fasta used in this workflow was downloaded manually from the NCBI database on the local computer and then uploaded to the repository under the: Reference_Genome directory for the final analyis.


 ## 2.Raw sequencing data(FASTQ File)
   - Raw sequencing reads for SARS-CoV-2 were downloaded from ENA using the run ID
     
     -**Run ID**: ERR5743893
     
     -**Type**: Paired-end sequencing
     
     -**platform**: Illumina
     
   - ENA provides two FASTQ files for paired-end reads
     - **ERR5743893_1.fastq.gz**
     - **ERR5743893_2.fastq.gz**
   - **Download Commands given in CodeSpace:**
       1.wget -nc (ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR574/003/ERR5743893/ERR5743893_1.fastq.gz)
       2.wget -nc (ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR574/003/ERR5743893/ERR5743893_2.fastq.gz)
     - Files are stored in Raw_Data directory
     
     [ERR5743893_1.fastq.gz (FTP Download)](ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR574/003/ERR5743893/ERR5743893_1.fastq.gz)
     [ERR5743893_2.fastq.gz (FTP Download)](ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR574/003/ERR5743893/ERR5743893_2.fastq.gz)

  
      
     





