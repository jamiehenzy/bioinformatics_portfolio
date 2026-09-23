#!/bin/bash
#SBATCH -J JH_names
#SBATCH -N 2
#SBATCH -n 16
#SBATCH -o output_%j.txt
#SBATCH -e error_%j.txt

# Activate the emboss conda env
module load anaconda3/2024.06
source activate /courses/BIOL2406.202710/shared/emboss_env

# Run command to translate sequence, naming output file 2_AA_names
transeq JH_DNA_names 2_AA_names

# Deactivate the conda environment
conda deactivate
