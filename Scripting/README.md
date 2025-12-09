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

## How to Run the Script

Navigate into the **Scripting** folder:

```bash
cd Scripting
```

Give execute permission 

```bash
chmod +x Script_Of_WGS.sh
```

Run the script:

```bash
./Script_Of_WGS.sh
```

 ## Output Generated

| Step | Output Location |
|------|-----------------|
| FastQC reports | `Output_Files/QC_Reports/` |
| Reference index files | `Output_Files/Indexing/` |
| SAM/BAM/Sorted BAM | `Output_Files/Alignment_Files/` |
| VCF variants | `Output_Files/Variant_Calling/` |
| Workflow history | `Scripting/WGS_workflow.txt` |

