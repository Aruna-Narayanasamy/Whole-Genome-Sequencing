# Scripts

This folder contains the Bash script used for running the **Whole Genome Sequencing (WGS) Pipeline**.

## Purpose
  These scripts provide a step-by-step sequence of commands for:


   - Downloading FASTQ files  
   - Running FastQC  
   - Preparing reference genome  
   - Indexing (BWA & Samtools)  
   - Read alignment (BWA-MEM)  
   - Converting SAM → BAM → Sorted BAM  
   - Variant calling with FreeBayes  
   - Saving workflow history

---

## Files Included

### 1. `Scripts_of_WGS.sh`
A shell script containing the workflow commands for

  - Reference preparation  
  - Quality control  
  - Alignment  
  - Duplicate marking  
  - Variant calling  
  - Annotation  

### 2. `WGS_Workflow.txt`
- A text file containing the workflow steps used during analysis.
  
---

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

