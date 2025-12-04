# Variant Calling
 - Variant calling identifies genomic variations such as SNPs, insertions, and deletions by comparing aligned sequencing reads against the reference genome.
 - In this workflow, FreeBayes was used to detect variants from the aligned reads.

## 1.Input Files for Variant Calling
 - The following files were required:
 - Reference Genome: Output_Files/Indexing/MN908947.3.fasta.fai
 - Aligned and Sorted BAM Files: Output_Files/Alignment_Files/ERR5743893.sorted.bam.bai

## 2.Running FreeBayes
 - FreeBayes was used to call variants from the aligned reads.
 - **Commands**: freebayes -f /workspaces/Whole-Genome-Sequencing/Output_Files/Indexing/MN908947.3.fasta
    /workspaces/Whole-Genome-Sequencing/Output_Files/Alignment_Files/ERR5743893.sorted.bam > ERR5743893.vcf
- This command generates a VCF file containing all detected variants.

## 3.Organizing Variant Calling Output
 - A folder was created to store the variant calling results.
 - **Commands**: mkdir /workspaces/Whole-Genome-Sequencing/Output_Files/Variant_Calling/

   mv ERR5743893.vcf /workspaces/Whole-Genome-Sequencing/Output_Files/Variant_Calling/

- **Location**: Output_Files/Variant_Calling/ERR5743893.vcf
