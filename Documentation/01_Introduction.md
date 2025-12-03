# Whole Genome Sequencing (WGS) Analysis of SARS-CoV-2 #
 ## Introduction##
  - **WGS** is a comprehensive method used to **determine the complete DNA sequence of an organism’s genome in a single process**. 
  - It captures all genetic information including coding and non-coding regions which makes it one of the most powerful tools for *understanding genetic variation, pathogen evolution, and disease mechanisms.*
  - *WGS involves breaking the genome into small fragments, sequencing these fragments using high-throughput technologies* and then computationally assembling or aligning them back to a reference genome. 
  - This enables scientists to *identify mutations such as single nucleotide variants (SNVs), insertions, deletions, and structural changes*.
   
 ## Objective of this project
  - This project aims to perform *Whole Genome Sequencing analysis of SARS-CoV-2 using publicly available reference and raw sequencing data*
  - For SARS-CoV-2 WGS enables:
       - Detection of mutations
       - Monitoring lineage evolution
       - Variant classification
       - Epidemiological surveillance
  - This project uses real sequencing reads and the SARS-CoV-2 reference genome to demonstrate the WGS pipeline.

 ## Workflow
   1. Data retrieval from ENA database
   2. Quality assesment of FASTQ files
   3. Read Alignment
   4. Sorting and indexing
   5. Duplicate and removal
   6. Local realignment and Base Quality Score Recalibration (BQSR)
   7. Varriant Calling
   8. Varriant Filter
   9. Varriant Annotation
   10. varriant Validation
