# Quality Assesment of FASTQ Files
 - This file describe the steps to run FastQC and view the QC report files and decompress FASTQ files for downstream analysis.
 - It also include expalnation of how to view FASTQC HTML reports.

 ## 1.Creating main output directory
  - Before running FastQC, the main directory (Output_Files) for storing all analysis outputs was created.
  - **Command**: mkdir /workspaces/Whole-Genome-Sequencing/Output_Files
  - It will contain QC reports, Indexing files, Alignment files, variant Calling files, decompressed FASTQ files.

 ## 2.Creating the QC_Reports directory inside Output_Files
  - A subdirectory was created specifically to store all FastQC output files.
  - **Command**: mkdir /workspaces/Whole-Genome-Sequencing/Output_Files/QC_Reports
  - This ensures that QC reports remain organized and separate from raw data and other output files 
    
 ## 3.Running FastQC
  - FastQC was used to assess the quality of the paired-end FASTQ files ERR5743893_1.fastq and ERR5743893_2.fastq.
  - **Command**: fastqc ERR5743893_1.fastq.gz ERR5743893_2.fastq.gz -o /workspaces/Whole-Genome-Sequencing/Output_Files/QC_Reports
  - It generated following files inside the QC_reports folder:
      - ERR5743893_1_fastqc.html
      - ERR5743893_1_fastqc.zip
      - ERR5743893_2_fastqc.html
      - ERR5743893_2_fastqc.zip

 ## 4.Opening FastQC HTML Files
  - GitHub cannot display FastQC HTML reports properly. This is because GitHub’s preview system blocks the CSS, JavaScript, and image files that FastQC uses to display graphs and formatting.
  - As a result, the report may appear unformatted, missing images or show only plain text.
  - To view the full FastQC report correctly the HTML file must be opened locally or through a Python HTTP server inside Codespaces.
  - To open the HTML file through python HTTP server commands needed.
  - **Commands**: cd /workspaces/Whole-Genome-Sequencing/Output_Files/QC_Reports python3 -m http.server 8000
  - Codespace will show a prompt to **Open in Browser**.
  - In the browser, the QC report files will be displayed and can be opened correctly.

 ## 5.Decompressing FASTQ Files 
  - The raw sequencing reads were provided in compressed .gz format.
  - The .gz FASTQ files were decompressed using gunzip commands:
  - **Commands**: gunzip -dc ERR5743893_1.fastq.gz > /workspaces/Whole-Genome-Sequencing/Output_Files/ERR5743893_1.fastq
    
     gunzip -dc ./ERR5743893_2.fastq.gz > /workspaces/Whole-Genome-Sequencing/Output_Files/ERR5743893_2.fastq
    
  - This unzipped files stored in Output_Files. **(ERR5743893_1.fastq, ERR5743893_2.fastq)**





