# Quality Assesment of FASTQ Files
 - This document describes the commands used to run FastQC on the raw sequencing files and how to open the resulting HTML reports.
 - It include the interpretation of HTML file results.
 ## 1.Creating output directory for FastQC
  - Before running FastQC, a directory was created to store all QC reports.
  - **Command**: mkdir QC_Reports
  - This ensures FastQC output files are organized in a separate folder.
    
 ## 2.Running FastQC
  - FastQC was used to assess the quality of the paired-end FASTQ files ERR5743893_1.fastq and ERR5743893_2.fastq.
  - **Command**: fastqc ERR5743893_1.fastq ERR5743893_2.fastq --outdir QC_Reports
  - It generated following files inside the QC_reports folder:
      - ERR5743893_1_fastqc.html
      - ERR5743893_1_fastqc.zip
      - ERR5743893_2_fastqc.html
      - ERR5743893_2_fastqc.zip

 ## 3.Opening FastQC HTML Files
  - GitHub cannot display FastQC HTML reports properly. To open the HTML file simple python HTTP server command needed.
  - **Commands**: cd Raw_Data/QC_Reports, python3 -m http.server 8000.
  - Codespace will show a prompt to **Open in Browser**.
  - In the browser, the QC report files will be displayed and can be opened correctly.
