# 2023 paper for submission to _Microbiome_: eukaryotes in Lake Mendota

Code and associated figures for 2023 paper on Mendota 18S sequences. 

"Time-series metagenomics reveals changing protistan ecology of a temperate dimictic lake"

Arianna I. Krinos, Robert M. Bowers, Robin R. Rohwer, Katherine D. McMahon, Tanja Woyke, and Frederik Schulz

## Directory: `code`

### Snakemake workflow directories

1. `create-phylogenetic-tree` - code for extracting and aligning rRNA gene sequences for construction of the phylogenetic trees in the paper. 
2. `pair-seqs-with-BLAST` - code for separating sequence by underlying model and using `BLAST` to refine/align taxonomy of resulting hits based on the NCBI RefSeq database.

### Jupyter Notebooks

1. `process-abundance-data.ipynb` - notebook to generate dataframes that link Lake Mendota metadata (dates for each one of the samples, taxonomy of the 16S and 18S rRNA gene sequences) to the abundance data estimated through the `bowtie2`/`samtools` pipeline described in the paper methods. These dataframes are finally written to the `data` directory, where all metadata files are also stored.
2. `hierarchical-clustering-seasonality.ipynb` - notebook that generates seasonality figure (Figure 2 in manuscript) and conducts seasonal hierarchical clustering to identify winter/spring and summer/fall modules in community composition
3. `increased-post-2010-plot.ipynb` - notebook containing statistical tests and figures to establish statistically significant changes in the mean abundance of groups of microbial eukaryotes in the lake, in particular in concert with invasive species introduction
4. `alveolate-plot.ipynb` - analysis notebook and final figures for Figure 4, which takes a closer look at the clade _Alveolata_, specifically several taxonomic classes that show increases in both abundance and diversity after the spiny water flea invasion
5. `metazoan-plot.ipynb` - analysis notebook for the analysis of the metazoans in the dataset, including _Daphnia_, spiny water flea, and zebra mussel (Figure 5)
6. `mag...` - analysis notebook for metagenome-assembled genomes (MAGs) extracted from Lake Mendota (Figure 6)
7. `network...` - analysis notebook for hierarchical clustering and co-abundance network analysis for eukaryotes and prokaryotes from Lake Mendota

## Directory: `data`

`data/MendotaSupplementaryTables.xlsx` has 3 tabs corresponding to the three supplemental table files for the manuscript, also available as CSV files as described below.

### Supplemental Tables in CSV format

1. `01-SuppTable_JGI_metagenome_metadata-revised.csv` - sequencing and assembly metadata for assemblies from the JGI
2. `02-hierarchical_clust_mods.csv` - hierarchical clustering output
3. `03-network_all_corrs.csv` - network analysis clusters generated