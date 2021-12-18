#!/bin/bash
#SBATCH --time=24:00:00
#SBATCH -C haswell
#SBATCH -A microbio
#SBATCH -L SCRATCH
#SBATCH --mem=100GB
#SBATCH --qos=genepool

jobname="treelake"

SNAKEFILE=$1
JOBS=$2 # should default to 500
RERUN_INCOMPLETE=$3
DRYRUN=$4

conda activate snakemake
export PATH=$PATH:/global/homes/a/aikrinos/.local/cori/3.6-anaconda-5.2/bin/snakemake
export PATH=$PATH:/global/homes/a/aikrinos/.local/bin

snakemake  \
    -s $SNAKEFILE $RERUN_INCOMPLETE $DRYRUN --jobs $JOBS --use-conda \
    --cluster "sbatch -A microbio -q genepool -C haswell --job-name=$jobname -t 48:00:00 -N 1 -L SCRATCH --ntasks=5 --cpus-per-task=6"