# 2023 paper for submission to _Microbiome_ : eukaryotes in Lake Mendota

Code and associated figures for 2023 paper on Mendota 18S sequences.

## Directory: `code`

### Snakemake workflow directories

1. `create-phylogenetic-tree` - code for extracting and aligning rRNA gene sequences for construction of the phylogenetic trees in the paper. 
2. `pair-seqs-with-BLAST` - code for separating sequence by underlying model and using `BLAST` to refine/align taxonomy of resulting hits based on the NCBI RefSeq database.

### Jupyter Notebooks

1. `process-abundance-data.ipynb` - notebook to generate dataframes that link Lake Mendota metadata (dates for each one of the samples, taxonomy of the 16S and 18S rRNA gene sequences) to the abundance data estimated through the `bowtie2`/`samtools` pipeline described in the paper methods. These dataframes are finally written to the `data` directory, where all metadata files are also stored.

