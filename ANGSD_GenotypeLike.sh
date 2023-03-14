#!/bin/bash
#SBATCH -N 1
#SBATCH -t 168:00:00
#SBATCH -p single
#SBATCH -A loni_sortes
#SBATCH -o slurm-%j.out
#SBATCH -e slurm-%j.err

#The following is to document the flags used for GL analysis

working_path=/ddnA/work/jonasmr/glue_bams_TrRv6_dovetail/bam/final/

cd ${working_path}

angsd -GL 1 -out genolike -nThreads 47 -doGlf 2 -doMajorMinor 4 -doMaf 2 -doCounts 1 -baq 2 -minQ 20 -minMapQ 30 -minMaf 0.05 -bam bam.filelist -sites 4fold_sites.file -ref TrR_v6_haploid_reference_softMasked.fasta



