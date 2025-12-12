# Whole-Genome-Sequencing
 - This project performs end-to-end Whole Genome Sequencing (WGS) analysis of SARS-CoV-2 using publicly available data from the European Nucleotide Archive (ENA).
 - The workflow includes data retrieval, quality control, reference preparation, read alignment, and variant calling, varriant filter, varriant annotation.

   ## Tools used:
   - FastQC
   - BWA
   - SAMtools
   - FreeBayes
   - gunzip

  ## Documentation 
   - The complete workflow documentation is available in the Documentation folder
   - [01. Introduction of this project](Documentation/01_Introduction.md)
   - [02. Data downloaded related to this project](Documentation/02_Data_Download.md)
   - [03. QC files](Documentation/03_QC_Report_analysis.md)
   - [04. preparation of reference genome](Documentation/04_Reference_Genome_Indexing.md)
   - [05. Reading the alignment](Documentation/05_Reading_Alignment.md)
   - [06. Variant Calling](Documentation/06_Variant_Calling.md)

  ## Workflow Scripts
   The `scripting` folder contains the Bash workflow script and workflow notes
    -[Scripting of README](Scripting/README.md)
    -[Scripts of WGS](Scripting/Scripts_of_WGS.sh)
    -[WGS workflow txt](WGS_Workflow.txt)
