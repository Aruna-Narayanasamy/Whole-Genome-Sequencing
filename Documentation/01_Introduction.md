# Whole Genome Sequencing (WGS) Analysis of SARS-CoV-2 #
 ## Introduction
  - **WGS** is a comprehensive method used to **determine the complete DNA sequence of an organism’s genome in a single process**. 
  - It captures all genetic information including coding and non-coding regions which makes it one of the most powerful tools for *understanding genetic variation, pathogen evolution, and disease mechanisms.*
  - *WGS involves breaking the genome into small fragments, sequencing these fragments using high-throughput technologies* and then computationally assembling or aligning them back to a reference genome. 
  - This enables scientists to *identify mutations such as single nucleotide variants (SNVs), insertions, deletions, and structural changes*.

 ## COVID-19
  - **Coronavirus disease (COVID‑19)** is a respiratory infectious disease caused by the **SARS‑CoV‑2 virus**.
  - The virus was first identified in December 2019 in Wuhan, China and rapidly spread worldwide leading to a global pandemic.
  - *SARS-CoV-2 is an RNA virus* belonging to the Coronaviridae family. It has a positive-sense single-stranded RNA genome approximately *29.9 kb in length* making it one of the largest genomes among RNA viruses.
  - One of the most important features of SARS-CoV-2 is its *ability to mutate over time* which leads to emergence of new viral variants.
    
   **COVID-19 variants:**
   
     1. Alpha variant(B.1.1.7): Shows increased transmissibility compared to earlier strains. Identified in United Kingdom. 
     
     2. Delta variant(B.1.617.2): Higher infectiousness and association with more severe disease. Identified in India, globally dominant in 2021.
     
     3. Omicron variant(B.1.1.529): Emerged as large number of mutations especially in the spike protein leading to enhanced immune evasion and rapid spread.
   
 ## Objective of this project
  - This project aims to perform *Whole Genome Sequencing analysis of SARS-CoV-2 using publicly available reference and raw sequencing data*
  - The project will:
       - Detection of mutations across the SARS-CoV-2 genome
       - Monitoring lineage evolution
       - It will support variant classification
   - Real sequencing reads and the SARS‑CoV‑2 reference genome (e.g., Wuhan‑Hu‑1) will be used to demonstrate a complete WGS analysis pipeline from raw data to annotated variants.

 ## Workflow
   1. Data retrieval from ENA database
   2. Quality assessment of FASTQ files
   3. Read Alignment
   4. Sorting and indexing
   5. Duplicate removal
   6. Local realignment and Base Quality Score Recalibration (BQSR)
   7. Variant Calling
   8. Variant Filter
   9. Variant Annotation
   10. Variant Validation


